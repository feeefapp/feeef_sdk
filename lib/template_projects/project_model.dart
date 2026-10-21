import 'dart:convert';

/// Structured view and edit operations over a template project (format 1) file map.
///
/// The project files are the only authority: every operation here returns
/// complete replacement texts for the files it touched (`project.json`,
/// `pages/*.json`, `props.json`, `src/**`). Callers write them into their
/// workspace buffers and save through the normal workspace PATCH. Nothing here
/// talks to the network, compiles, or keeps a second document.
///
/// Rules mirrored from `backend/packages/template-project/src/validate.mjs`:
/// - `instanceId` is unique across the whole project and never changes on move.
/// - The page root is the `page` builtin and holds named section `slots`.
/// - Custom modules (`moduleId` / `dependencyId`) hold declared named `slots`.
/// - Layout builtins (`stack`, `flex`, `grid`, `container`) hold `children`.
/// The server build stays the authority; checks here only prevent obvious
/// mistakes before a save.
class TemplateProjectModel {
  TemplateProjectModel._(this.files, this._project, this._pages);

  static const projectPath = 'project.json';
  static const propsPath = 'props.json';
  static const schemaPath = 'schema.json';
  static const layoutBuiltins = ['stack', 'flex', 'grid', 'container'];

  static final _idPattern = RegExp(r'^[a-zA-Z][a-zA-Z0-9_-]{0,79}$');
  static final _instancePattern = RegExp(r'^[a-zA-Z][a-zA-Z0-9_-]{0,119}$');
  static const _maxListItems = 500;

  /// The file map this model was parsed from (not modified by operations).
  final Map<String, String> files;
  final Map<String, dynamic> _project;
  final Map<String, Map<String, dynamic>> _pages;

  /// Parse `project.json` and every declared page. Throws [FormatException]
  /// naming the file when a file is missing or is not a JSON object.
  factory TemplateProjectModel.parse(Map<String, String> files) {
    final project = _decodeObject(files, projectPath);
    final pagesDecl = project['pages'];
    if (pagesDecl is! Map) {
      throw const FormatException('project.json: "pages" must be an object');
    }
    final pages = <String, Map<String, dynamic>>{};
    for (final entry in pagesDecl.entries) {
      pages[entry.key as String] = _decodeObject(files, entry.value as String);
    }
    return TemplateProjectModel._(Map.unmodifiable(files), project, pages);
  }

  // ---------------------------------------------------------------- reading

  List<String> get pageIds => List.unmodifiable(_pages.keys);

  String pagePath(String pageId) {
    final path = (_project['pages'] as Map)[pageId];
    if (path is! String) throw StateError('PAGE_NOT_FOUND: $pageId');
    return path;
  }

  /// Page title / path for pickers.
  String pageTitle(String pageId) =>
      (_pages[pageId]?['title'] as String?) ?? pageId;
  String? pageRoute(String pageId) => _pages[pageId]?['path'] as String?;

  Map<String, ProjectModule> get modules {
    final raw = (_project['modules'] as Map?) ?? const {};
    return {
      for (final e in raw.entries)
        e.key as String: ProjectModule._(e.key as String, _asMap(e.value)),
    };
  }

  Map<String, ProjectDependency> get dependencies {
    final raw = (_project['dependencies'] as Map?) ?? const {};
    return {
      for (final e in raw.entries)
        e.key as String: ProjectDependency._(e.key as String, _asMap(e.value)),
    };
  }

  /// Template-level settings values (`props.json`), empty when absent.
  Map<String, dynamic> get templateProps =>
      files.containsKey(propsPath) ? _decodeObject(files, propsPath) : {};

  /// Template-level settings schema (`schema.json`, a settings JSON Schema
  /// subset describing `props.json`), if any.
  Map<String, dynamic>? get templatePropsSchema =>
      files.containsKey(schemaPath) ? _decodeObject(files, schemaPath) : null;

  /// Root node of a page.
  ProjectNode root(String pageId) {
    final page = _pages[pageId];
    if (page == null) throw StateError('PAGE_NOT_FOUND: $pageId');
    return ProjectNode._(_asMap(page['root']), this);
  }

