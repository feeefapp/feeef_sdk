import 'dart:convert';

/// Structured editing of Feeef packages (docs/template-system/PLAN.md §4) and of standalone
/// page trees (store pages, product landing pages).
///
/// A page tree is `{id, use: "core/page", slots: {main: [Node]}}`; a node is
/// `{id, use, props?, slots?, hydrate?}` where `use` is a local component id, `dep/component`,
/// or `core/<block>`. Operations return complete replacement texts for the files they touch;
/// callers write them to their draft and save through the normal CAS patch. The server build
/// (`@feeef/engine`) stays the authority; checks here only prevent obvious mistakes.

const _json = JsonEncoder.withIndent('  ');

/// Authored-file encoding: key order preserved, 2-space indent, final newline.
String encodePackageJson(Object? value) => '${_json.convert(value)}\n';

/// Engine-provided blocks (`core/<id>`), mirrored from `@feeef/engine` CORE_COMPONENTS.
class CoreBlock {
  const CoreBlock(
    this.id,
    this.title, {
    this.slots = const {},
    this.layout = false,
    this.props = const {},
  });
  final String id;
  final String title;

  /// Declared slots (`null` = any section name, page root only).
  final Map<String, String>? slots;

  /// Static layout container (no hydration).
  final bool layout;

  /// Props JSON Schema `properties`.
  final Map<String, Object?> props;

  String get use => 'core/$id';
}

const coreBlocks = <CoreBlock>[
  CoreBlock('page', 'Page', slots: null, layout: true),
  CoreBlock(
    'stack',
    'Stack',
    slots: {'main': 'Content'},
    layout: true,
    props: {
      'gap': {
        'type': 'number',
        'title': 'Gap',
        'minimum': 0,
        'maximum': 200,
        'x-ui': 'slider',
      },
    },
  ),
  CoreBlock(
    'flex',
    'Row',
    slots: {'main': 'Content'},
    layout: true,
    props: {
      'gap': {
        'type': 'number',
        'title': 'Gap',
        'minimum': 0,
        'maximum': 200,
        'x-ui': 'slider',
      },
      'direction': {
        'type': 'string',
        'title': 'Direction',
        'enum': ['row', 'column'],
      },
    },
  ),
  CoreBlock(
    'grid',
    'Grid',
    slots: {'main': 'Content'},
    layout: true,
    props: {
      'gap': {
        'type': 'number',
        'title': 'Gap',
        'minimum': 0,
        'maximum': 200,
        'x-ui': 'slider',
      },
      'columns': {
        'type': 'integer',
        'title': 'Columns',
        'minimum': 1,
        'maximum': 12,
        'x-ui': 'slider',
      },
    },
  ),
  CoreBlock(
    'container',
    'Container',
    slots: {'main': 'Content'},
    layout: true,
    props: {
      'maxWidth': {
        'type': 'number',
        'title': 'Max width',
        'minimum': 240,
        'maximum': 4000,
      },
    },
  ),
  CoreBlock(
    'product',
    'Product',
    slots: {'main': 'Content'},
    props: {
      'productId': {'type': 'string', 'title': 'Product', 'x-ui': 'product'},
    },
  ),
  CoreBlock('order-form', 'Order form'),
  CoreBlock('order-button', 'Floating order button'),
  CoreBlock('product-gallery', 'Product gallery'),
];

CoreBlock? coreBlock(String use) {
  if (!use.startsWith('core/')) return null;
  final id = use.substring(5);
  for (final b in coreBlocks) {
    if (b.id == id) return b;
  }
  return null;
}

/// What a node may `use`: title, props schema/defaults and declared slots.
class ComponentInfo {
  const ComponentInfo({
    required this.use,
    required this.title,
    this.propsSchema,
    this.propsDefault = const {},
    this.slots = const {},
    this.entry,
  });
  final String use;
  final String title;
  final Map<String, dynamic>? propsSchema;
  final Map<String, dynamic> propsDefault;

  /// Declared slots: id → title (`null` = any section name).
  final Map<String, String>? slots;

  /// Source file for local components (null for core and dependency components).
  final String? entry;

  bool get isCore => use.startsWith('core/');
  bool get isLayout => coreBlock(use)?.layout ?? false;

