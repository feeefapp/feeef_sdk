import 'dart:convert';

/// Structured editing of Feeef packages (docs/template-system/SPEC.md, v3.1) and of standalone
/// content (store pages, product landing pages).
///
/// A package is a folder: `feeef.json`, routes in `app/` (Next.js app-router style), components in
/// `components/`, editor-owned JSON in `content/`. What a merchant edits visually is slot content:
/// `content/layout.json` and `content/pages/<route>.json`, each `{slots: {name: [Node]}}`. A node
/// is `{id, use, props?, slots?, hydrate?}` where `use` is a local component id, `dep/component`
/// or `core/<block>`.
///
/// Operations return complete replacement texts for the files they touch; callers write them to
/// their draft and save through the normal CAS patch. The server build (`@feeef/engine`) stays the
/// authority; checks here only prevent obvious mistakes.

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
    this.icon,
    this.category = 'Commerce',
  });
  final String id;
  final String title;

  /// Declared slots: id → title.
  final Map<String, String> slots;

  /// Static layout container (no hydration).
  final bool layout;

  /// Props map (`{name: {type, default, ui, …}}`).
  final Map<String, Object?> props;
  final String? icon;
  final String category;

  String get use => 'core/$id';
}

const coreBlocks = <CoreBlock>[
  CoreBlock(
    'box',
    'Box',
    slots: {'main': 'Content'},
    layout: true,
    icon: 'layout',
    category: 'Layout',
    props: {
      'direction': {
        'type': 'string',
        'title': 'Direction',
        'enum': ['column', 'row'],
        'default': 'column',
      },
      'columns': {
        'type': 'integer',
        'title': 'Columns',
        'minimum': 0,
        'maximum': 12,
        'ui': 'slider',
        'default': 0,
      },
      'gap': {
        'type': 'integer',
        'title': 'Gap',
        'minimum': 0,
        'maximum': 200,
        'ui': 'slider',
        'default': 16,
      },
      'maxWidth': {
        'type': 'integer',
        'title': 'Max width',
        'minimum': 0,
        'maximum': 4000,
        'default': 0,
      },
    },
  ),
  CoreBlock(
    'product',
    'Product',
    slots: {'main': 'Content'},
    icon: 'package',
    props: {
      'productId': {'type': 'string', 'title': 'Product', 'ui': 'product'},
    },
  ),
  CoreBlock('product-gallery', 'Product gallery', icon: 'photo'),
  CoreBlock('order-form', 'Order form', icon: 'forms'),
  CoreBlock('order-button', 'Floating order button', icon: 'shopping-cart'),
];

CoreBlock? coreBlock(String use) {
  if (!use.startsWith('core/')) return null;
  final id = use.substring(5);
  for (final b in coreBlocks) {
    if (b.id == id) return b;
  }
  return null;
}

/// A props map (`{title: {type, default, ui}}`) as one object schema plus its defaults.
({Map<String, dynamic> schema, Map<String, dynamic> defaults}) propsSchemaOf(
  Map<String, dynamic> props,
) {
  final defaults = <String, dynamic>{};
  for (final e in props.entries) {
    final prop = _map(e.value);
    if (prop.containsKey('default')) {
      defaults[e.key] = _deepCopy(prop['default']);
    }
  }
  return (
    schema: {'type': 'object', 'properties': _deepCopy(props)},
    defaults: defaults,
  );
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
    this.icon,
    this.category,
    this.description,
  });
  final String use;
  final String title;
  final Map<String, dynamic>? propsSchema;
  final Map<String, dynamic> propsDefault;

  /// Declared slots: id → title.
  final Map<String, String> slots;

  /// Source file for local components (null for core and dependency components).
  final String? entry;
  final String? icon;
  final String? category;
  final String? description;

  bool get isCore => use.startsWith('core/');
  bool get isLayout => coreBlock(use)?.layout ?? false;
  bool get isDependency => !isCore && use.contains('/');

  static ComponentInfo fromCore(CoreBlock b) {
    final props = propsSchemaOf(b.props.cast<String, dynamic>());
    return ComponentInfo(
      use: b.use,
      title: b.title,
      propsSchema: b.props.isEmpty ? null : props.schema,
      propsDefault: props.defaults,
      slots: b.slots,
      icon: b.icon,
      category: b.category,
    );
  }

  /// From a component `config` literal (SPEC §4) or an artifact component entry.
  static ComponentInfo fromConfig(
    String use,
    Map<String, dynamic> config, {
    String? entry,
  }) {
    final props = propsSchemaOf(_map(config['props']));
    return ComponentInfo(
      use: use,
      title: config['title'] as String? ?? use,
      propsSchema: _map(config['props']).isEmpty ? null : props.schema,
      propsDefault: props.defaults,
      slots: _slotTitles(config['slots']),
      entry: entry,
      icon: config['icon'] as String?,
      category: config['category'] as String?,
      description: config['description'] as String?,
    );
  }

  /// From `artifact.code.components[use]` (`props: {schema, default}`).
  static ComponentInfo fromArtifact(String use, Map<String, dynamic> json) {
    final props = _map(json['props']);
    return ComponentInfo(
      use: use,
      title: json['title'] as String? ?? use,
      propsSchema: props['schema'] is Map ? _map(props['schema']) : null,
      propsDefault: _map(props['default']),
      slots: _slotTitles(json['slots']),
      icon: json['icon'] as String?,
      category: json['category'] as String?,
      description: json['description'] as String?,
    );
  }

  ComponentInfo renamed(String use) => ComponentInfo(
    use: use,
    title: title,
    propsSchema: propsSchema,
    propsDefault: propsDefault,
    slots: slots,
    icon: icon,
    category: category,
    description: description,
  );
}

Map<String, String> _slotTitles(Object? raw) => {
  for (final e in _map(raw).entries)
    e.key: (_map(e.value)['title'] as String?) ?? e.key,
};

/// Where to put a node: a parent's [slot] at [index]. The parent of a view's top-level slots is
/// [PageTree.rootId].
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