  /// Find a node on a page, or null.
  ProjectNode? node(String pageId, String instanceId) {
    final hit = _locate(_pages[pageId]?['root'], instanceId);
    return hit == null ? null : ProjectNode._(hit.node, this);
  }

  /// Every placement of [moduleId] across all pages, as (pageId, instanceId).
  List<({String pageId, String instanceId})> placementsOf(String moduleId) {
    final out = <({String pageId, String instanceId})>[];
    for (final entry in _pages.entries) {
      _walk(entry.value['root'], (node) {
        if (node['moduleId'] == moduleId) {
          out.add((
            pageId: entry.key,
            instanceId: node['instanceId'] as String,
          ));
        }
      });
    }
    return out;
  }

  /// All instance IDs in the project (they are unique project-wide).
  Set<String> get instanceIds {
    final ids = <String>{};
    for (final page in _pages.values) {
      _walk(page['root'], (node) => ids.add(node['instanceId'] as String));
    }
    return ids;
  }

  /// Where "Add" puts a new section by default: end of the root `main` slot,
  /// but before a trailing footer module.
  ProjectLocation defaultLocation(String pageId) {
    final root = this.root(pageId);
    final main = root.slots['main'] ?? const <ProjectNode>[];
    var index = main.length;
    if (main.isNotEmpty) {
      final last = main.last;
      final entry = last.moduleId == null
          ? ''
          : modules[last.moduleId]?.entry ?? '';
      final title = last.moduleId == null
          ? ''
          : modules[last.moduleId]?.title ?? '';
      if (entry.contains('footer') || title.toLowerCase() == 'footer') index--;
    }
    return ProjectLocation(parent: root.instanceId, slot: 'main', index: index);
  }

  // ------------------------------------------------------------- operations

  /// Make the page root the `page` builtin (wrapping an older single-module
  /// root into its `main` slot) so sections can be added around it. Returns
  /// no changes when the root already is a page.
  ProjectEdit ensurePageRoot(String pageId) {
    final page = _clonePage(pageId);
    final root = _asMap(page['root']);
    if (_isPageBuiltin(root)) return const ProjectEdit({});
    final taken = instanceIds;
    page['root'] = <String, dynamic>{
      'instanceId': _freshId('page-$pageId', taken),
      'builtin': {'id': 'page', 'version': 1},
      'slots': {
        'main': [root],
      },
    };
    return ProjectEdit({pagePath(pageId): _encode(page)});
  }

  /// Move a node to another place (same page). Its instanceId is kept.
  ProjectEdit moveNode(String pageId, String instanceId, ProjectLocation to) {
    final page = _clonePage(pageId);
    final hit = _locate(page['root'], instanceId);
    if (hit == null) throw StateError('NODE_NOT_FOUND: $instanceId');
    if (hit.list == null) throw StateError('ROOT_NOT_MOVABLE');
    if (_locate(hit.node, to.parent) != null) {
      throw StateError('MOVE_INTO_SELF');
    }
    var index = to.index;
    final target = _containerList(page['root'], to, hit.node);
    // Removing first shifts later siblings in the same list.
    if (identical(target, hit.list) && hit.index < index) index--;
    hit.list!.removeAt(hit.index);
    target.insert(index.clamp(0, target.length), hit.node);
    // Only after inserting: the target may be the list we just emptied.
    _cleanupEmpty(hit.parent, hit.slot);
    return ProjectEdit({
      pagePath(pageId): _encode(page),
    }, instanceId: instanceId);
  }

  /// Insert a placement of a declared module. Props start empty (the module's
  /// `propsDefault` applies), so later default changes reach this placement.
  ProjectEdit insertModule(String pageId, String moduleId, ProjectLocation at) {
    if (!modules.containsKey(moduleId)) {
      throw StateError('MODULE_NOT_FOUND: $moduleId');
    }
    return _insert(pageId, at, {'moduleId': moduleId}, moduleId);
  }