  static ComponentInfo fromCore(CoreBlock b) => ComponentInfo(
    use: b.use,
    title: b.title,
    propsSchema: b.props.isEmpty
        ? null
        : {'type': 'object', 'properties': b.props},
    slots: b.slots,
  );
}

/// Where to put a node: a parent's [slot] at [index].
class TreeLocation {
  const TreeLocation({
    required this.parent,
    required this.slot,
    required this.index,
  });
  final String parent;
  final String slot;
  final int index;
}

/// Result of an operation: complete replacement texts per changed file.
class PackageEdit {
  const PackageEdit(this.changes, {this.nodeId, this.path});
  final Map<String, String> changes;

  /// The node the operation created or targeted.
  final String? nodeId;

  /// The source file the operation created.
  final String? path;
}

/// Read-only view of one node.
class TreeNode {
  TreeNode(this.json, this._catalog);
  final Map<String, dynamic> json;
  final Map<String, ComponentInfo> _catalog;

  String get id => json['id'] as String;
  String get use => json['use'] as String;
  String? get hydrate => json['hydrate'] as String?;
  Map<String, dynamic> get props => _map(json['props']);
  ComponentInfo? get component => _catalog[use];
  String get title => component?.title ?? use;
  bool get isPageRoot => use == 'core/page';
  bool get isCore => use.startsWith('core/');

  /// `props` merged over the component defaults (what renders).
  Map<String, dynamic> get effectiveProps =>
      mergeProps(component?.propsDefault ?? const {}, props);

  /// Slots this node holds: declared slots first, then any present in the JSON.
  Map<String, List<TreeNode>> get slots {
    final raw = _map(json['slots']);
    final names = <String>{...?component?.slots?.keys, ...raw.keys};
    return {
      for (final name in names)
        name: [
          for (final child in (raw[name] as List?) ?? const [])
            TreeNode(_map(child), _catalog),
        ],
    };
  }

  /// Minimal overrides that turn [defaults] into [values] (inverse of the deep merge).
  static Map<String, dynamic> overridesFrom(
    Map<String, dynamic> defaults,
    Map<String, dynamic> values,
  ) {
    final out = <String, dynamic>{};
    for (final e in values.entries) {
      final base = defaults[e.key];
      if (base is Map && e.value is Map) {
        final nested = overridesFrom(_map(base), _map(e.value));
        if (nested.isNotEmpty) out[e.key] = nested;
      } else if (!defaults.containsKey(e.key) ||
          jsonEncode(base) != jsonEncode(e.value)) {
        out[e.key] = e.value;
      }
    }
    return out;
  }
}

/// Engine-compatible deep merge (defaults ← overrides; arrays and scalars replace).
Map<String, dynamic> mergeProps(
  Map<String, dynamic> defaults,
  Map<String, dynamic> overrides,
) {
  final out = <String, dynamic>{...defaults};
  for (final e in overrides.entries) {
    final a = out[e.key];
    out[e.key] = a is Map && e.value is Map
        ? mergeProps(_map(a), _map(e.value))
        : e.value;
  }
  return out;
}

/// Operations on one page tree (shared by template pages and store pages).
class PageTree {
  PageTree(Map<String, dynamic> page, this.catalog, {Set<String>? takenIds})
    : page = _deepCopy(page) as Map<String, dynamic>,
      _extraTaken = takenIds ?? const {};

  /// The page JSON `{path, title?, seo?, data?, root}` (a private copy).
  final Map<String, dynamic> page;
  final Map<String, ComponentInfo> catalog;
  final Set<String> _extraTaken;

  static final _idPattern = RegExp(r'^[a-zA-Z][a-zA-Z0-9_-]{0,119}$');
  static const _maxListItems = 500;

  TreeNode get root => TreeNode(_map(page['root']), catalog);

  TreeNode? node(String id) {
    final hit = _locate(page['root'], id);
    return hit == null ? null : TreeNode(hit.node, catalog);
  }

  Set<String> get ids {
    final out = <String>{};
    _walk(page['root'], (n) => out.add(n['id'] as String));
    return out;
  }

  /// End of the root `main` slot, before a trailing footer component.
  TreeLocation defaultLocation() {
    final main = root.slots['main'] ?? const <TreeNode>[];
    var index = main.length;
    if (main.isNotEmpty) {
      final last = main.last;
      final hint = '${last.use} ${last.title}'.toLowerCase();
      if (hint.contains('footer')) index--;
    }
    return TreeLocation(parent: root.id, slot: 'main', index: index);
  }