/// Result of an operation: complete replacement texts per changed file (`null` deletes).
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
  TreeNode(this.json, this._catalog, {Map<String, String>? rootSlots})
    // ignore: prefer_initializing_formals
    : _rootSlots = rootSlots;
  final Map<String, dynamic> json;
  final Map<String, ComponentInfo> _catalog;
  final Map<String, String>? _rootSlots;

  String get id => json['id'] as String;
  String get use => json['use'] as String;
  String? get hydrate => json['hydrate'] as String?;
  Map<String, dynamic> get props => _map(json['props']);
  ComponentInfo? get component => _catalog[use];

  /// The view itself (a route or the layout): holds the `<Slot>` areas, has no props.
  bool get isPageRoot => _rootSlots != null;
  String get title => isPageRoot ? 'Page' : component?.title ?? use;
  bool get isCore => use.startsWith('core/');

  /// Slot titles: the route's `<Slot>` areas for the root, else the component's declared slots.
  Map<String, String> get slotTitles =>
      _rootSlots ?? component?.slots ?? const {};

  /// `props` merged over the component defaults (what renders).
  Map<String, dynamic> get effectiveProps =>
      mergeProps(component?.propsDefault ?? const {}, props);

  /// Slots this node holds: declared slots first, then any present in the JSON.
  Map<String, List<TreeNode>> get slots {
    final raw = _map(json['slots']);
    final names = <String>{...slotTitles.keys, ...raw.keys};
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

/// Operations on one content file `{slots: {name: [Node]}}` (template views and store pages).
///
/// The content's top-level slots hang off a virtual root node ([rootId]) whose slots are the
/// view's `<Slot>` areas ([slots]); every slot, empty or not, accepts inserts and moves.
class PageTree {
  PageTree(
    Map<String, dynamic> content,
    this.catalog, {
    Map<String, String> slots = const {'main': 'Content'},
    Set<String>? takenIds,
  }) : _content = _deepCopy(content) as Map<String, dynamic>,
       _slotDecls = slots,
       _extraTaken = takenIds ?? const {} {
    final raw = _map(_content['slots']);
    _root = <String, dynamic>{
      'id': rootId,
      'use': rootUse,
      'slots': <String, dynamic>{
        for (final name in {...slots.keys, ...raw.keys})
          name: [
            for (final n in (raw[name] as List?) ?? const []) _deepCopy(n),
          ],
      },
    };
  }

  static const rootId = '@root';
  static const rootUse = '@view';

  final Map<String, dynamic> _content;
  late final Map<String, dynamic> _root;
  final Map<String, ComponentInfo> catalog;
  final Map<String, String> _slotDecls;
  final Set<String> _extraTaken;

  static final _idPattern = RegExp(r'^[a-zA-Z][a-zA-Z0-9_-]{0,119}$');
  static const _maxListItems = 500;

  /// The view's slot areas (`<Slot name>` in the route or layout).
  Map<String, String> get slotDecls => _slotDecls;

  TreeNode get root => TreeNode(_root, catalog, rootSlots: _slotDecls);

  /// The content JSON `{slots}` (a copy).
  Map<String, dynamic> get content => {
    ..._deepCopy(_content) as Map<String, dynamic>,
    'slots': _deepCopy(_root['slots']),
  };

  TreeNode? node(String id) {
    if (id == rootId) return root;
    final hit = _locate(_root, id);
    return hit == null ? null : TreeNode(hit.node, catalog);
  }

  Set<String> get ids {
    final out = <String>{};
    _walk(_root, (n) {
      if (n['id'] != rootId) out.add(n['id'] as String);
    });
    return out;
  }

  /// End of the first slot (`main` when present), before a trailing footer component.
  TreeLocation defaultLocation() {
    final slots = root.slots;
    final name = slots.containsKey('main')
        ? 'main'
        : (slots.keys.isEmpty ? 'main' : slots.keys.first);
    final list = slots[name] ?? const <TreeNode>[];
    var index = list.length;
    if (list.isNotEmpty) {
      final last = list.last;
      if ('${last.use} ${last.title}'.toLowerCase().contains('footer')) index--;
    }
    return TreeLocation(parent: rootId, slot: name, index: index);
  }

  /// Every place a node can go: (parent id, slot, title) for the root slots and each node's slots.
  List<({String parent, String slot, String label})> destinations() {
    final out = <({String parent, String slot, String label})>[];
    void visit(TreeNode node, String prefix) {
      for (final e in node.slots.entries) {
        final title = node.slotTitles[e.key] ?? e.key;
        out.add((
          parent: node.id,
          slot: e.key,
          label: node.isPageRoot ? title : '$prefix${node.title} · $title',
        ));
        for (final child in e.value) {
          visit(child, node.isPageRoot ? '' : '$prefix${node.title} › ');
        }
      }
    }

    visit(root, '');
    return out;
  }

  /// Where [id] sits: its parent, slot and index (null for the root or a missing node).
  TreeLocation? locationOf(String id) {
    final hit = _locate(_root, id);
    if (hit == null || hit.parent == null) return null;
    return TreeLocation(
      parent: hit.parent!['id'] as String,
      slot: hit.slot!,
      index: hit.index,
    );
  }

  /// Move [id] to [to]. [TreeLocation.index] is the position before removal in the target list
  /// (so "drop before row N" is index N even inside the same list).
  void move(String id, TreeLocation to) {
    final hit = _locate(_root, id);
    if (hit == null) throw StateError('NODE_NOT_FOUND: $id');
    if (hit.list == null) throw StateError('ROOT_NOT_MOVABLE');
    if (_locate(hit.node, to.parent) != null) {
      throw StateError('MOVE_INTO_SELF');
    }
    final target = _slotList(to);
    var index = to.index;
    if (identical(target, hit.list) && hit.index < index) index--;
    hit.list!.removeAt(hit.index);
    target.insert(index.clamp(0, target.length), hit.node);
    _cleanupEmpty(hit.parent, hit.slot);
  }

  /// Insert a placement of [use]; props start empty (the component defaults apply).
  String insert(String use, TreeLocation at, {Map<String, dynamic>? props}) {
    if (!catalog.containsKey(use)) throw StateError('COMPONENT_UNKNOWN: $use');
    final list = _slotList(at);
    if (list.length >= _maxListItems) throw StateError('SLOT_FULL');
    final base = use.contains('/') ? use.split('/').last : use;
    final id = _freshId(base, {...ids, ..._extraTaken});
    list.insert(at.index.clamp(0, list.length), <String, dynamic>{
      'id': id,
      'use': use,
      if (props != null && props.isNotEmpty) 'props': props,
    });
    return id;
  }

  void remove(String id) {
    final hit = _locate(_root, id);
    if (hit == null) throw StateError('NODE_NOT_FOUND: $id');
    if (hit.list == null) throw StateError('ROOT_NOT_REMOVABLE');
    hit.list!.removeAt(hit.index);
    _cleanupEmpty(hit.parent, hit.slot);
  }

  String duplicate(String id) {
    final hit = _locate(_root, id);
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
    if (id == rootId) throw StateError('PAGE_ROOT_HAS_NO_PROPS');
    final hit = _locate(_root, id);
    if (hit == null) throw StateError('NODE_NOT_FOUND: $id');
    if (props.isEmpty) {
      hit.node.remove('props');
    } else {
      hit.node['props'] = _deepCopy(props);
    }
  }

  /// Set or clear (`null`) hydration; not allowed on core blocks.
  void setHydrate(String id, String? hydrate) {
    const allowed = ['never', 'load', 'idle', 'visible', 'interaction'];
    if (hydrate != null && !allowed.contains(hydrate)) {
      throw StateError('HYDRATE_UNSUPPORTED: $hydrate');
    }
    final hit = _locate(_root, id);
    if (hit == null || id == rootId) throw StateError('NODE_NOT_FOUND: $id');
    if ((hit.node['use'] as String).startsWith('core/')) {
      throw StateError('CORE_HAS_NO_HYDRATION');
    }
    if (hydrate == null) {
      hit.node.remove('hydrate');
    } else {
      hit.node['hydrate'] = hydrate;
    }
  }

  /// Point one placement at another component (used by "change only here").
  void retarget(String id, String use) {
    final hit = _locate(_root, id);
    if (hit == null || id == rootId) throw StateError('NODE_NOT_FOUND: $id');
    hit.node['use'] = use;
  }

  String encode() => encodePackageJson(content);

  // ------------------------------------------------------------------ helpers

  List<dynamic> _slotList(TreeLocation at) {
    if (!RegExp(r'^[a-zA-Z][a-zA-Z0-9_-]{0,79}$').hasMatch(at.slot)) {
      throw StateError('SLOT_INVALID');
    }
    final hit = at.parent == rootId ? null : _locate(_root, at.parent);
    final parent = at.parent == rootId ? _root : hit?.node;
    if (parent == null) throw StateError('NODE_NOT_FOUND: ${at.parent}');
    if (parent == _root) {
      if (!_slotDecls.containsKey(at.slot) &&
          !_map(_root['slots']).containsKey(at.slot)) {
        throw StateError('SLOT_UNDECLARED: ${at.slot}');
      }
    } else {
      final use = parent['use'] as String;
      final declared = catalog[use]?.slots ?? const {};
      if (!declared.containsKey(at.slot)) {
        throw StateError('SLOT_UNDECLARED: $use.${at.slot}');
      }
    }
    final slots = parent.putIfAbsent(
      'slots',
      () => <String, dynamic>{},
    ) as Map<String, dynamic>;
    return slots.putIfAbsent(at.slot, () => <dynamic>[]) as List<dynamic>;
  }

  static void _cleanupEmpty(Map<String, dynamic>? parent, String? slot) {
    if (parent == null || slot == null || parent['id'] == rootId) return;
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

  /// Every node of a content JSON `{slots}`.
  static void walkContent(
    Map<String, dynamic> content,
    void Function(Map<String, dynamic>) visit,
  ) {
    for (final items in _map(content['slots']).values) {
      if (items is List) {
        for (final n in items) {
          _walk(n, visit);
        }
      }
    }
  }
}

/// One editable view of a template: a route (`app/**/page.tsx`) or the layout.
class RouteInfo {
  const RouteInfo({
    required this.id,
    required this.source,
    required this.contentPath,
    required this.slots,
    this.title,
    this.path,
  });

  /// Route key (`index`, `products/[slug]`, `contact`, `not-found`) or [PackageModel.layoutId].
  final String id;

  /// `app/…/page.tsx`, `app/not-found.tsx` or `app/layout.tsx`.
  final String source;

  /// `content/pages/<route>.json` or `content/layout.json`.
  final String contentPath;

  /// `<Slot name title>` areas, in source order.
  final Map<String, String> slots;

  /// `metadata.title`.
  final String? title;

  /// URL pattern (`/`, `/products/:slug`); null for the layout and the 404 page.
  final String? path;

  bool get isLayout => id == PackageModel.layoutId;
  bool get isDynamic => path?.contains(':') ?? false;
  String get label =>
      title ??
      (isLayout
          ? 'Layout'
          : id == 'index'
          ? 'Home'
          : id == 'not-found'
          ? 'Page not found'
          : id);
}

/// A problem the server build (`@feeef/engine`) reports for a package file. The model skips what
/// it flags, so editors never offer something the build rejects.
class PackageIssue {
  const PackageIssue(this.code, this.path, this.message);

  /// Engine diagnostic code (`ROUTE_SEGMENT`, `ROUTE_RESERVED`, `CONTENT_STORE_PAGE`, …).
  final String code;
  final String path;
  final String message;

  @override
  String toString() => '$code $path: $message';
}

/// A template or component package (SPEC §1).
class PackageModel {
  PackageModel._(
    this.files,
    this._manifest,
    this._routes,
    this._components,
    this.issues,
  );

  static const manifestPath = 'feeef.json';
  static const themePath = 'content/theme.json';
  static const layoutContentPath = 'content/layout.json';

  /// The layout's view id in [pageIds].
  static const layoutId = '@layout';

  /// The store-page frame (`app/pages/[slug]/page.tsx`). Its slots hold each store page's own
  /// content, so it is not an editable view of the template ([route] still reads it).
  static const storePageRoute = 'pages/[slug]';

  /// Routes with fixed URLs and data (SPEC §3); only these may use [reservedSegments].
  static const boundRoutes = {
    'index',
    'products',
    'products/[slug]',
    'categories/[slug]',
    'cart',
    'checkout',
    'thanks',
    storePageRoute,
    'not-found',
  };

  /// First URL segments the storefront serves itself: free routes cannot start with them.
  static const reservedSegments = {
    '_h',
    'api',
    'p',
    'pages',
    'products',
    'categories',
    'cart',
    'checkout',
    'thanks',
    'sitemap.xml',
    'sitemaps',
    'robots.txt',
    'favicon.ico',
  };

  final Map<String, String> files;
  final Map<String, dynamic> _manifest;
  final Map<String, RouteInfo> _routes;
  final Map<String, ComponentInfo> _components;

  /// What the engine would reject in the route files (skipped by the model).
  final List<PackageIssue> issues;

  /// Parse `feeef.json`, discover routes and components. Throws [FormatException] naming the file.
  factory PackageModel.parse(Map<String, String> files) {
    final manifest = _decode(files, manifestPath);
    final routes = <String, RouteInfo>{};
    final components = <String, ComponentInfo>{};
    final issues = <PackageIssue>[];
    final keys = files.keys.toList()..sort();
    for (final path in keys) {
      final component = _componentPath.firstMatch(path);
      if (component != null) {
        final id = component.group(1)!;
        final config = staticExport(files[path]!, 'config') ?? const {};
        components[id] = ComponentInfo.fromConfig(
          id,
          _map(config),
          entry: path,
        );
        continue;
      }
      final issue = routeIssueOf(path);
      if (issue != null) {
        issues.add(issue);
        continue;
      }
      final route = _routeKey(path);
      if (route == null) continue;
      final isLayout = route == layoutId;
      if (routes.containsKey(route)) {
        issues.add(
          PackageIssue(
            isLayout ? 'LAYOUT_DUPLICATE' : 'ROUTE_DUPLICATE',
            path,
            isLayout
                ? 'Only one app/layout file'
                : 'Two files define route $route',
          ),
        );
        continue;
      }
      final text = files[path]!;
      final metadata = _map(staticExport(text, 'metadata'));
      routes[route] = RouteInfo(
        id: route,
        source: path,
        contentPath: isLayout ? layoutContentPath : contentPathOf(route),
        slots: slotsInSource(text),
        title: metadata['title'] as String?,
        path: isLayout ? null : pathOf(route),
      );
    }
    final frame = routes[storePageRoute];
    if (frame != null && !frame.slots.containsKey('main')) {
      issues.add(
        PackageIssue(
          'STORE_PAGE_SLOT',
          frame.source,
          'The store page frame must declare <Slot name="main" />: every store page fills it',
        ),
      );
    }
    final frameContent = contentPathOf(storePageRoute);
    if (files.containsKey(frameContent)) {
      issues.add(
        PackageIssue(
          'CONTENT_STORE_PAGE',
          frameContent,
          'Store pages own the slots of the pages/[slug] frame; edit their content in the store, not in the template',
        ),
      );
    }
    return PackageModel._(
      Map.unmodifiable(files),
      manifest,
      routes,
      components,
      List.unmodifiable(issues),
    );
  }

  static final _componentPath = RegExp(
    r'^components/([a-z][a-z0-9-]*)(?:/index)?\.(?:tsx|ts|jsx|js)$',
  );
  static final _routePath = RegExp(r'^app/(?:(.+)/)?page\.(?:tsx|ts|jsx|js)$');
  static final _routeSegment = RegExp(
    r'^(?:[a-z0-9][a-z0-9-]*|\[[a-z][A-Za-z0-9]*\])$',
  );

  /// Route key of an `app/` file, [layoutId] for the layout, null for other files and for route
  /// files the engine rejects ([routeIssueOf]).
  static String? routeOf(String path) =>
      routeIssueOf(path) == null ? _routeKey(path) : null;

  static String? _routeKey(String path) {
    if (RegExp(r'^app/layout\.(?:tsx|ts|jsx|js)$').hasMatch(path)) {
      return layoutId;
    }
    if (RegExp(r'^app/not-found\.(?:tsx|ts|jsx|js)$').hasMatch(path)) {
      return 'not-found';
    }
    final m = _routePath.firstMatch(path);
    return m == null ? null : (m.group(1) ?? 'index');
  }

  /// Why the engine rejects the route file [path] (SPEC §3), or null. Folders are lowercase
  /// letters, digits and dashes or `[name]` (the content path alphabet); free routes cannot start
  /// with a segment the storefront serves itself ([reservedSegments]); only commerce routes are
  /// dynamic.
  static PackageIssue? routeIssueOf(String path) {
    final route = _routePath.firstMatch(path)?.group(1);
    if (route == null) return null;
    final segments = route.split('/');
    if (!segments.every(_routeSegment.hasMatch)) {
      return PackageIssue(
        'ROUTE_SEGMENT',
        path,
        'Route folders are lowercase letters, digits and dashes ([name] for the dynamic segment of a commerce route)',
      );
    }
    if (route == 'index') {
      return PackageIssue(
        'ROUTE_RESERVED',
        path,
        'Use app/page.tsx for the home page',
      );
    }
    if (route == 'not-found') {
      return PackageIssue(
        'ROUTE_RESERVED',
        path,
        'Use app/not-found.tsx for the 404 page',
      );
    }
    if (boundRoutes.contains(route)) return null;
    if (reservedSegments.contains(segments.first)) {
      return PackageIssue(
        'ROUTE_RESERVED',
        path,
        '/${segments.first} is served by the storefront; choose another folder name',
      );
    }
    if (route.contains('[')) {
      return PackageIssue(
        'ROUTE_DYNAMIC',
        path,
        'Only the commerce routes have dynamic segments; free pages have static paths',
      );
    }
    return null;
  }

  static String contentPathOf(String route) => 'content/pages/$route.json';

  /// URL pattern of a route key (`products/[slug]` → `/products/:slug`); null for the 404 page.
  static String? pathOf(String route) => route == 'index'
      ? '/'
      : route == 'not-found'
      ? null
      : '/${route.replaceAllMapped(RegExp(r'\[([^\]]+)\]'), (m) => ':${m[1]}')}';

  String get kind => _manifest['kind'] as String? ?? 'template';
  String get title => _manifest['title'] as String? ?? '';

  /// Editable views: routes, then the layout. The store-page frame is not one ([storePageFrame]).
  List<RouteInfo> get routes {
    final list =
        _routes.values
            .where((r) => !r.isLayout && r.id != storePageRoute)
            .toList()
          ..sort((a, b) => _routeOrder(a.id).compareTo(_routeOrder(b.id)));
    return [...list, ?_routes[layoutId]];
  }

  static int _routeOrder(String id) {
    const order = [
      'index',
      'products',
      'products/[slug]',
      'categories/[slug]',
      'cart',
      'checkout',
      'thanks',
    ];
    final i = order.indexOf(id);
    return i >= 0 ? i : (id == 'not-found' ? 999 : 100);
  }

  /// Any route by id, the store-page frame included.
  RouteInfo? route(String id) => _routes[id];
  RouteInfo? get layout => _routes[layoutId];

  /// `app/pages/[slug]/page.tsx`: frames merchant store pages, whose own content fills its slots.
  RouteInfo? get storePageFrame => _routes[storePageRoute];

  /// Editable views (route ids and [layoutId]).
  List<String> get pageIds => [for (final r in routes) r.id];

  /// Content file of a view.
  String pagePath(String pageId) {
    final r = _routes[pageId];
    if (r == null) throw StateError('PAGE_NOT_FOUND: $pageId');
    return r.contentPath;
  }

  String pageTitle(String pageId) => _routes[pageId]?.label ?? pageId;
  String? pageRoute(String pageId) => _routes[pageId]?.path;

  /// Local components found in `components/`.
  Map<String, ComponentInfo> get localComponents =>
      Map.unmodifiable(_components);

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

  /// Everything a node may use: core blocks, local components and [dependencyComponents]
  /// (`dep/component` → info, supplied by the caller from installed component packages).
  Map<String, ComponentInfo> catalog([
    Map<String, ComponentInfo> dependencyComponents = const {},
  ]) => {
    for (final b in coreBlocks) b.use: ComponentInfo.fromCore(b),
    ...localComponents,
    ...dependencyComponents,
  };

  /// Theme props map from `feeef.json` as one object schema (null when the template has none).
  Map<String, dynamic>? get themeSchema {
    final theme = _map(_manifest['theme']);
    return theme.isEmpty ? null : propsSchemaOf(theme).schema;
  }

  /// Theme values with the schema defaults merged in.
  Map<String, dynamic> get themeValues {
    final defaults = propsSchemaOf(_map(_manifest['theme'])).defaults;
    final stored = files.containsKey(themePath)
        ? _decode(files, themePath)
        : const <String, dynamic>{};
    return mergeProps(defaults, stored);
  }

  /// Content JSON of a view (`{slots: {}}` when its file does not exist yet).
  Map<String, dynamic> content(String pageId) {
    final path = pagePath(pageId);
    return files.containsKey(path)
        ? _decode(files, path)
        : {'slots': <String, dynamic>{}};
  }

  /// A view's content to edit; write it back with [savePage]. Ids stay unique across the view
  /// and the layout (they render together).
  PageTree page(
    String pageId, [
    Map<String, ComponentInfo> dependencyComponents = const {},
  ]) {
    final r = _routes[pageId];
    if (r == null) throw StateError('PAGE_NOT_FOUND: $pageId');
    final taken = <String>{};
    final others = r.isLayout ? routes.where((v) => !v.isLayout) : [?layout];
    for (final other in others) {
      if (other.id == pageId) continue;
      PageTree.walkContent(
        content(other.id),
        (n) => taken.add(n['id'] as String),
      );
    }
    return PageTree(
      content(pageId),
      catalog(dependencyComponents),
      slots: r.slots,
      takenIds: taken,
    );
  }

  PackageEdit savePage(String pageId, PageTree tree, {String? nodeId}) =>
      PackageEdit({pagePath(pageId): tree.encode()}, nodeId: nodeId);

  /// Placements of [use] across all views, as (pageId, nodeId).
  List<({String pageId, String nodeId})> placementsOf(String use) {
    final out = <({String pageId, String nodeId})>[];
    for (final r in routes) {
      PageTree.walkContent(content(r.id), (n) {
        if (n['use'] == use) out.add((pageId: r.id, nodeId: n['id'] as String));
      });
    }
    return out;
  }

  PackageEdit setTheme(Map<String, dynamic> values) =>
      PackageEdit({themePath: encodePackageJson(values)});

  /// A new local component `components/<id>.tsx` with a starter source. Does not place it.
  PackageEdit addComponent({
    required String id,
    required String title,
    Map<String, dynamic>? props,
    String? source,
  }) {
    if (!RegExp(r'^[a-z][a-z0-9-]{0,59}$').hasMatch(id)) {
      throw const FormatException(
        'Use a lowercase component ID, for example special-offer',
      );
    }
    final path = 'components/$id.tsx';
    if (localComponents.containsKey(id) || files.containsKey(path)) {
      throw StateError('COMPONENT_EXISTS: $id');
    }
    return PackageEdit({
      path: source ?? starterSource(title, props: props),
    }, path: path);
  }

  /// "Change only here": copy [use]'s source under [newId] and point only the node [nodeId] on
  /// [pageId] at the copy.
  PackageEdit forkComponentForNode(String pageId, String nodeId, String newId) {
    final tree = page(pageId);
    final node = tree.node(nodeId);
    if (node == null) throw StateError('NODE_NOT_FOUND: $nodeId');
    final info = localComponents[node.use];
    if (info == null || info.entry == null) {
      throw StateError('NOT_A_LOCAL_COMPONENT: ${node.use}');
    }
    if (!RegExp(r'^[a-z][a-z0-9-]{0,59}$').hasMatch(newId) ||
        localComponents.containsKey(newId)) {
      throw StateError('COMPONENT_EXISTS: $newId');
    }
    final entry = info.entry!;
    final changes = <String, String>{};
    final folder =
        entry.endsWith('/index.tsx') || RegExp(r'/index\.\w+$').hasMatch(entry);
    if (folder) {
      final from = entry.substring(0, entry.lastIndexOf('/') + 1);
      final to = 'components/$newId/';
      for (final e in files.entries) {
        if (e.key.startsWith(from)) {
          changes['$to${e.key.substring(from.length)}'] = e.value;
        }
      }
    } else {
      changes['components/$newId${entry.substring(entry.lastIndexOf('.'))}'] =
          files[entry]!;
    }
    for (final path in changes.keys) {
      if (files.containsKey(path)) throw StateError('COMPONENT_EXISTS: $path');
    }
    final newEntry = folder
        ? 'components/$newId/${entry.substring(entry.lastIndexOf('/') + 1)}'
        : 'components/$newId${entry.substring(entry.lastIndexOf('.'))}';
    changes[newEntry] = _retitle(
      changes[newEntry]!,
      '${info.title} (${pageTitle(pageId)})',
    );
    tree.retarget(nodeId, newId);
    changes[pagePath(pageId)] = tree.encode();
    return PackageEdit(changes, nodeId: nodeId, path: newEntry);
  }

  /// Pin a marketplace component package as dependency [key] (exact version).
  PackageEdit pinDependency(String key, String package, int version) {
    if (!RegExp(r'^[a-z][a-z0-9-]{0,59}$').hasMatch(key) || key == 'core') {
      throw FormatException('Invalid dependency key: $key');
    }
    final manifest = _deepCopy(_manifest) as Map<String, dynamic>;
    final deps = manifest.putIfAbsent(
      'dependencies',
      () => <String, dynamic>{},
    ) as Map<String, dynamic>;
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

  /// "Customize" dependency [key]: copy its code ([dependencyFiles], the pinned version's files)
  /// into this template and point the template's own placements (`<key>/<id>` in routes and the
  /// layout) at the copies. Every `components/` file moves by its name: `components/<name>…` →
  /// `components/<key>-<name>…`, so a component's folder, `.css` and `.module.css` siblings stay
  /// together; `lib/**` → `lib/<key>/**`, `styles/**` → `styles/<key>/**` (`<key>-2`, … for a
  /// second copy); relative imports are rewritten. The pin stays (store pages may still place `<key>/<id>`, and its locales keep
  /// reaching the build). Throws `DEPENDENCY_FILE_UNSUPPORTED` for a file it cannot place.
  PackageEdit customizeDependency(
    String key,
    Map<String, String> dependencyFiles,
  ) {
    if (!dependencies.containsKey(key)) {
      throw StateError('DEPENDENCY_NOT_FOUND: $key');
    }
    final existing = {for (final path in files.keys) path.toLowerCase()};

    // Component names already used by this template (case-insensitively: paths must not collide).
    final taken = <String>{
      for (final id in localComponents.keys) id.toLowerCase(),
      for (final path in files.keys)
        if (_componentName(path) case final name?) name.$1.toLowerCase(),
    };
    final renamed = <String, String>{};
    String local(String name) => renamed.putIfAbsent(name, () {
      var candidate = '$key-$name';
      for (var i = 2; taken.contains(candidate.toLowerCase()); i++) {
        candidate = '$key-$name-$i';
      }
      taken.add(candidate.toLowerCase());
      return candidate;
    });

    // One folder for this copy's lib/ and styles/ files.
    var folder = key;
    for (var i = 2; existing.any((p) => _inFolder(p, folder)); i++) {
      folder = '$key-$i';
    }

    final moves = <String, String>{};
    for (final path in dependencyFiles.keys.toList()..sort()) {
      final component = _componentName(path);
      if (component != null) {
        moves[path] = 'components/${local(component.$1)}${component.$2}';
      } else if (path.startsWith('lib/') || path.startsWith('styles/')) {
        final slash = path.indexOf('/');
        moves[path] =
            '${path.substring(0, slash)}/$folder${path.substring(slash)}';
      } else if (!_carriedByPin(path)) {
        throw StateError('DEPENDENCY_FILE_UNSUPPORTED: $path');
      }
    }
    final changes = <String, String>{};
    for (final e in moves.entries) {
      if (existing.contains(e.value.toLowerCase())) {
        throw StateError('FILE_EXISTS: ${e.value}');
      }
      changes[e.value] = _rewriteImports(
        e.key,
        e.value,
        dependencyFiles[e.key]!,
        moves,
        dependencyFiles,
      );
    }
    final uses = {for (final e in renamed.entries) '$key/${e.key}': e.value};
    for (final r in routes) {
      final json = content(r.id);
      var touched = false;
      PageTree.walkContent(json, (n) {
        final to = uses[n['use']];
        if (to != null) {
          n['use'] = to;
          touched = true;
        }
      });
      if (touched) changes[r.contentPath] = encodePackageJson(json);
    }
    return PackageEdit(changes);
  }

  /// `components/<name>…` → (name, rest): the top-level folder, or the file name before its first
  /// dot (`list.module.css` → `list`, `.module.css`).
  static (String, String)? _componentName(String path) {
    if (!path.startsWith('components/')) return null;
    final rest = path.substring('components/'.length);
    final slash = rest.indexOf('/');
    final first = slash < 0 ? rest : rest.substring(0, slash);
    final dot = first.indexOf('.');
    final end = dot < 0 ? first.length : dot;
    if (end == 0) return null;
    return (rest.substring(0, end), rest.substring(end));
  }

  static bool _inFolder(String lowerPath, String folder) {
    final f = folder.toLowerCase();
    return lowerPath.startsWith('lib/$f/') ||
        lowerPath.startsWith('styles/$f/');
  }

  /// Dependency files that stay with the pin: manifest, docs, npm tooling, typings, locales.
  static bool _carriedByPin(String path) =>
      const {
        manifestPath,
        'README.md',
        'AGENTS.md',
        'package.json',
        'tsconfig.json',
      }.contains(path) ||
      path.startsWith('locales/') ||
      path.startsWith('types/');

  /// A component id derived from [base] that is still free.
  String freeComponentId(String base) {
    var clean = base
        .toLowerCase()
        .replaceAll(RegExp(r'[^a-z0-9-]+'), '-')
        .replaceAll(RegExp(r'^[^a-z]+'), '')
        .replaceAll(RegExp(r'-+$'), '');
    if (clean.isEmpty) clean = 'component';
    if (clean.length > 50) clean = clean.substring(0, 50);
    bool free(String id) =>
        !localComponents.containsKey(id) &&
        !files.containsKey('components/$id.tsx') &&
        !files.keys.any((p) => p.startsWith('components/$id/'));
    if (free(clean)) return clean;
    for (var i = 2; ; i++) {
      if (free('$clean-$i')) return '$clean-$i';
    }
  }

  /// A starter component: config with a title prop, default export reading it.
  static String starterSource(String title, {Map<String, dynamic>? props}) {
    final config = {
      'title': title,
      'props':
          props ??
          {
            'title': {'type': 'string', 'title': 'Title', 'default': title},
          },
    };
    return "import { edit } from '@feeef/template'\n"
        '\n'
        'export const config = ${jsLiteral(config)}\n'
        '\n'
        'export default function Section({ title }: { title?: string }) {\n'
        '  return (\n'
        '    <section style={{ padding: 24 }}>\n'
        "      <h2 {...edit('title')}>{title}</h2>\n"
        '    </section>\n'
        '  )\n'
        '}\n';
  }

  static String _retitle(String source, String title) {
    final m = RegExp(
      r'''(export\s+const\s+config\s*=\s*\{[\s\S]*?\btitle\s*:\s*)(['"])((?:\\.|(?!\2).)*)\2''',
    ).firstMatch(source);
    if (m == null) return source;
    return source.replaceRange(
      m.start,
      m.end,
      '${m.group(1)}${jsLiteral(title)}',
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

/// Relative imports (`from '…'`, `import '…'`, `import('…')`, CSS `@import '…'`) of a file moved
/// from [from] to [to], following the other moved files. The specifier keeps its form: whatever
/// resolution added (an extension, `/index.tsx`) stays implicit.
String _rewriteImports(
  String from,
  String to,
  String source,
  Map<String, String> moves,
  Map<String, String> sourceFiles,
) {
  const suffixes = [
    '',
    '.tsx',
    '.ts',
    '.jsx',
    '.js',
    '.json',
    '.css',
    '/index.tsx',
    '/index.ts',
    '/index.jsx',
    '/index.js',
  ];
  return source.replaceAllMapped(
    RegExp(r'''(\b(?:from|import)\s*\(?\s*)(['"])(\.{1,2}/[^'"\n]*)\2'''),
    (m) {
      final base = _normalize(_join(_dirname(from), m[3]!));
      for (final suffix in suffixes) {
        if (!sourceFiles.containsKey('$base$suffix')) continue;
        final moved = moves['$base$suffix'];
        if (moved == null || !moved.endsWith(suffix)) return m[0]!;
        var rel = _relative(
          _dirname(to),
          moved.substring(0, moved.length - suffix.length),
        );
        if (!rel.startsWith('.')) rel = './$rel';
        return '${m[1]}${m[2]}$rel${m[2]}';
      }
      return m[0]!;
    },
  );
}

String _dirname(String path) {
  final i = path.lastIndexOf('/');
  return i < 0 ? '' : path.substring(0, i);
}

String _join(String a, String b) => a.isEmpty ? b : '$a/$b';

String _normalize(String path) {
  final out = <String>[];
  for (final part in path.split('/')) {
    if (part.isEmpty || part == '.') continue;
    if (part == '..') {
      if (out.isNotEmpty) out.removeLast();
    } else {
      out.add(part);
    }
  }
  return out.join('/');
}

String _relative(String fromDir, String to) {
  final a = fromDir.isEmpty ? <String>[] : fromDir.split('/');
  final b = to.split('/');
  var i = 0;
  while (i < a.length && i < b.length - 1 && a[i] == b[i]) {
    i++;
  }
  return [for (var j = i; j < a.length; j++) '..', ...b.sublist(i)].join('/');
}

/// `<Slot name="main" title="Content" />` areas of a route or layout source, in source order,
/// read like the engine (SPEC §3): only real JSX counts (not comments or strings), the name and
/// title must be string attributes (`name={'main'}` declares nothing), the first of a repeated
/// name wins.
Map<String, String> slotsInSource(String source) {
  final scanner = _SourceScanner(source)..scan();
  final out = <String, String>{};
  for (final slot in scanner.slots) {
    if (slot != null && !out.containsKey(slot.name)) {
      out[slot.name] = slot.title ?? slot.name;
    }
  }
  return out;
}

/// The value of top-level `export const <name> = <literal>` in a source file, or null when the
/// file has no such export or its value is not a static literal (the engine's CONFIG_NOT_STATIC).
Object? staticExport(String source, String name) {
  int? at;
  _SourceScanner(source)
    ..onTopLevelWord = (start, end) {
      if (end - start != 6 || !source.startsWith('export', start)) return false;
      at = _exportedConstValue(source, end, name);
      return at != null;
    }
    ..scan();
  final start = at;
  if (start == null) return null;
  try {
    final parser = _LiteralParser(source, start);
    final value = parser.expression();
    parser.endOfDeclarator();
    return value;
  } on FormatException {
    return null;
  }
}

/// After `export` at [i]: where [name]'s initializer starts in `export const a = …, name = …`.
int? _exportedConstValue(String source, int i, String name) {
  final p = _LiteralParser(source, i);
  try {
    p.ws();
    if (!p.keyword('const')) return null;
    while (true) {
      p.ws();
      final id = p.identifier();
      if (id == null) return null;
      p.ws();
      if (p.char == _Ch.colon) {
        p.i++;
        p.skipType();
        p.ws();
      }
      if (p.char != _Ch.eq ||
          p.charAt(p.i + 1) == _Ch.eq ||
          p.charAt(p.i + 1) == _Ch.gt) {
        return null;
      }
      p.i++;
      if (id == name) return p.i;
      if (!p.skipToNextDeclarator()) return null;
    }
  } on FormatException {
    return null;
  }
}

/// A JSON-like value as a JavaScript literal (single-quoted strings, bare keys).
String jsLiteral(Object? value, [String indent = '']) {
  if (value is Map) {
    if (value.isEmpty) return '{}';
    final inner = '$indent  ';
    final entries = value.entries.map((e) {
      final key = e.key.toString();
      final k = RegExp(r'^[A-Za-z_$][\w$]*$').hasMatch(key)
          ? key
          : jsLiteral(key);
      return '$inner$k: ${jsLiteral(e.value, inner)},';
    });
    return '{\n${entries.join('\n')}\n$indent}';
  }
  if (value is List) {
    return value.isEmpty
        ? '[]'
        : '[${value.map((v) => jsLiteral(v, indent)).join(', ')}]';
  }
  if (value is String) {
    return "'${value.replaceAll(r'\', r'\\').replaceAll("'", r"\'").replaceAll('\n', r'\n')}'";
  }
  return jsonEncode(value);
}

/// UTF-16 code units the source scanners compare against.
abstract final class _Ch {
  static const tab = 0x09, lf = 0x0A, cr = 0x0D;
  static const space = 0x20, bang = 0x21, dquote = 0x22, dollar = 0x24;
  static const percent = 0x25, amp = 0x26, squote = 0x27, lparen = 0x28;
  static const rparen = 0x29, star = 0x2A, plus = 0x2B, comma = 0x2C;
  static const minus = 0x2D, dot = 0x2E, slash = 0x2F, zero = 0x30;
  static const nine = 0x39, colon = 0x3A, semicolon = 0x3B, lt = 0x3C;
  static const eq = 0x3D, gt = 0x3E, question = 0x3F, lbracket = 0x5B;
  static const backslash = 0x5C, rbracket = 0x5D, caret = 0x5E;
  static const underscore = 0x5F, backtick = 0x60, lbrace = 0x7B;
  static const pipe = 0x7C, rbrace = 0x7D;
}

bool _isLineBreak(int c) =>
    c == _Ch.lf || c == _Ch.cr || c == 0x2028 || c == 0x2029;

bool _isSpace(int c) =>
    c == _Ch.space ||
    (c >= _Ch.tab && c <= _Ch.cr) ||
    c == 0xA0 ||
    c == 0x1680 ||
    (c >= 0x2000 && c <= 0x200A) ||
    c == 0x2028 ||
    c == 0x2029 ||
    c == 0x202F ||
    c == 0x205F ||
    c == 0x3000 ||
    c == 0xFEFF;

bool _isDigit(int c) => c >= _Ch.zero && c <= _Ch.nine;

bool _isIdStart(int c) =>
    (c >= 0x61 && c <= 0x7A) ||
    (c >= 0x41 && c <= 0x5A) ||
    c == _Ch.underscore ||
    c == _Ch.dollar ||
    (c > 0x7F && !_isSpace(c));

bool _isIdPart(int c) => _isIdStart(c) || _isDigit(c);

/// Value of a hex digit, -1 for anything else.
int _digitValue(int c) {
  if (_isDigit(c)) return c - _Ch.zero;
  final lower = c | 0x20;
  return lower >= 0x61 && lower <= 0x66 ? lower - 0x61 + 10 : -1;
}

/// Index after the whitespace and comments at [i]; -1 for an unterminated block comment.
int _skipTrivia(String s, int i) {
  while (i < s.length) {
    final c = s.codeUnitAt(i);
    if (_isSpace(c)) {
      i++;
    } else if (c == _Ch.slash && i + 1 < s.length) {
      final next = s.codeUnitAt(i + 1);
      if (next == _Ch.slash) {
        while (i < s.length && !_isLineBreak(s.codeUnitAt(i))) {
          i++;
        }
      } else if (next == _Ch.star) {
        final end = s.indexOf('*/', i + 2);
        if (end < 0) return -1;
        i = end + 2;
      } else {
        break;
      }
    } else {
      break;
    }
  }
  return i;
}

/// HTML entities in a JSX attribute string, as Babel decodes them.
String _decodeEntities(String text) {
  if (!text.contains('&')) return text;
  return text.replaceAllMapped(
    RegExp(r'&(?:#(\d+)|#[xX]([0-9a-fA-F]+)|(amp|lt|gt|quot|apos|nbsp));'),
    (m) {
      final named = m[3];
      if (named != null) {
        return const {
          'amp': '&',
          'lt': '<',
          'gt': '>',
          'quot': '"',
          'apos': "'",
          'nbsp': ' ',
        }[named]!;
      }
      final code = int.tryParse(m[1] ?? m[2]!, radix: m[1] != null ? 10 : 16);
      return code == null || code > 0x10FFFF
          ? m[0]!
          : String.fromCharCode(code);
    },
  );
}

/// A small JavaScript/TSX scanner. It steps over comments, strings, template literals, regular
/// expressions and JSX text the way a parser does, so searches only see real code: `<Slot>`
/// elements ([slots]) and top-level words ([onTopLevelWord]).
class _SourceScanner {
  _SourceScanner(this.s);
  final String s;
  int i = 0;

  /// `<Slot>` opening elements in source order; null when the name is not a string attribute.
  final slots = <({String name, String? title})?>[];

  /// Called for each word at brace depth 0 outside JSX; returning true stops the scan.
  bool Function(int start, int end)? onTopLevelWord;
  bool _stopped = false;

  /// Words after which an expression starts (so `<` opens JSX and `/` a regex).
  static const _expressionWords = {
    'return',
    'typeof',
    'instanceof',
    'in',
    'of',
    'new',
    'delete',
    'void',
    'throw',
    'case',
    'do',
    'else',
    'yield',
    'await',
    'default',
    'extends',
  };

  int _at(int j) => j < s.length ? s.codeUnitAt(j) : -1;

  void scan() => _js(nested: false);

  void _trivia() {
    final j = _skipTrivia(s, i);
    i = j < 0 ? s.length : j;
  }

  /// JavaScript up to the `}` that closes an expression container ([nested]) or the end.
  void _js({required bool nested}) {
    var depth = 0;
    var expression = true;
    while (!_stopped) {
      _trivia();
      if (i >= s.length) return;
      final c = s.codeUnitAt(i);
      if (c == _Ch.squote || c == _Ch.dquote) {
        _skipString(c);
        expression = false;
      } else if (c == _Ch.backtick) {
        _skipTemplate();
        expression = false;
      } else if (_isIdStart(c)) {
        final start = i++;
        while (i < s.length && _isIdPart(s.codeUnitAt(i))) {
          i++;
        }
        if (!nested &&
            depth == 0 &&
            (onTopLevelWord?.call(start, i) ?? false)) {
          _stopped = true;
          return;
        }
        expression =
            i - start <= 10 && _expressionWords.contains(s.substring(start, i));
      } else if (_isDigit(c) || (c == _Ch.dot && _isDigit(_at(i + 1)))) {
        i++;
        while (i < s.length &&
            (_isIdPart(s.codeUnitAt(i)) || s.codeUnitAt(i) == _Ch.dot)) {
          i++;
        }
        expression = false;
      } else if (c == _Ch.slash && expression && _skipRegex()) {
        expression = false;
      } else if (c == _Ch.lt && expression && _element()) {
        expression = false;
      } else if (c == _Ch.lbrace || c == _Ch.lparen || c == _Ch.lbracket) {
        depth++;
        i++;
        expression = true;
      } else if (c == _Ch.rbrace || c == _Ch.rparen || c == _Ch.rbracket) {
        i++;
        if (depth > 0) {
          depth--;
        } else if (nested && c == _Ch.rbrace) {
          return;
        }
        expression = false;
      } else {
        i++;
        expression = true;
      }
    }
  }

  void _skipString(int quote) {
    i++;
    while (i < s.length) {
      final c = s.codeUnitAt(i);
      if (c == quote) {
        i++;
        return;
      }
      // An unterminated string stops at the line end.
      if (c == _Ch.lf || c == _Ch.cr) return;
      i += c == _Ch.backslash ? 2 : 1;
    }
  }

  void _skipTemplate() {
    i++;
    while (i < s.length) {
      final c = s.codeUnitAt(i);
      if (c == _Ch.backtick) {
        i++;
        return;
      }
      if (c == _Ch.dollar && _at(i + 1) == _Ch.lbrace) {
        i += 2;
        _js(nested: true);
      } else {
        i += c == _Ch.backslash ? 2 : 1;
      }
    }
  }

  /// A regular expression literal at `/` (on one line); false when it is a division.
  bool _skipRegex() {
    var j = i + 1;
    var inClass = false;
    while (j < s.length) {
      final c = s.codeUnitAt(j);
      if (_isLineBreak(c)) return false;
      if (c == _Ch.backslash) {
        j += 2;
        continue;
      }
      if (inClass) {
        if (c == _Ch.rbracket) inClass = false;
      } else if (c == _Ch.lbracket) {
        inClass = true;
      } else if (c == _Ch.slash) {
        j++;
        while (j < s.length && _isIdPart(s.codeUnitAt(j))) {
          j++;
        }
        i = j;
        return true;
      }
      j++;
    }
    return false;
  }

  /// A JSX element or fragment at `<`. Restores the position and returns false when the text
  /// there is not one (a comparison, a type argument).
  bool _element() {
    final start = i;
    final mark = slots.length;
    if (_elementBody()) return true;
    i = start;
    slots.length = mark;
    return false;
  }

  bool _elementBody() {
    i++; // <
    if (_at(i) == _Ch.gt) {
      i++;
      return _children('');
    }
    final name = _jsxName();
    if (name == null) return false;
    final slot = name == 'Slot' ? slots.length : -1;
    if (slot >= 0) slots.add(null);
    final literals = <String, String?>{};
    while (true) {
      _trivia();
      final c = _at(i);
      if (c == _Ch.gt || c == _Ch.slash) {
        if (literals['name'] case final slotName? when slot >= 0) {
          slots[slot] = (name: slotName, title: literals['title']);
        }
        if (c == _Ch.gt) {
          i++;
          return _children(name);
        }
        if (_at(i + 1) != _Ch.gt) return false;
        i += 2;
        return true;
      }
      if (c == _Ch.lbrace) {
        i++; // {...spread}
        _js(nested: true);
        continue;
      }
      final attribute = _jsxName();
      if (attribute == null) return false;
      _trivia();
      String? literal;
      if (_at(i) == _Ch.eq) {
        i++;
        _trivia();
        final v = _at(i);
        if (v == _Ch.dquote || v == _Ch.squote) {
          final end = s.indexOf(String.fromCharCode(v), i + 1);
          if (end < 0) return false;
          literal = _decodeEntities(s.substring(i + 1, end));
          i = end + 1;
        } else if (v == _Ch.lbrace) {
          i++;
          _js(nested: true);
        } else if (v != _Ch.lt || !_element()) {
          return false;
        }
      }
      literals.putIfAbsent(attribute, () => literal);
    }
  }

  /// JSX children up to the closing tag of [name] (`''` for a fragment). Text is not code.
  bool _children(String name) {
    while (i < s.length) {
      final c = s.codeUnitAt(i);
      if (c == _Ch.lbrace) {
        i++;
        _js(nested: true);
      } else if (c == _Ch.lt) {
        final start = i++;
        _trivia();
        if (_at(i) == _Ch.slash) {
          i++;
          _trivia();
          final close = _at(i) == _Ch.gt ? '' : _jsxName();
          _trivia();
          if (close != name || _at(i) != _Ch.gt) return false;
          i++;
          return true;
        }
        i = start;
        if (!_element()) return false;
      } else {
        i++;
      }
    }
    return false;
  }

  /// A JSX tag or attribute name (`Slot`, `data-x`, `xlink:href`, `UI.Card`).
  String? _jsxName() {
    if (!_isIdStart(_at(i))) return null;
    final start = i++;
    while (i < s.length) {
      final c = s.codeUnitAt(i);
      if (!_isIdPart(c) && c != _Ch.minus && c != _Ch.colon && c != _Ch.dot) {
        break;
      }
      i++;
    }
    return s.substring(start, i);
  }
}

/// Parser for the static literals the engine reads at build time (`config`, `metadata`): the
/// subset `@feeef/engine` `literal()` accepts — objects with identifier or string keys, arrays,
/// strings and template literals without `${}` (every escape), numbers (decimal, hex, octal,
/// binary, separators, a leading `-`), booleans, null, parentheses, comments, trailing commas and
/// TypeScript `as` / `satisfies` / `!`. Anything dynamic, `+1`, numeric or computed keys, holes,
/// spreads and non-finite numbers throw [FormatException].
class _LiteralParser {
  _LiteralParser(this.s, this.i);
  final String s;
  int i;

  Never _fail() => throw const FormatException('not a static literal');

  int get char => i < s.length ? s.codeUnitAt(i) : -1;
  int charAt(int j) => j < s.length ? s.codeUnitAt(j) : -1;

  /// Skip whitespace and comments; true when a line break was crossed.
  bool ws() {
    final start = i;
    final end = _skipTrivia(s, i);
    if (end < 0) _fail();
    i = end;
    for (var j = start; j < end; j++) {
      if (_isLineBreak(s.codeUnitAt(j))) return true;
    }
    return false;
  }

  bool keyword(String word) {
    if (!s.startsWith(word, i) || _isIdPart(charAt(i + word.length))) {
      return false;
    }
    i += word.length;
    return true;
  }

  String? identifier() {
    if (!_isIdStart(char)) return null;
    final start = i++;
    while (_isIdPart(char)) {
      i++;
    }
    return s.substring(start, i);
  }

  /// One literal with its TypeScript wrappers.
  Object? expression() {
    ws();
    final value = _primary();
    _postfix();
    return value;
  }

  /// What may follow an exported literal: the end, `;`, the next declarator, or a statement on
  /// the next line. Anything else (`|| x`, `.foo`, a call) makes the value dynamic.
  void endOfDeclarator() {
    final lineBreak = ws();
    final c = char;
    if (c < 0 || c == _Ch.semicolon || c == _Ch.comma) return;
    if (lineBreak && !_continuesExpression()) return;
    _fail();
  }

  /// Whether the token at [i], after a line break, continues the expression before it (so no
  /// semicolon is inserted).
  bool _continuesExpression() {
    final c = char;
    if (const [
      _Ch.lparen,
      _Ch.lbracket,
      _Ch.dot,
      _Ch.backtick,
      _Ch.plus,
      _Ch.minus,
      _Ch.star,
      _Ch.slash,
      _Ch.percent,
      _Ch.amp,
      _Ch.pipe,
      _Ch.caret,
      _Ch.lt,
      _Ch.gt,
      _Ch.eq,
      _Ch.question,
      _Ch.comma,
    ].contains(c)) {
      return true;
    }
    if (c == _Ch.bang && charAt(i + 1) == _Ch.eq) return true;
    final save = i;
    final word = keyword('as') || keyword('satisfies');
    i = save;
    return word;
  }

  /// Skip an initializer that is not the export being read (any expression) up to the `,` before
  /// the next declarator; false when the statement ends first.
  bool skipToNextDeclarator() {
    final closers = <int>[];
    while (true) {
      final c = char;
      if (c < 0) return false;
      if (c == _Ch.slash &&
              (charAt(i + 1) == _Ch.slash || charAt(i + 1) == _Ch.star) ||
          _isSpace(c)) {
        if (ws() && closers.isEmpty && !_continuesExpression()) return false;
      } else if (c == _Ch.squote || c == _Ch.dquote) {
        _string();
      } else if (c == _Ch.backtick) {
        _skipTemplateType();
      } else if (c == _Ch.lparen || c == _Ch.lbracket || c == _Ch.lbrace) {
        closers.add(switch (c) {
          _Ch.lparen => _Ch.rparen,
          _Ch.lbracket => _Ch.rbracket,
          _ => _Ch.rbrace,
        });
        i++;
      } else if (c == _Ch.rparen || c == _Ch.rbracket || c == _Ch.rbrace) {
        if (closers.isEmpty || closers.removeLast() != c) _fail();
        i++;
      } else if (closers.isEmpty && c == _Ch.comma) {
        i++;
        return true;
      } else if (closers.isEmpty && c == _Ch.semicolon) {
        return false;
      } else {
        i++;
      }
    }
  }

  Object? _primary() {
    final c = char;
    if (c == _Ch.lbrace) return _object();
    if (c == _Ch.lbracket) return _array();
    if (c == _Ch.squote || c == _Ch.dquote) return _string();
    if (c == _Ch.backtick) return _template();
    if (c == _Ch.lparen) {
      i++;
      final value = expression();
      ws();
      if (char != _Ch.rparen) _fail();
      i++;
      return value;
    }
    if (c == _Ch.minus) {
      i++;
      return _negative();
    }
    if (_numberAhead()) return _number();
    if (keyword('true')) return true;
    if (keyword('false')) return false;
    if (keyword('null')) return null;
    _fail();
  }

  /// `!`, `as T`, `satisfies T` on the same line (TypeScript reads none after a line break).
  void _postfix() {
    while (true) {
      final save = i;
      if (!ws()) {
        if (char == _Ch.bang && charAt(i + 1) != _Ch.eq) {
          i++;
          continue;
        }
        if (keyword('as') || keyword('satisfies')) {
          skipType();
          continue;
        }
      }
      i = save;
      return;
    }
  }

  bool _numberAhead() =>
      _isDigit(char) || (char == _Ch.dot && _isDigit(charAt(i + 1)));

  /// `-1`, `- 1`, `-(1)`: the engine negates numeric literals only.
  num _negative() {
    ws();
    var parens = 0;
    while (char == _Ch.lparen) {
      i++;
      parens++;
      ws();
    }
    if (!_numberAhead()) _fail();
    final value = _number();
    for (var k = 0; k < parens; k++) {
      ws();
      if (char != _Ch.rparen) _fail();
      i++;
    }
    final save = i;
    if (!ws() && char == _Ch.bang && charAt(i + 1) != _Ch.eq) {
      _fail(); // `-(1)!` negates a non-null expression, not a literal
    }
    i = save;
    return _whole(-value);
  }

  static final _decimal = RegExp(
    r'(?:(?:0|[1-9](?:_?[0-9])*)(?:\.(?:[0-9](?:_?[0-9])*)?)?|\.[0-9](?:_?[0-9])*)(?:[eE][+-]?[0-9](?:_?[0-9])*)?',
  );

  num _number() {
    final num value;
    final marker = charAt(i + 1) | 0x20;
    if (char == _Ch.zero &&
        (marker == 0x78 || marker == 0x6F || marker == 0x62)) {
      final radix = marker == 0x78
          ? 16
          : marker == 0x6F
          ? 8
          : 2;
      i += 2;
      final start = i;
      while (true) {
        final d = _digitValue(char);
        if (d >= 0 && d < radix) {
          i++;
        } else if (char == _Ch.underscore && i > start) {
          final next = _digitValue(charAt(i + 1));
          if (next < 0 || next >= radix) break;
          i++;
        } else {
          break;
        }
      }
      if (i == start) _fail();
      final digits = s.substring(start, i).replaceAll('_', '');
      value = BigInt.parse(digits, radix: radix).toDouble();
    } else {
      final m = _decimal.matchAsPrefix(s, i);
      if (m == null || m.end == i) _fail();
      i = m.end;
      // A double, as in JavaScript (integers above 2^53 round).
      value = double.parse(m[0]!.replaceAll('_', ''));
    }
    if (_isIdPart(char)) _fail(); // 1n, 08, 1px
    if (!value.isFinite) _fail();
    return _whole(value);
  }

  /// JavaScript has one number type: integral values read as `int`, as JSON does.
  static num _whole(num v) =>
      v is double && v == v.truncateToDouble() && v.abs() <= 9007199254740992
      ? v.toInt()
      : v;

  String _string() {
    final quote = s.codeUnitAt(i++);
    final buffer = StringBuffer();
    while (true) {
      final c = char;
      if (c < 0 || c == _Ch.lf || c == _Ch.cr) _fail();
      i++;
      if (c == quote) return buffer.toString();
      if (c == _Ch.backslash) {
        _escape(buffer);
      } else {
        buffer.writeCharCode(c);
      }
    }
  }

  String _template() {
    i++;
    final buffer = StringBuffer();
    while (true) {
      final c = char;
      if (c < 0) _fail();
      i++;
      if (c == _Ch.backtick) return buffer.toString();
      if (c == _Ch.dollar && char == _Ch.lbrace) _fail(); // `${…}` is dynamic
      if (c == _Ch.backslash) {
        _escape(buffer);
      } else if (c == _Ch.cr) {
        if (char == _Ch.lf) i++;
        buffer.write('\n');
      } else {
        buffer.writeCharCode(c);
      }
    }
  }

  /// The escape after a backslash (strict mode: no octal escapes, no `\8` / `\9`).
  void _escape(StringBuffer buffer) {
    final c = char;
    if (c < 0) _fail();
    i++;
    switch (c) {
      case 0x6E:
        buffer.write('\n');
      case 0x74:
        buffer.write('\t');
      case 0x72:
        buffer.write('\r');
      case 0x62:
        buffer.write('\b');
      case 0x66:
        buffer.write('\f');
      case 0x76:
        buffer.write('\v');
      case _Ch.zero:
        if (_isDigit(char)) _fail();
        buffer.writeCharCode(0);
      case 0x78:
        buffer.writeCharCode(_hex(2));
      case 0x75:
        if (char == _Ch.lbrace) {
          i++;
          final start = i;
          while (_digitValue(char) >= 0) {
            i++;
          }
          if (i == start || char != _Ch.rbrace) _fail();
          final code = int.tryParse(s.substring(start, i), radix: 16);
          if (code == null || code > 0x10FFFF) _fail();
          i++;
          buffer.writeCharCode(code);
        } else {
          buffer.writeCharCode(_hex(4));
        }
      case _Ch.cr:
        if (char == _Ch.lf) i++; // line continuation
      case _Ch.lf || 0x2028 || 0x2029:
        break; // line continuation
      default:
        if (_isDigit(c)) _fail();
        buffer.writeCharCode(c);
    }
  }

  int _hex(int count) {
    var value = 0;
    for (var k = 0; k < count; k++) {
      final d = _digitValue(char);
      if (d < 0) _fail();
      value = value * 16 + d;
      i++;
    }
    return value;
  }

  Map<String, dynamic> _object() {
    i++;
    final out = <String, dynamic>{};
    while (true) {
      ws();
      if (char == _Ch.rbrace) {
        i++;
        return out;
      }
      final key = char == _Ch.squote || char == _Ch.dquote
          ? _string()
          : identifier() ?? _fail();
      if (key == '__proto__') _fail();
      ws();
      if (char != _Ch.colon) _fail();
      i++;
      out[key] = expression();
      ws();
      if (char == _Ch.comma) {
        i++;
      } else if (char == _Ch.rbrace) {
        i++;
        return out;
      } else {
        _fail();
      }
    }
  }

  List<dynamic> _array() {
    i++;
    final out = <dynamic>[];
    while (true) {
      ws();
      if (char == _Ch.rbracket) {
        i++;
        return out;
      }
      if (char == _Ch.comma) _fail(); // hole
      out.add(expression());
      ws();
      if (char == _Ch.comma) {
        i++;
      } else if (char == _Ch.rbracket) {
        i++;
        return out;
      } else {
        _fail();
      }
    }
  }

  /// Skip a TypeScript type (after `:`, `as`, `satisfies`): names with type arguments, literal
  /// types, `( )`, `[ ]`, `{ }` groups, `keyof` / `typeof` / `readonly`, unions, intersections and
  /// function types.
  void skipType() {
    while (true) {
      ws();
      if (keyword('keyof') ||
          keyword('typeof') ||
          keyword('readonly') ||
          keyword('unique') ||
          keyword('infer') ||
          keyword('new') ||
          keyword('asserts') ||
          keyword('abstract')) {
        continue;
      }
      final c = char;
      if (c == _Ch.pipe || c == _Ch.amp) {
        i++;
        continue;
      }
      if (c == _Ch.lt) {
        _group(); // type parameters of a function type
        continue;
      }
      if (_isIdStart(c)) {
        identifier();
      } else if (c == _Ch.squote || c == _Ch.dquote) {
        _string();
      } else if (c == _Ch.backtick) {
        _skipTemplateType();
      } else if (c == _Ch.minus) {
        i++;
        ws();
        _number();
      } else if (_numberAhead()) {
        _number();
      } else if (c == _Ch.lparen || c == _Ch.lbracket || c == _Ch.lbrace) {
        _group();
      } else {
        _fail();
      }
      // T<…>, T[…], T.U on the same line.
      while (true) {
        final save = i;
        if (!ws()) {
          if (char == _Ch.lt || char == _Ch.lbracket) {
            _group();
            continue;
          }
          if (char == _Ch.dot && _isIdStart(charAt(i + 1))) {
            i++;
            identifier();
            continue;
          }
        }
        i = save;
        break;
      }
      final save = i;
      ws();
      if (char == _Ch.pipe || char == _Ch.amp) {
        i++;
        continue;
      }
      if (char == _Ch.eq && charAt(i + 1) == _Ch.gt) {
        i += 2;
        continue;
      }
      i = save;
      return;
    }
  }

  /// A balanced `( )`, `[ ]`, `{ }` or `< >` group at its opener.
  void _group() {
    final closers = <int>[];
    while (true) {
      final c = char;
      if (c < 0) _fail();
      if (c == _Ch.slash &&
          (charAt(i + 1) == _Ch.slash || charAt(i + 1) == _Ch.star)) {
        ws();
      } else if (c == _Ch.squote || c == _Ch.dquote) {
        _string();
      } else if (c == _Ch.backtick) {
        _skipTemplateType();
      } else if (c == _Ch.eq && charAt(i + 1) == _Ch.gt) {
        i += 2;
      } else if (c == _Ch.lparen ||
          c == _Ch.lbracket ||
          c == _Ch.lbrace ||
          c == _Ch.lt) {
        closers.add(switch (c) {
          _Ch.lparen => _Ch.rparen,
          _Ch.lbracket => _Ch.rbracket,
          _Ch.lbrace => _Ch.rbrace,
          _ => _Ch.gt,
        });
        i++;
      } else if (c == _Ch.rparen ||
          c == _Ch.rbracket ||
          c == _Ch.rbrace ||
          c == _Ch.gt) {
        if (closers.isEmpty || closers.removeLast() != c) _fail();
        i++;
        if (closers.isEmpty) return;
      } else {
        i++;
      }
    }
  }

  /// A template literal type (`` `id-${string}` ``).
  void _skipTemplateType() {
    i++;
    while (true) {
      final c = char;
      if (c < 0) _fail();
      if (c == _Ch.backtick) {
        i++;
        return;
      }
      if (c == _Ch.dollar && charAt(i + 1) == _Ch.lbrace) {
        i++;
        _group();
      } else {
        i += c == _Ch.backslash ? 2 : 1;
      }
    }
  }
}

/// `artifact.code.components` of a compiled artifact.
Map<String, dynamic> artifactComponents(Map<String, dynamic> artifact) =>
    _map(_map(artifact['code'])['components']);

/// `<Slot>` areas of an artifact route (`store-page` for merchant store pages).
Map<String, String> artifactRouteSlots(
  Map<String, dynamic> artifact,
  String pageId,
) => _slotTitles(_map(_map(_map(artifact['code'])['routes'])[pageId])['slots']);

/// Catalog of an installed artifact (`artifact.code.components`), for editing store pages.
Map<String, ComponentInfo> catalogFromArtifactComponents(
  Map<String, dynamic> components,
) => {
  for (final b in coreBlocks) b.use: ComponentInfo.fromCore(b),
  for (final e in components.entries)
    if (!e.key.startsWith('core/'))
      e.key: ComponentInfo.fromArtifact(e.key, _map(e.value)),
};

/// Components of a pinned dependency [key], from its version's artifact: `key/component` → info.
Map<String, ComponentInfo> dependencyCatalog(
  String key,
  Map<String, dynamic> artifactComponents,
) => {
  for (final e in catalogFromArtifactComponents(artifactComponents).entries)
    if (!e.value.isCore && !e.key.contains('/'))
      '$key/${e.key}': e.value.renamed('$key/${e.key}'),
};

Map<String, dynamic> _map(Object? value) => value is Map<String, dynamic>
    ? value
    : value is Map
    ? value.map((k, v) => MapEntry(k.toString(), v))
    : <String, dynamic>{};

Object? _deepCopy(Object? value) {
  if (value is Map) {
    return <String, dynamic>{
      for (final e in value.entries) e.key.toString(): _deepCopy(e.value),
    };
  }
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