  /// Insert a placement of a pinned dependency (marketplace component).
  ProjectEdit insertDependency(
    String pageId,
    String dependencyId,
    ProjectLocation at,
  ) {
    if (!dependencies.containsKey(dependencyId)) {
      throw StateError('DEPENDENCY_NOT_FOUND: $dependencyId');
    }
    return _insert(pageId, at, {'dependencyId': dependencyId}, dependencyId);
  }

  /// Insert a layout builtin (`stack`, `flex`, `grid`, `container`).
  ProjectEdit insertBuiltin(
    String pageId,
    String builtinId,
    ProjectLocation at,
  ) {
    if (!layoutBuiltins.contains(builtinId)) {
      throw StateError('BUILTIN_UNSUPPORTED: $builtinId');
    }
    return _insert(pageId, at, {
      'builtin': {'id': builtinId, 'version': 1},
      'children': <dynamic>[],
    }, builtinId);
  }

  /// Remove a node and everything inside it.
  ProjectEdit removeNode(String pageId, String instanceId) {
    final page = _clonePage(pageId);
    final hit = _locate(page['root'], instanceId);
    if (hit == null) throw StateError('NODE_NOT_FOUND: $instanceId');
    if (hit.list == null) throw StateError('ROOT_NOT_REMOVABLE');
    hit.list!.removeAt(hit.index);
    _cleanupEmpty(hit.parent, hit.slot);
    return ProjectEdit({pagePath(pageId): _encode(page)});
  }

  /// Copy a node (and its subtree) right after itself with fresh instanceIds.
  ProjectEdit duplicateNode(String pageId, String instanceId) {
    final page = _clonePage(pageId);
    final hit = _locate(page['root'], instanceId);
    if (hit == null) throw StateError('NODE_NOT_FOUND: $instanceId');
    if (hit.list == null) throw StateError('ROOT_NOT_DUPLICABLE');
    _checkRoom(hit.list!);
    final taken = instanceIds;
    final copy = _deepCopy(hit.node) as Map<String, dynamic>;
    _walk(copy, (node) {
      final id = _freshId(_baseOf(node['instanceId'] as String), taken);
      taken.add(id);
      node['instanceId'] = id;
    });
    hit.list!.insert(hit.index + 1, copy);
    return ProjectEdit({
      pagePath(pageId): _encode(page),
    }, instanceId: copy['instanceId'] as String);
  }

  /// Replace a placement's own props (overrides on top of `propsDefault`).
  /// An empty map removes the `props` key.
  ProjectEdit setNodeProps(
    String pageId,
    String instanceId,
    Map<String, dynamic> props,
  ) {
    final page = _clonePage(pageId);
    final hit = _locate(page['root'], instanceId);
    if (hit == null) throw StateError('NODE_NOT_FOUND: $instanceId');
    if (_isPageBuiltin(hit.node)) throw StateError('PAGE_ROOT_HAS_NO_PROPS');
    _setOrRemove(hit.node, 'props', props.isEmpty ? null : _deepCopy(props));
    return ProjectEdit({
      pagePath(pageId): _encode(page),
    }, instanceId: instanceId);
  }

  /// Set or clear (`null`) hydration of a custom module placement.
  ProjectEdit setNodeHydrate(
    String pageId,
    String instanceId,
    String? hydrate,
  ) {
    const allowed = ['never', 'load', 'idle', 'visible', 'interaction'];
    if (hydrate != null && !allowed.contains(hydrate)) {
      throw StateError('HYDRATE_UNSUPPORTED: $hydrate');
    }
    final page = _clonePage(pageId);
    final hit = _locate(page['root'], instanceId);
    if (hit == null) throw StateError('NODE_NOT_FOUND: $instanceId');
    if (hit.node['builtin'] != null) {
      throw StateError('BUILTIN_HAS_NO_HYDRATION');
    }
    _setOrRemove(hit.node, 'hydrate', hydrate);
    return ProjectEdit({
      pagePath(pageId): _encode(page),
    }, instanceId: instanceId);
  }

  /// Replace template-level settings (`props.json`).
  ProjectEdit setTemplateProps(Map<String, dynamic> props) =>
      ProjectEdit({propsPath: _encode(props)});