  /// Wrap a root that is not `core/page` into `core/page.slots.main`. Returns whether it changed.
  bool ensurePageRoot() {
    final root = _map(page['root']);
    if (root['use'] == 'core/page') return false;
    page['root'] = <String, dynamic>{
      'id': _freshId('page', {...ids, ..._extraTaken}),
      'use': 'core/page',
      'slots': {
        'main': [root],
      },
    };
    return true;
  }

  void move(String id, TreeLocation to) {
    final hit = _locate(page['root'], id);
    if (hit == null) throw StateError('NODE_NOT_FOUND: $id');
    if (hit.list == null) throw StateError('ROOT_NOT_MOVABLE');
    if (_locate(hit.node, to.parent) != null)
      throw StateError('MOVE_INTO_SELF');
    final target = _slotList(to, hit.node);
    var index = to.index;
    if (identical(target, hit.list) && hit.index < index) index--;
    hit.list!.removeAt(hit.index);
    target.insert(index.clamp(0, target.length), hit.node);
    _cleanupEmpty(hit.parent, hit.slot);
  }

  /// Insert a placement of [use]; props start empty (the component defaults apply).
  String insert(String use, TreeLocation at, {Map<String, dynamic>? props}) {
    if (!catalog.containsKey(use)) throw StateError('COMPONENT_UNKNOWN: $use');
    if (use == 'core/page') throw StateError('PAGE_NESTED');
    final body = <String, dynamic>{'use': use};
    final list = _slotList(at, body);
    if (list.length >= _maxListItems) throw StateError('SLOT_FULL');
    final base = use.contains('/') ? use.split('/').last : use;
    final id = _freshId(base, {...ids, ..._extraTaken});
    list.insert(at.index.clamp(0, list.length), <String, dynamic>{
      'id': id,
      ...body,
      if (props != null && props.isNotEmpty) 'props': props,
    });
    return id;
  }

  void remove(String id) {
    final hit = _locate(page['root'], id);
    if (hit == null) throw StateError('NODE_NOT_FOUND: $id');
    if (hit.list == null) throw StateError('ROOT_NOT_REMOVABLE');
    hit.list!.removeAt(hit.index);
    _cleanupEmpty(hit.parent, hit.slot);
  }

  String duplicate(String id) {
    final hit = _locate(page['root'], id);
    if (hit == null) throw StateError('NODE_NOT_FOUND: $id');
    if (hit.list == null) throw StateError('ROOT_NOT_DUPLICABLE');
    if (hit.list!.length >= _maxListItems) throw StateError('SLOT_FULL');
    final taken = {...ids, ..._extraTaken};
    final copy = _deepCopy(hit.node) as Map<String, dynamic>;
    _walk(copy, (n) {
      final fresh = _freshId(
        (n['id'] as String).replaceFirst(RegExp(r'-\d+$'), ''),
        taken,
      );
      taken.add(fresh);
      n['id'] = fresh;
    });
    hit.list!.insert(hit.index + 1, copy);
    return copy['id'] as String;
  }

  /// Replace a node's props overrides; an empty map removes `props`.
  void setProps(String id, Map<String, dynamic> props) {
    final hit = _locate(page['root'], id);
    if (hit == null) throw StateError('NODE_NOT_FOUND: $id');
    if (hit.node['use'] == 'core/page')
      throw StateError('PAGE_ROOT_HAS_NO_PROPS');
    if (props.isEmpty) {
      hit.node.remove('props');
    } else {
      hit.node['props'] = _deepCopy(props);
    }
  }

  /// Set or clear (`null`) hydration; not allowed on core blocks.
  void setHydrate(String id, String? hydrate) {
    const allowed = ['never', 'load', 'idle', 'visible', 'interaction'];
    if (hydrate != null && !allowed.contains(hydrate))
      throw StateError('HYDRATE_UNSUPPORTED: $hydrate');
    final hit = _locate(page['root'], id);
    if (hit == null) throw StateError('NODE_NOT_FOUND: $id');
    if ((hit.node['use'] as String).startsWith('core/'))
      throw StateError('CORE_HAS_NO_HYDRATION');
    if (hydrate == null) {
      hit.node.remove('hydrate');
    } else {
      hit.node['hydrate'] = hydrate;
    }
  }

