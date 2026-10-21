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

/// A template or component package (SPEC §1).
class PackageModel {
  PackageModel._(this.files, this._manifest, this._routes, this._components);

  static const manifestPath = 'feeef.json';
  static const themePath = 'content/theme.json';
  static const layoutContentPath = 'content/layout.json';

  /// The layout's view id in [pageIds].
  static const layoutId = '@layout';

  final Map<String, String> files;
  final Map<String, dynamic> _manifest;
  final Map<String, RouteInfo> _routes;
  final Map<String, ComponentInfo> _components;

  /// Parse `feeef.json`, discover routes and components. Throws [FormatException] naming the file.
  factory PackageModel.parse(Map<String, String> files) {
    final manifest = _decode(files, manifestPath);
    final routes = <String, RouteInfo>{};
    final components = <String, ComponentInfo>{};
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
      final route = routeOf(path);
      if (route == null) continue;
      final text = files[path]!;
      final metadata = _map(staticExport(text, 'metadata'));
      final isLayout = route == layoutId;
      routes[route] = RouteInfo(
        id: route,
        source: path,
        contentPath: isLayout ? layoutContentPath : contentPathOf(route),
        slots: slotsInSource(text),
        title: metadata['title'] as String?,
        path: isLayout ? null : pathOf(route),
      );
    }
    return PackageModel._(
      Map.unmodifiable(files),
      manifest,
      routes,
      components,
    );
  }

  static final _componentPath = RegExp(
    r'^components/([a-z][a-z0-9-]*)(?:/index)?\.(?:tsx|ts|jsx|js)$',
  );
  static final _routePath = RegExp(r'^app/(?:(.+)/)?page\.(?:tsx|ts|jsx|js)$');

  /// Route key of an `app/` file, [layoutId] for the layout, null for other files.
  static String? routeOf(String path) {
    if (RegExp(r'^app/layout\.(?:tsx|ts|jsx|js)$').hasMatch(path)) {
      return layoutId;
    }
    if (RegExp(r'^app/not-found\.(?:tsx|ts|jsx|js)$').hasMatch(path)) {
      return 'not-found';
    }
    final m = _routePath.firstMatch(path);
    return m == null ? null : (m.group(1) ?? 'index');
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

  /// Routes then the layout.
  List<RouteInfo> get routes {
    final list = _routes.values.where((r) => !r.isLayout).toList()
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
      'pages/[slug]',
    ];
    final i = order.indexOf(id);
    return i >= 0 ? i : (id == 'not-found' ? 999 : 100);
  }

  RouteInfo? route(String id) => _routes[id];
  RouteInfo? get layout => _routes[layoutId];

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
    final others = r.isLayout
        ? _routes.values.where((v) => !v.isLayout)
        : [?layout];
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
  /// into this template — `components/<id>` → `components/<key>-<id>`, `lib/**` → `lib/<key>/**`,
  /// `styles/**` → `styles/<key>/**`, relative imports rewritten — and point every placement
  /// (`<key>/<id>`) at the local copies. The pin is removed.
  PackageEdit customizeDependency(
    String key,
    Map<String, String> dependencyFiles,
  ) {
    if (!dependencies.containsKey(key)) {
      throw StateError('DEPENDENCY_NOT_FOUND: $key');
    }
    final renamed = <String, String>{};
    final taken = {...localComponents.keys};
    String? target(String path) {
      final c = RegExp(r'^components/([a-z][a-z0-9-]*)(/.*|\.\w+)$')
          .firstMatch(path);
      if (c != null) {
        final id = c.group(1)!;
        var local = renamed['$key/$id'];
        if (local == null) {
          local = '$key-$id';
          for (var i = 2; taken.contains(local); i++) {
            local = '$key-$id-$i';
          }
          taken.add(local!);
          renamed['$key/$id'] = local;
        }
        return 'components/$local${c.group(2)}';
      }
      for (final dir in const ['lib/', 'styles/']) {
        if (path.startsWith(dir)) {
          return '$dir$key/${path.substring(dir.length)}';
        }
      }
      return null;
    }

    final moves = <String, String>{};
    for (final path in dependencyFiles.keys.toList()..sort()) {
      final to = target(path);
      if (to != null) moves[path] = to;
    }
    final changes = <String, String>{};
    for (final e in moves.entries) {
      if (files.containsKey(e.value)) {
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
    final manifest = _deepCopy(_manifest) as Map<String, dynamic>;
    (manifest['dependencies'] as Map).remove(key);
    if ((manifest['dependencies'] as Map).isEmpty) {
      manifest.remove('dependencies');
    }
    changes[manifestPath] = encodePackageJson(manifest);
    for (final r in routes) {
      final json = content(r.id);
      var touched = false;
      PageTree.walkContent(json, (n) {
        final to = renamed[n['use']];
        if (to != null) {
          n['use'] = to;
          touched = true;
        }
      });
      if (touched) changes[r.contentPath] = encodePackageJson(json);
    }
    return PackageEdit(changes);
  }

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

/// Relative imports of a file moved from [from] to [to], following the other moved files.
String _rewriteImports(
  String from,
  String to,
  String source,
  Map<String, String> moves,
  Map<String, String> sourceFiles,
) {
  return source.replaceAllMapped(
    RegExp(r'''((?:from|import)\s+)(['"])(\.{1,2}/[^'"]+)\2'''),
    (m) {
      final base = _normalize(_join(_dirname(from), m[3]!));
      String? hit;
      for (final candidate in [
        base,
        for (final ext in const ['.tsx', '.ts', '.jsx', '.js', '.json', '.css'])
          '$base$ext',
        for (final ext in const ['.tsx', '.ts', '.jsx', '.js'])
          '$base/index$ext',
      ]) {
        if (sourceFiles.containsKey(candidate)) {
          hit = candidate;
          break;
        }
      }
      final moved = hit == null ? null : moves[hit];
      if (moved == null) return m[0]!;
      final keepExtension =
          RegExp(r'\.\w+$').hasMatch(m[3]!) && !m[3]!.endsWith('/index');
      var target = moved;
      if (!keepExtension) {
        target = target.replaceFirst(RegExp(r'\.(tsx|ts|jsx|js)$'), '');
      }
      if (!keepExtension &&
          hit!.contains('/index.') &&
          !m[3]!.endsWith('index')) {
        target = target.replaceFirst(RegExp(r'/index$'), '');
      }
      var rel = _relative(_dirname(to), target);
      if (!rel.startsWith('.')) rel = './$rel';
      return '${m[1]}${m[2]}$rel${m[2]}';
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

/// `<Slot name="main" title="Content" />` areas of a route or layout source, in order.
Map<String, String> slotsInSource(String source) {
  final out = <String, String>{};
  final attr = RegExp(r'''(\w+)\s*=\s*(?:\{\s*)?(['"])((?:\\.|(?!\2).)*)\2''');
  for (final m in RegExp(r'<Slot\b([^>]*)>').allMatches(source)) {
    String? name;
    String? title;
    for (final a in attr.allMatches(m[1]!)) {
      if (a[1] == 'name') name = a[3];
      if (a[1] == 'title') title = a[3];
    }
    if (name != null && !out.containsKey(name)) out[name] = title ?? name;
  }
  return out;
}

/// The value of `export const <name> = <literal>` in a source file, or null when the file has no
/// such export or it is not a plain literal.
Object? staticExport(String source, String name) {
  final m = RegExp('export\\s+const\\s+$name\\s*(?::[^=]+)?=')
      .firstMatch(source);
  if (m == null) return null;
  try {
    final parser = _LiteralParser(source, m.end);
    return parser.value();
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

/// Tolerant parser for static JavaScript literals: objects, arrays, strings (' " `), numbers,
/// booleans, null, comments, trailing commas, `as const` / `satisfies T`.
class _LiteralParser {
  _LiteralParser(this.s, this.i);
  final String s;
  int i;

  Object? value() {
    final v = _value();
    _ws();
    return v;
  }

  Never _fail() => throw const FormatException('not a static literal');

  void _ws() {
    while (i < s.length) {
      final c = s[i];
      if (c == ' ' || c == '\n' || c == '\t' || c == '\r') {
        i++;
      } else if (s.startsWith('//', i)) {
        final end = s.indexOf('\n', i);
        i = end < 0 ? s.length : end;
      } else if (s.startsWith('/*', i)) {
        final end = s.indexOf('*/', i + 2);
        if (end < 0) _fail();
        i = end + 2;
      } else {
        break;
      }
    }
  }

  Object? _value() {
    _ws();
    if (i >= s.length) _fail();
    final c = s[i];
    Object? out;
    if (c == '{') {
      out = _object();
    } else if (c == '[') {
      out = _array();
    } else if (c == "'" || c == '"' || c == '`') {
      out = _string();
    } else if (c == '-' || c == '+' || c == '.' || _digit(c)) {
      out = _number();
    } else if (s.startsWith('true', i) && !_ident(i + 4)) {
      i += 4;
      out = true;
    } else if (s.startsWith('false', i) && !_ident(i + 5)) {
      i += 5;
      out = false;
    } else if (s.startsWith('null', i) && !_ident(i + 4)) {
      i += 4;
      out = null;
    } else {
      _fail();
    }
    _ws();
    // `as const`, `as Foo`, `satisfies Foo`.
    while (s.startsWith('as ', i) || s.startsWith('satisfies ', i)) {
      i = s.indexOf(' ', i) + 1;
      _ws();
      while (i < s.length && RegExp(r'[\w$.<>\[\]]').hasMatch(s[i])) {
        i++;
      }
      _ws();
    }
    return out;
  }

  bool _digit(String c) => c.codeUnitAt(0) >= 48 && c.codeUnitAt(0) <= 57;
  bool _ident(int at) => at < s.length && RegExp(r'[\w$]').hasMatch(s[at]);

  Map<String, dynamic> _object() {
    i++;
    final out = <String, dynamic>{};
    while (true) {
      _ws();
      if (i >= s.length) _fail();
      if (s[i] == '}') {
        i++;
        return out;
      }
      String key;
      final c = s[i];
      if (c == "'" || c == '"') {
        key = _string();
      } else {
        final start = i;
        while (_ident(i)) {
          i++;
        }
        if (start == i) _fail();
        key = s.substring(start, i);
      }
      _ws();
      if (i >= s.length || s[i] != ':') _fail();
      i++;
      out[key] = _value();
      _ws();
      if (i < s.length && s[i] == ',') {
        i++;
      } else if (i < s.length && s[i] == '}') {
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
      _ws();
      if (i >= s.length) _fail();
      if (s[i] == ']') {
        i++;
        return out;
      }
      out.add(_value());
      _ws();
      if (i < s.length && s[i] == ',') {
        i++;
      } else if (i < s.length && s[i] == ']') {
        i++;
        return out;
      } else {
        _fail();
      }
    }
  }

  String _string() {
    final quote = s[i++];
    final buffer = StringBuffer();
    while (i < s.length && s[i] != quote) {
      if (quote == '`' && s.startsWith(r'${', i)) _fail();
      if (s[i] == r'\' && i + 1 < s.length) {
        final next = s[i + 1];
        buffer.write(switch (next) {
          'n' => '\n',
          't' => '\t',
          'r' => '\r',
          _ => next,
        });
        i += 2;
      } else {
        buffer.write(s[i++]);
      }
    }
    if (i >= s.length) _fail();
    i++;
    return buffer.toString();
  }

  num _number() {
    final m = RegExp(r'[-+]?(?:\d[\d_]*)?(?:\.\d+)?(?:[eE][-+]?\d+)?')
        .matchAsPrefix(s, i);
    if (m == null || m.end == i) _fail();
    i = m.end;
    return num.parse(m[0]!.replaceAll('_', ''));
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