  /// Declare a new module with a source file. Does not place it anywhere.
  ProjectEdit addModule({
    required String id,
    required String title,
    Map<String, dynamic>? propsSchema,
    Map<String, dynamic>? propsDefault,
    String? source,
  }) {
    if (!RegExp(r'^[a-z][a-z0-9_-]{0,59}$').hasMatch(id)) {
      throw const FormatException(
        'Use a lowercase component ID, for example special-offer',
      );
    }
    final path = 'src/components/$id.tsx';
    if (modules.containsKey(id) || files.containsKey(path)) {
      throw StateError('COMPONENT_EXISTS: $id');
    }
    final project = _deepCopy(_project) as Map<String, dynamic>;
    final modulesJson = project.putIfAbsent(
      'modules',
      () => <String, dynamic>{},
    ) as Map<String, dynamic>;
    modulesJson[id] = {
      'entry': path,
      'title': title,
      'propsSchema':
          propsSchema ??
          {
            'type': 'object',
            'properties': {
              'title': {'type': 'string', 'title': 'Title'},
            },
          },
      'propsDefault': propsDefault ?? {'title': title},
    };
    return ProjectEdit({
      projectPath: _encode(project),
      path: source ?? starterSource,
    }, path: path);
  }

  /// "Change only here": copy the module of [instanceId] (declaration and
  /// entry source) under [newModuleId] and point only this placement at it.
  /// Other placements keep the original module.
  ProjectEdit forkModuleForNode(
    String pageId,
    String instanceId,
    String newModuleId,
  ) {
    final page = _clonePage(pageId);
    final hit = _locate(page['root'], instanceId);
    if (hit == null) throw StateError('NODE_NOT_FOUND: $instanceId');
    final moduleId = hit.node['moduleId'];
    if (moduleId is! String) throw StateError('NOT_A_MODULE: $instanceId');
    final module = modules[moduleId];
    if (module == null) throw StateError('MODULE_NOT_FOUND: $moduleId');
    if (!_idPattern.hasMatch(newModuleId) || modules.containsKey(newModuleId)) {
      throw StateError('COMPONENT_EXISTS: $newModuleId');
    }
    final source = files[module.entry];
    if (source == null) throw StateError('SOURCE_NOT_FOUND: ${module.entry}');
    final dot = module.entry.lastIndexOf('.');
    final slash = module.entry.lastIndexOf('/');
    final newEntry =
        '${module.entry.substring(0, slash + 1)}$newModuleId${module.entry.substring(dot)}';
    if (files.containsKey(newEntry)) {
      throw StateError('COMPONENT_EXISTS: $newEntry');
    }

    final project = _deepCopy(_project) as Map<String, dynamic>;
    final declared = _deepCopy(
      (project['modules'] as Map)[moduleId],
    ) as Map<String, dynamic>;
    declared['entry'] = newEntry;
    if (declared['title'] is String) {
      declared['title'] = '${declared['title']} (${pageTitle(pageId)})';
    }
    (project['modules'] as Map<String, dynamic>)[newModuleId] = declared;
    hit.node['moduleId'] = newModuleId;
    // Relative imports keep working because the copy sits next to the original.
    return ProjectEdit(
      {
        projectPath: _encode(project),
        pagePath(pageId): _encode(page),
        newEntry: source,
      },
      instanceId: instanceId,
      path: newEntry,
    );
  }

  /// A module ID derived from [base] that is not yet declared.
  String freeModuleId(String base) {
    var clean = base.toLowerCase().replaceAll(RegExp(r'[^a-z0-9_-]+'), '-');
    clean = clean
        .replaceAll(RegExp(r'^[^a-z]+'), '')
        .replaceAll(RegExp(r'[-_]+$'), '');
    if (clean.isEmpty) clean = 'component';
    if (clean.length > 50) clean = clean.substring(0, 50);
    final taken = modules.keys.toSet();
    final takenPaths = files.keys.toSet();
    bool free(String id) =>
        !taken.contains(id) && !takenPaths.contains('src/components/$id.tsx');
    if (free(clean)) return clean;
    for (var i = 2; ; i++) {
      if (free('$clean-$i')) return '$clean-$i';
    }
  }