  /// Point one placement at another component (used by "change only here").
  void retarget(String id, String use) {
    final hit = _locate(page['root'], id);
    if (hit == null) throw StateError('NODE_NOT_FOUND: $id');
    hit.node['use'] = use;
  }

  String encode() => encodePackageJson(page);

  // ------------------------------------------------------------------ helpers

  List<dynamic> _slotList(TreeLocation at, Map<String, dynamic> moving) {
    final hit = _locate(page['root'], at.parent);
    if (hit == null) throw StateError('NODE_NOT_FOUND: ${at.parent}');
    if (moving['use'] == 'core/page') throw StateError('PAGE_NESTED');
    final parentUse = hit.node['use'] as String;
    final declared = catalog[parentUse]?.slots;
    final isRoot = parentUse == 'core/page';
    if (!isRoot && declared != null && !declared.containsKey(at.slot)) {
      throw StateError('SLOT_UNDECLARED: $parentUse.${at.slot}');
    }
    if (!RegExp(r'^[a-zA-Z][a-zA-Z0-9_-]{0,79}$').hasMatch(at.slot))
      throw StateError('SLOT_INVALID');
    final slots = hit.node.putIfAbsent(
      'slots',
      () => <String, dynamic>{},
    ) as Map<String, dynamic>;
    return slots.putIfAbsent(at.slot, () => <dynamic>[]) as List<dynamic>;
  }

  static void _cleanupEmpty(Map<String, dynamic>? parent, String? slot) {
    if (parent == null || slot == null || parent['use'] == 'core/page') return;
    final slots = parent['slots'];
    if (slots is Map && slots[slot] is List && (slots[slot] as List).isEmpty) {
      slots.remove(slot);
      if (slots.isEmpty) parent.remove('slots');
    }
  }

  static String _freshId(String base, Set<String> taken) {
    var clean = base
        .replaceAll(RegExp(r'[^a-zA-Z0-9_-]+'), '-')
        .replaceAll(RegExp(r'^[^a-zA-Z]+'), '');
    if (clean.isEmpty) clean = 'node';
    if (clean.length > 100) clean = clean.substring(0, 100);
    for (var i = 1; ; i++) {
      final id = '$clean-$i';
      if (!taken.contains(id) && _idPattern.hasMatch(id)) return id;
    }
  }