  static const starterSource =
      'export default function Component() {\n'
      '  return (\n'
      '    <section style={{ padding: 24 }}>\n'
      '      <h2>{props.title}</h2>\n'
      '    </section>\n'
      '  );\n'
      '}\n';

  // ---------------------------------------------------------------- helpers

  ProjectEdit _insert(
    String pageId,
    ProjectLocation at,
    Map<String, dynamic> body,
    String idBase,
  ) {
    final page = _clonePage(pageId);
    final list = _containerList(page['root'], at, body);
    _checkRoom(list);
    final id = _freshId(idBase, instanceIds);
    final node = <String, dynamic>{'instanceId': id, ...body};
    list.insert(at.index.clamp(0, list.length), node);
    return ProjectEdit({pagePath(pageId): _encode(page)}, instanceId: id);
  }

  /// The list a location points at, created when the slot does not exist yet.
  List<dynamic> _containerList(
    dynamic root,
    ProjectLocation at,
    Map<String, dynamic> moving,
  ) {
    final hit = _locate(root, at.parent);
    if (hit == null) throw StateError('NODE_NOT_FOUND: ${at.parent}');
    final parent = hit.node;
    if (_isPageBuiltin(moving)) throw StateError('BUILTIN_UNSUPPORTED: page');
    final builtin = parent['builtin'];
    if (builtin is Map && builtin['id'] != 'page') {
      if (at.slot != null) throw StateError('SLOTS_UNSUPPORTED: use children');
      return parent.putIfAbsent('children', () => <dynamic>[]) as List<dynamic>;
    }
    final slot = at.slot;
    if (slot == null || !_idPattern.hasMatch(slot)) {
      throw StateError('SLOT_REQUIRED');
    }
    final moduleId = parent['moduleId'];
    if (moduleId is String) {
      final declared = modules[moduleId]?.slots ?? const {};
      if (!declared.containsKey(slot)) {
        throw StateError('SLOT_UNDECLARED: $moduleId.$slot');
      }
    }
    final slots = parent.putIfAbsent(
      'slots',
      () => <String, dynamic>{},
    ) as Map<String, dynamic>;
    return slots.putIfAbsent(slot, () => <dynamic>[]) as List<dynamic>;
  }

  Map<String, dynamic> _clonePage(String pageId) {
    final page = _pages[pageId];
    if (page == null) throw StateError('PAGE_NOT_FOUND: $pageId');
    return _deepCopy(page) as Map<String, dynamic>;
  }

  static void _checkRoom(List<dynamic> list) {
    if (list.length >= _maxListItems) throw StateError('SLOT_FULL');
  }

  static bool _isPageBuiltin(Map<String, dynamic> node) {
    final builtin = node['builtin'];
    return builtin is Map && builtin['id'] == 'page';
  }

  static void _cleanupEmpty(Map<String, dynamic>? parent, String? slot) {
    if (parent == null || slot == null) return;
    final slots = parent['slots'];
    // Keep the page root's slots (an empty page is valid and stays addressable).
    if (_isPageBuiltin(parent)) return;
    if (slots is Map && slots[slot] is List && (slots[slot] as List).isEmpty) {
      slots.remove(slot);
      if (slots.isEmpty) parent.remove('slots');
    }
  }

  static void _setOrRemove(
    Map<String, dynamic> node,
    String key,
    Object? value,
  ) {
    if (value == null) {
      node.remove(key);
    } else {
      node[key] = value;
    }
  }

  static String _baseOf(String instanceId) =>
      instanceId.replaceFirst(RegExp(r'-\d+$'), '');

  static String _freshId(String base, Set<String> taken) {
    var clean = base.replaceAll(RegExp(r'[^a-zA-Z0-9_-]+'), '-');
    clean = clean.replaceAll(RegExp(r'^[^a-zA-Z]+'), '');
    if (clean.isEmpty) clean = 'node';
    if (clean.length > 100) clean = clean.substring(0, 100);
    for (var i = 1; ; i++) {
      final id = '$clean-$i';
      if (!taken.contains(id) && _instancePattern.hasMatch(id)) return id;
    }
  }

  static _Hit? _locate(
    dynamic node,
    String instanceId, [
    Map<String, dynamic>? parent,
    String? slot,
    List<dynamic>? list,
    int index = 0,
  ]) {
    if (node is! Map) return null;
    final map = node as Map<String, dynamic>;
    if (map['instanceId'] == instanceId) {
      return _Hit(map, parent, slot, list, index);
    }
    final slots = map['slots'];
    if (slots is Map) {
      for (final entry in slots.entries) {
        final items = entry.value;
        if (items is! List) continue;
        for (var i = 0; i < items.length; i++) {
          final hit = _locate(
            items[i],
            instanceId,
            map,
            entry.key as String,
            items,
            i,
          );
          if (hit != null) return hit;
        }
      }
    }
    final children = map['children'];
    if (children is List) {
      for (var i = 0; i < children.length; i++) {
        final hit = _locate(children[i], instanceId, map, null, children, i);
        if (hit != null) return hit;
      }
    }
    return null;
  }

  static void _walk(dynamic node, void Function(Map<String, dynamic>) visit) {
    if (node is! Map) return;
    final map = node as Map<String, dynamic>;
    visit(map);
    final slots = map['slots'];
    if (slots is Map) {
      for (final items in slots.values) {
        if (items is List) {
          for (final child in items) {
            _walk(child, visit);
          }
        }
      }
    }
    final children = map['children'];
    if (children is List) {
      for (final child in children) {
        _walk(child, visit);
      }
    }
  }

  static Map<String, dynamic> _decodeObject(
    Map<String, String> files,
    String path,
  ) {
    final text = files[path];
    if (text == null) throw FormatException('$path is missing');
    final Object? decoded;
    try {
      decoded = jsonDecode(text);
    } on FormatException catch (e) {
      throw FormatException('$path: ${e.message}');
    }
    if (decoded is! Map) throw FormatException('$path must be a JSON object');
    return _asMap(decoded);
  }

  static Map<String, dynamic> _asMap(Object? value) =>
      value is Map<String, dynamic>
      ? value
      : value is Map
      ? value.map((k, v) => MapEntry(k.toString(), v))
      : <String, dynamic>{};

  static Object? _deepCopy(Object? value) {
    if (value is Map) {
      return <String, dynamic>{
        for (final e in value.entries) e.key.toString(): _deepCopy(e.value),
      };
    }
    if (value is List) return [for (final v in value) _deepCopy(v)];
    return value;
  }

  /// Authored-file encoding: key order preserved, 2-space indent, final newline.
  static String encodeJson(Object? value) =>
      '${const JsonEncoder.withIndent('  ').convert(value)}\n';
  static String _encode(Object? value) => encodeJson(value);
}

/// Where to put a node: a parent's named [slot] (page root and custom modules)
/// or its `children` ([slot] == null, layout builtins), at [index].
class ProjectLocation {
  const ProjectLocation({required this.parent, this.slot, required this.index});
  final String parent;
  final String? slot;
  final int index;
}

/// Result of an operation: complete replacement texts per changed file.
class ProjectEdit {
  const ProjectEdit(this.changes, {this.instanceId, this.path});
  final Map<String, String> changes;

  /// The node the operation created or targeted, when there is one.
  final String? instanceId;

  /// The source file the operation created, when there is one.
  final String? path;
}

/// A declared module in `project.json`.
class ProjectModule {
  ProjectModule._(this.id, this.json);
  final String id;
  final Map<String, dynamic> json;

  String get entry => json['entry'] as String? ?? '';
  String get title => json['title'] as String? ?? id;
  Map<String, dynamic>? get propsSchema => json['propsSchema'] is Map
      ? TemplateProjectModel._asMap(json['propsSchema'])
      : null;
  Map<String, dynamic> get propsDefault =>
      TemplateProjectModel._asMap(json['propsDefault']);