  static _Hit? _locate(
    dynamic node,
    String id, [
    Map<String, dynamic>? parent,
    String? slot,
    List<dynamic>? list,
    int index = 0,
  ]) {
    if (node is! Map) return null;
    final map = node as Map<String, dynamic>;
    if (map['id'] == id) return _Hit(map, parent, slot, list, index);
    final slots = map['slots'];
    if (slots is Map) {
      for (final entry in slots.entries) {
        final items = entry.value;
        if (items is! List) continue;
        for (var i = 0; i < items.length; i++) {
          final hit = _locate(items[i], id, map, entry.key as String, items, i);
          if (hit != null) return hit;
        }
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
  }
}

/// A template/page package: `package.json` + `pages/*.json` + `src/**` (+ settings, locales).
class PackageModel {
  PackageModel._(this.files, this._manifest, this._pages);

  static const manifestPath = 'package.json';
  static const settingsPath = 'settings.json';
  static const settingsValuesPath = 'settings.values.json';

  final Map<String, String> files;
  final Map<String, dynamic> _manifest;
  final Map<String, Map<String, dynamic>> _pages;

  /// Parse `package.json` and every declared page. Throws [FormatException] naming the file.
  factory PackageModel.parse(Map<String, String> files) {
    final manifest = _decode(files, manifestPath);
    final pages = <String, Map<String, dynamic>>{};
    final decl = manifest['pages'];
    if (decl is Map) {
      for (final e in decl.entries) {
        pages[e.key as String] = _decode(files, e.value as String);
      }
    }
    return PackageModel._(Map.unmodifiable(files), manifest, pages);
  }

  String get kind => _manifest['kind'] as String? ?? 'template';
  String get title => _manifest['title'] as String? ?? '';
  List<String> get pageIds => List.unmodifiable(_pages.keys);
  String pagePath(String pageId) {
    final path = (_manifest['pages'] as Map?)?[pageId];
    if (path is! String) throw StateError('PAGE_NOT_FOUND: $pageId');
    return path;
  }

  String pageTitle(String pageId) =>
      (_pages[pageId]?['title'] as String?) ?? pageId;
  String? pageRoute(String pageId) => _pages[pageId]?['path'] as String?;

  /// Local components declared in package.json.
  Map<String, ComponentInfo> get localComponents {
    final raw = _map(_manifest['components']);
    return {
      for (final e in raw.entries) e.key: _componentInfo(e.key, _map(e.value)),
    };
  }

  /// Pinned dependencies: key → {package, version}.
  Map<String, ({String package, int version})> get dependencies {
    final raw = _map(_manifest['dependencies']);
    return {
      for (final e in raw.entries)
        e.key: (
          package: _map(e.value)['package'] as String? ?? '',
          version: (_map(e.value)['version'] as num?)?.toInt() ?? 0,
        ),
    };
  }

  /// Everything a page node may use: core blocks, local components and [dependencyComponents]
  /// (`dep/component` → info, supplied by the caller from installed component packages).
  Map<String, ComponentInfo> catalog([
    Map<String, ComponentInfo> dependencyComponents = const {},
  ]) => {
    for (final b in coreBlocks) b.use: ComponentInfo.fromCore(b),
    ...localComponents,
    ...dependencyComponents,
  };

  Map<String, dynamic>? get settingsSchema =>
      files.containsKey(settingsPath) ? _decode(files, settingsPath) : null;
  Map<String, dynamic> get settingsValues =>
      files.containsKey(settingsValuesPath)
      ? _decode(files, settingsValuesPath)
      : {};

  /// A page tree to edit; write it back with [savePage].
  PageTree page(
    String pageId, [
    Map<String, ComponentInfo> dependencyComponents = const {},
  ]) {
    final page = _pages[pageId];
    if (page == null) throw StateError('PAGE_NOT_FOUND: $pageId');
    return PageTree(page, catalog(dependencyComponents));
  }

  PackageEdit savePage(String pageId, PageTree tree, {String? nodeId}) =>
      PackageEdit({pagePath(pageId): tree.encode()}, nodeId: nodeId);

  /// Placements of [use] across all pages, as (pageId, nodeId).
  List<({String pageId, String nodeId})> placementsOf(String use) {
    final out = <({String pageId, String nodeId})>[];
    for (final e in _pages.entries) {
      PageTree._walk(e.value['root'], (n) {
        if (n['use'] == use)
          out.add((pageId: e.key, nodeId: n['id'] as String));
      });
    }
    return out;
  }

  PackageEdit setSettings(Map<String, dynamic> values) =>
      PackageEdit({settingsValuesPath: encodePackageJson(values)});

  /// Declare a new local component with a starter source. Does not place it.
  PackageEdit addComponent({
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
    if (localComponents.containsKey(id) || files.containsKey(path))
      throw StateError('COMPONENT_EXISTS: $id');
    final manifest = _deepCopy(_manifest) as Map<String, dynamic>;
    final components = manifest.putIfAbsent(
      'components',
      () => <String, dynamic>{},
    ) as Map<String, dynamic>;
    components[id] = {
      'entry': path,
      'title': title,
      'props': {
        'schema':
            propsSchema ??
            {
              'type': 'object',
              'properties': {
                'title': {'type': 'string', 'title': 'Title'},
              },
            },
        'default': propsDefault ?? {'title': title},
      },
    };
    return PackageEdit({
      manifestPath: encodePackageJson(manifest),
      path: source ?? starterSource,
    }, path: path);
  }

  /// "Change only here": copy [use]'s declaration and source under [newId] and point only the
  /// node [nodeId] on [pageId] at the copy.
  PackageEdit forkComponentForNode(String pageId, String nodeId, String newId) {
    final tree = page(pageId);
    final node = tree.node(nodeId);
    if (node == null) throw StateError('NODE_NOT_FOUND: $nodeId');
    final info = localComponents[node.use];
    if (info == null || info.entry == null)
      throw StateError('NOT_A_LOCAL_COMPONENT: ${node.use}');
    if (!RegExp(r'^[a-z][a-z0-9_-]{0,59}$').hasMatch(newId) ||
        localComponents.containsKey(newId)) {
      throw StateError('COMPONENT_EXISTS: $newId');
    }
    final entry = info.entry!;
    final source = files[entry];
    if (source == null) throw StateError('SOURCE_NOT_FOUND: $entry');
    final slash = entry.lastIndexOf('/');
    final dot = entry.lastIndexOf('.');
    final newEntry =
        '${entry.substring(0, slash + 1)}$newId${entry.substring(dot)}';
    if (files.containsKey(newEntry))
      throw StateError('COMPONENT_EXISTS: $newEntry');
    final manifest = _deepCopy(_manifest) as Map<String, dynamic>;
    final components = manifest['components'] as Map<String, dynamic>;
    final declared = _deepCopy(components[node.use]) as Map<String, dynamic>;
    declared['entry'] = newEntry;
    declared['title'] = '${info.title} (${pageTitle(pageId)})';
    components[newId] = declared;
    tree.retarget(nodeId, newId);
    return PackageEdit(
      {
        manifestPath: encodePackageJson(manifest),
        pagePath(pageId): tree.encode(),
        newEntry: source,
      },
      nodeId: nodeId,
      path: newEntry,
    );
  }

  /// Pin a marketplace component package as dependency [key] (exact version).
  PackageEdit pinDependency(String key, String package, int version) {
    if (!RegExp(r'^[a-z][a-z0-9_-]{0,59}$').hasMatch(key) || key == 'core') {
      throw FormatException('Invalid dependency key: $key');
    }
    final manifest = _deepCopy(_manifest) as Map<String, dynamic>;
    final deps = manifest.putIfAbsent('dependencies', () => <String, dynamic>{}) as Map<String, dynamic>;
    deps[key] = {'package': package, 'version': version};
    return PackageEdit({manifestPath: encodePackageJson(manifest)});
  }

  /// A dependency key for [package] that is free (or already pins that package).
  String dependencyKeyFor(String package, String base) {
    for (final e in dependencies.entries) {
      if (e.value.package == package) return e.key;
    }
    var clean = freeComponentId(base);
    while (dependencies.containsKey(clean) || clean == 'core') {
      clean = '$clean-x';
    }
    return clean;
  }

  /// "Customize" dependency [key]: copy its source ([dependencyFiles], the pinned version's
  /// files) into `src/<key>/`, declare its components locally and point every placement at the
  /// local copies. The pin is removed.
  PackageEdit customizeDependency(String key, Map<String, String> dependencyFiles) {
    if (!dependencies.containsKey(key)) throw StateError('DEPENDENCY_NOT_FOUND: $key');
    final depManifest = _decode(dependencyFiles, manifestPath);
    final manifest = _deepCopy(_manifest) as Map<String, dynamic>;
    final components = manifest.putIfAbsent('components', () => <String, dynamic>{}) as Map<String, dynamic>;
    final changes = <String, String>{};
    for (final e in dependencyFiles.entries) {
      if (!e.key.startsWith('src/')) continue;
      final target = 'src/$key/${e.key.substring(4)}';
      if (files.containsKey(target)) throw StateError('FILE_EXISTS: $target');
      changes[target] = e.value;
    }
    final renamed = <String, String>{};
    final taken = {...localComponents.keys};
    for (final e in _map(depManifest['components']).entries) {
      var id = '$key-${e.key}';
      for (var i = 2; taken.contains(id); i++) {
        id = '$key-${e.key}-$i';
      }
      taken.add(id);
      final declared = _deepCopy(_map(e.value)) as Map<String, dynamic>;
      declared['entry'] = 'src/$key/${(declared['entry'] as String).substring(4)}';
      components[id] = declared;
      renamed['$key/${e.key}'] = id;
    }
    (manifest['dependencies'] as Map).remove(key);
    if ((manifest['dependencies'] as Map).isEmpty) manifest.remove('dependencies');
    changes[manifestPath] = encodePackageJson(manifest);
    for (final pageId in pageIds) {
      final json = _deepCopy(_pages[pageId]) as Map<String, dynamic>;
      var touched = false;
      PageTree._walk(json['root'], (n) {
        final to = renamed[n['use']];
        if (to != null) {
          n['use'] = to;
          touched = true;
        }
      });
      if (touched) changes[pagePath(pageId)] = encodePackageJson(json);
    }
    return PackageEdit(changes);
  }

  /// A component id derived from [base] that is still free.
  String freeComponentId(String base) {
    var clean = base
        .toLowerCase()
        .replaceAll(RegExp(r'[^a-z0-9_-]+'), '-')
        .replaceAll(RegExp(r'^[^a-z]+'), '')
        .replaceAll(RegExp(r'[-_]+$'), '');
    if (clean.isEmpty) clean = 'component';
    if (clean.length > 50) clean = clean.substring(0, 50);
    bool free(String id) =>
        !localComponents.containsKey(id) &&
        !files.containsKey('src/components/$id.tsx');
    if (free(clean)) return clean;
    for (var i = 2; ; i++) {
      if (free('$clean-$i')) return '$clean-$i';
    }
  }

  static const starterSource =
      'export default function Section() {\n'
      '  return (\n'
      '    <section style={{ padding: 24 }}>\n'
      '      <h2>{props.title}</h2>\n'
      '    </section>\n'
      '  );\n'
      '}\n';

  static ComponentInfo _componentInfo(String id, Map<String, dynamic> json) {
    final props = _map(json['props']);
    final slots = _map(json['slots']);
    return ComponentInfo(
      use: id,
      title: json['title'] as String? ?? id,
      propsSchema: props['schema'] is Map ? _map(props['schema']) : null,
      propsDefault: _map(props['default']),
      slots: {
        for (final e in slots.entries)
          e.key: (_map(e.value)['title'] as String?) ?? e.key,
      },
      entry: json['entry'] as String?,
    );
  }

  static Map<String, dynamic> _decode(Map<String, String> files, String path) {
    final text = files[path];
    if (text == null) throw FormatException('$path is missing');
    final Object? decoded;
    try {
      decoded = jsonDecode(text);
    } on FormatException catch (e) {
      throw FormatException('$path: ${e.message}');
    }
    if (decoded is! Map) throw FormatException('$path must be a JSON object');
    return _map(decoded);
  }
}

/// Catalog of an installed artifact (`artifact.components`), for editing store pages.
Map<String, ComponentInfo> catalogFromArtifactComponents(
  Map<String, dynamic> components,
) => {
  for (final b in coreBlocks) b.use: ComponentInfo.fromCore(b),
  for (final e in components.entries)
    if (!e.key.startsWith('core/'))
      e.key: ComponentInfo(
        use: e.key,
        title: _map(e.value)['title'] as String? ?? e.key,
        propsSchema: _map(_map(e.value)['props'])['schema'] is Map
            ? _map(_map(_map(e.value)['props'])['schema'])
            : null,
        propsDefault: _map(_map(_map(e.value)['props'])['default']),
        slots: {
          for (final s in _map(_map(e.value)['slots']).entries)
            s.key: (_map(s.value)['title'] as String?) ?? s.key,
        },
      ),
};

/// Components of a pinned dependency [key], from its version's artifact: `key/component` → info.
Map<String, ComponentInfo> dependencyCatalog(
  String key,
  Map<String, dynamic> artifactComponents,
) => {
  for (final e in catalogFromArtifactComponents(artifactComponents).entries)
    if (!e.value.isCore)
      '$key/${e.key}': ComponentInfo(
        use: '$key/${e.key}',
        title: e.value.title,
        propsSchema: e.value.propsSchema,
        propsDefault: e.value.propsDefault,
        slots: e.value.slots,
      ),
};

Map<String, dynamic> _map(Object? value) => value is Map<String, dynamic>
    ? value
    : value is Map
    ? value.map((k, v) => MapEntry(k.toString(), v))
    : <String, dynamic>{};

Object? _deepCopy(Object? value) {
  if (value is Map)
    return <String, dynamic>{
      for (final e in value.entries) e.key.toString(): _deepCopy(e.value),
    };
  if (value is List) return [for (final v in value) _deepCopy(v)];
  return value;
}

class _Hit {
  _Hit(this.node, this.parent, this.slot, this.list, this.index);
  final Map<String, dynamic> node;
  final Map<String, dynamic>? parent;
  final String? slot;
  final List<dynamic>? list;
  final int index;
}