  /// Declared slots: slotId → title.
  Map<String, String> get slots {
    final raw = json['slotsSchema'];
    if (raw is! Map) return const {};
    return {
      for (final e in raw.entries)
        e.key as String:
            (e.value is Map ? (e.value as Map)['title'] as String? : null) ??
            e.key as String,
    };
  }
}

/// A pinned dependency (marketplace component) in `project.json`.
class ProjectDependency {
  ProjectDependency._(this.id, this.json);
  final String id;
  final Map<String, dynamic> json;
  String get componentId => json['componentId'] as String? ?? id;
  int get version => (json['version'] as num?)?.toInt() ?? 0;
  String get contentHash => json['contentHash'] as String? ?? '';
}

/// Read-only view of one node in a page tree.
class ProjectNode {
  ProjectNode._(this.json, this._model);
  final Map<String, dynamic> json;
  final TemplateProjectModel _model;

  String get instanceId => json['instanceId'] as String;
  String? get moduleId => json['moduleId'] as String?;
  String? get dependencyId => json['dependencyId'] as String?;
  String? get builtinId =>
      json['builtin'] is Map ? (json['builtin'] as Map)['id'] as String? : null;
  bool get isPageRoot => builtinId == 'page';
  bool get isLayout => builtinId != null && builtinId != 'page';
  String? get hydrate => json['hydrate'] as String?;
  Map<String, dynamic> get props => TemplateProjectModel._asMap(json['props']);

  ProjectModule? get module =>
      moduleId == null ? null : _model.modules[moduleId];

  /// Display name: module title, dependency id, or builtin name.
  String get title =>
      module?.title ?? dependencyId ?? (builtinId ?? instanceId);

  /// `propsDefault` deep-merged with this placement's props (what renders).
  Map<String, dynamic> get effectiveProps =>
      _merge(module?.propsDefault ?? const {}, props);

  /// Slots this node can hold: declared module slots, or the page root's
  /// existing slots. Layout builtins use [children] instead.
  Map<String, List<ProjectNode>> get slots {
    final raw = TemplateProjectModel._asMap(json['slots']);
    final names = <String>[
      if (module != null) ...module!.slots.keys,
      ...raw.keys,
    ];
    return {
      for (final name in {...names})
        name: [
          for (final child in (raw[name] as List?) ?? const [])
            ProjectNode._(TemplateProjectModel._asMap(child), _model),
        ],
    };
  }

  List<ProjectNode> get children => [
    for (final child in (json['children'] as List?) ?? const [])
      ProjectNode._(TemplateProjectModel._asMap(child), _model),
  ];

  /// The minimal overrides that turn [defaults] into [values] (inverse of the
  /// compiler's deep merge). Keys equal to their default are dropped, so a
  /// placement keeps following later default changes.
  static Map<String, dynamic> overridesFrom(
    Map<String, dynamic> defaults,
    Map<String, dynamic> values,
  ) {
    final out = <String, dynamic>{};
    for (final e in values.entries) {
      final base = defaults[e.key];
      if (base is Map && e.value is Map) {
        final nested = overridesFrom(
          TemplateProjectModel._asMap(base),
          TemplateProjectModel._asMap(e.value),
        );
        if (nested.isNotEmpty) out[e.key] = nested;
      } else if (!_jsonEquals(base, e.value) || !defaults.containsKey(e.key)) {
        out[e.key] = e.value;
      }
    }
    return out;
  }

  static bool _jsonEquals(Object? a, Object? b) =>
      jsonEncode(a) == jsonEncode(b);

  static Map<String, dynamic> _merge(
    Map<String, dynamic> base,
    Map<String, dynamic> over,
  ) {
    final out = <String, dynamic>{...base};
    for (final e in over.entries) {
      final a = out[e.key];
      out[e.key] = a is Map && e.value is Map
          ? _merge(
              TemplateProjectModel._asMap(a),
              TemplateProjectModel._asMap(e.value),
            )
          : e.value;
    }
    return out;
  }
}

class _Hit {
  _Hit(this.node, this.parent, this.slot, this.list, this.index);
  final Map<String, dynamic> node;
  final Map<String, dynamic>? parent;
  final String? slot;
  final List<dynamic>? list;
  final int index;
}
