import 'dart:convert';

import 'package:feeef/feeef.dart';
import 'package:test/test.dart';

String enc(Object value) => encodePackageJson(value);

const route =
    "import { Slot } from '@feeef/template'\n"
    "export const metadata = { title: 'About us' }\n"
    'export default function About() {\n  return <main><Slot name="main" title="Content" /><Slot name=\'aside\' /></main>\n}\n';

Map<String, String> fixture() => {
  'feeef.json': enc({
    'kind': 'template',
    'engine': 'helium@20',
    'title': 'Demo',
    'defaultLocale': 'en',
    'locales': ['en'],
    'theme': {
      'mode': {
        'type': 'string',
        'enum': ['light', 'dark'],
        'default': 'light',
      },
      'rounded': {
        'type': 'integer',
        'ui': 'slider',
        'minimum': 0,
        'maximum': 100,
        'default': 100,
      },
    },
  }),
  'content/theme.json': enc({'mode': 'dark'}),
  'locales/en.json': enc({}),
  'app/layout.tsx': "import { Slot } from '@feeef/template'\nexport default function Layout({ children }) {\n  return <><Slot name=\"header\" title=\"Header\" />{children}</>\n}\n",
  'app/page.tsx': "import { Slot } from '@feeef/template'\nexport default function Home() { return <Slot name=\"main\" /> }\n",
  'app/about/page.tsx': route,
  'app/products/[slug]/page.tsx': "import { Slot } from '@feeef/template'\nexport default function P() { return <Slot name=\"main\" /> }\n",
  'app/not-found.tsx':
      'export default function NotFound() { return <p>404</p> }\n',
  'components/header.tsx': [
    "import { edit } from '@feeef/template'",
    '',
    'export const config = {',
    "  title: 'Header', // shown in the editor",
    "  icon: 'menu',",
    "  category: 'Layout',",
    '  props: {',
    "    accent: { type: 'string', ui: 'color', default: \"blue\" },",
    "    style: { type: 'object', properties: { size: { type: 'number' }, bold: { type: 'boolean' } }, default: { size: 12, bold: false } },",
    '  },',
    '} as const',
    '',
    'export default function Header({ accent }) { return <header style={{ color: accent }} /> }',
    '',
  ].join('\n'),
  'components/frame/index.tsx': "export const config = { slots: { main: { title: 'Content' } } }\nexport default function Frame({ slots }) { return <div>{slots.main}</div> }\n",
  'components/footer.tsx': "export const config = { title: `Footer` }\nexport default function Footer() { return <footer/> }\n",
  'content/layout.json': enc({
    'slots': {
      'header': [
        {'id': 'header-top', 'use': 'header'},
      ],
    },
  }),
  'content/pages/index.json': enc({
    'slots': {
      'main': [
        {
          'id': 'frame-home',
          'use': 'frame',
          'slots': {
            'main': [
              {
                'id': 'header-home',
                'use': 'header',
                'props': {'accent': 'red'},
              },
            ],
          },
        },
        {'id': 'footer-home', 'use': 'footer'},
      ],
    },
  }),
  'content/pages/about.json': enc({
    'slots': {
      'main': [
        {'id': 'header-about', 'use': 'header'},
      ],
    },
  }),
};

List<String> mainIds(PageTree tree, [String slot = 'main']) =>
    tree.root.slots[slot]!.map((n) => n.id).toList();

void main() {
  late Map<String, String> files;
  late PackageModel model;

  setUp(() {
    files = fixture();
    model = PackageModel.parse(files);
  });

  PackageModel apply(PackageEdit edit) =>
      PackageModel.parse({...files, ...edit.changes});

  group('reading', () {
    test('routes, layout, components, catalog, placements', () {
      expect(model.pageIds, [
        'index',
        'products/[slug]',
        'about',
        'not-found',
        PackageModel.layoutId,
      ]);
      final about = model.route('about')!;
      expect(about.label, 'About us');
      expect(about.path, '/about');
      expect(about.slots, {'main': 'Content', 'aside': 'aside'});
      expect(about.contentPath, 'content/pages/about.json');
      expect(model.route('products/[slug]')!.path, '/products/:slug');
      expect(model.route('products/[slug]')!.isDynamic, isTrue);
      expect(model.layout!.slots, {'header': 'Header'});
      expect(model.route('not-found')!.path, isNull);
      expect(model.localComponents.keys, ['footer', 'frame', 'header']);
      final header = model.localComponents['header']!;
      expect(header.title, 'Header');
      expect(header.icon, 'menu');
      expect(header.entry, 'components/header.tsx');
      expect(
        model.localComponents['frame']!.entry,
        'components/frame/index.tsx',
      );
      expect(model.localComponents['frame']!.slots, {'main': 'Content'});
      expect(model.localComponents['footer']!.title, 'Footer');
      expect(
        model.catalog().keys,
        containsAll(['core/box', 'core/order-form', 'header']),
      );
      final tree = model.page('index');
      expect(tree.node('frame-home')!.slots['main']!.single.id, 'header-home');
      expect(model.placementsOf('header').length, 3);
    });

    test('effective props deep-merge defaults like the engine', () {
      expect(model.page('index').node('header-home')!.effectiveProps, {
        'accent': 'red',
        'style': {'size': 12, 'bold': false},
      });
    });

    test('theme values merge defaults; default location', () {
      expect(model.themeValues, {'mode': 'dark', 'rounded': 100});
      expect(model.themeSchema!['properties'], contains('rounded'));
      final at = model.page('index').defaultLocation();
      expect([at.parent, at.slot, at.index], [PageTree.rootId, 'main', 1]);
    });

    test('views without content start empty with their declared slots', () {
      final tree = model.page('products/[slug]');
      expect(tree.root.slots.keys, ['main']);
      expect(tree.root.slots['main'], isEmpty);
      expect(tree.root.isPageRoot, isTrue);
    });

    test('broken JSON names the file', () {
      expect(
        () => PackageModel.parse({...files, 'feeef.json': '{'}),
        throwsA(
          isA<FormatException>().having(
            (e) => e.message,
            'message',
            startsWith('feeef.json'),
          ),
        ),
      );
    });

    test(
      'static literals: comments, quotes, as const; dynamic values are ignored',
      () {
        expect(
          staticExport(
            "export const config = { a: [1, -2.5, 'x', \"y\", true, null,], }",
            'config',
          ),
          {
            'a': [1, -2.5, 'x', 'y', true, null],
          },
        );
        expect(
          staticExport('export const config = { title }', 'config'),
          isNull,
        );
        expect(staticExport('const config = {}', 'config'), isNull);
      },
    );
  });

  group('static literals read like the engine', () {
    Object? config(String value) =>
        staticExport('export const config = $value\n', 'config');

    test('escapes in strings and template literals', () {
      expect(
        config(
          r"{ a: 'Caf\u00e9', b: '\x41', c: '\u{1F600}', d: 'x\'y', e: 'line\"
          '\n'
          r"cont', f: '\v\b\f\0' }",
        ),
        {
          'a': 'Caf\u00e9',
          'b': 'A',
          'c': '😀',
          'd': "x'y",
          'e': 'linecont',
          'f': '\v\b\f\u0000',
        },
      );
      expect(config('{ a: `one\ntwo \\u0041` }'), {'a': 'one\ntwo A'});
    });

    test('numbers: hex, octal, binary, separators, exponents, minus', () {
      expect(
        config(
          '{ a: 0x10, b: 0o17, c: 0b101, d: 1_000, e: 1e3, f: .5, g: 5., h: -0x10, i: - 1, j: -(2), k: 2.0 }',
        ),
        {
          'a': 16,
          'b': 15,
          'c': 5,
          'd': 1000,
          'e': 1000,
          'f': 0.5,
          'g': 5,
          'h': -16,
          'i': -1,
          'j': -2,
          'k': 2,
        },
      );
    });

    test(
      'parentheses, TypeScript wrappers, quoted keys, nesting, comments',
      () {
        expect(config("({ title: 'Paren' }) as const"), {'title': 'Paren'});
        expect(
          config(
            "{ a: 1 as number, b: [2 as const], c: 'x'!, d: 'y' as 'y' | 'z' } satisfies Record<string, unknown>",
          ),
          {
            'a': 1,
            'b': [2],
            'c': 'x',
            'd': 'y',
          },
        );
        expect(
          config(
            "{ 'quoted-key': 1, \"dq\": 2, default: 3, /* c */ e /* c */ : // c\n [[1, [2, {f: [3]}]], {g: {h: null}},], }",
          ),
          {
            'quoted-key': 1,
            'dq': 2,
            'default': 3,
            'e': [
              [
                1,
                [
                  2,
                  {
                    'f': [3],
                  },
                ],
              ],
              {
                'g': {'h': null},
              },
            ],
          },
        );
        expect(
          staticExport(
            'export const config: Record<string, unknown> = { a: 1 }',
            'config',
          ),
          {'a': 1},
        );
        expect(
          staticExport(
            "export const metadata = foo(), config = { title: 'second' }",
            'config',
          ),
          {'title': 'second'},
        );
      },
    );

    test('dynamic or invalid values are rejected', () {
      for (final value in [
        '{ a: +1 }',
        "{ 1: 'x' }",
        '{ [k]: 1 }',
        '{ ...x }',
        '{ a: [1,,2] }',
        '{ a: [...x] }',
        r'{ a: `x ${y}` }',
        '{ a: undefined }',
        '{ a: 1e999 }',
        '{ a: 10n }',
        '{ a: 08 }',
        r"{ a: '\1' }",
        '{ __proto__: 1 }',
        '{ a() { return 1 } }',
        '{ a: -(1 as number) }',
        "{ a: -'1' }",
        '{ a: (1, 2) }',
        '{ a: 1 + 2 }',
        '{ a: 1 } || {}',
        '{ a: 1 }.a',
        '{ a: 1 }\n(foo)',
      ]) {
        expect(config(value), isNull, reason: value);
      }
      expect(
        staticExport("export let config = { title: 'let' }", 'config'),
        isNull,
      );
      expect(
        staticExport(
          "function f() { export const config = { a: 1 } }",
          'config',
        ),
        isNull,
      );
    });

    test('only real top-level exports count', () {
      expect(
        staticExport(
          "// export const config = { title: 'commented' }\n"
              "const s = \"export const config = { title: 'string' }\"\n"
              "export default function A() { return <p>Don't</p> }\n"
              "export const config = { title: 'real' }\n",
          'config',
        ),
        {'title': 'real'},
      );
    });
  });

  group('slots in source read like the engine', () {
    test('comments and strings are not slots', () {
      expect(
        slotsInSource(
          '// <Slot name="old" />\n'
          'const s = \'<Slot name="fake" />\'\n'
          'const t = `<Slot name="tpl" />`\n'
          'export default function A() {\n'
          '  return <main>{/* <Slot name="aside" /> */}<Slot name="main" /></main>\n'
          '}\n',
        ),
        {'main': 'main'},
      );
    });

    test('JSX text is not code; ">" may sit inside attribute values', () {
      expect(
        slotsInSource(
          'export default function A() {\n'
          '  return <><p title="it\'s">Don\'t // miss</p>'
          '<Slot title="Deals > all" name="main" />'
          '<Slot name="a&amp;b" title=\'&quot;Hi&quot;\' /></>\n'
          '}\n',
        ),
        {'main': 'Deals > all', 'a&b': '"Hi"'},
      );
    });

    test('names must be string literals; the first repeated name wins', () {
      expect(
        slotsInSource(
          "export default function A() { return <><Slot name={'main'} /><Slot name=\"x\" title={'T'} />"
          '<Slot name="dup" title="First" /><Slot name="dup" title="Second" /><SlotX name="no" /></> }\n',
        ),
        {'x': 'x', 'dup': 'First'},
      );
    });

    test('generics, comparisons and regexes do not confuse the scan', () {
      expect(
        slotsInSource(
          'const f = <T,>(x: T) => x\n'
          'export default function A({ items }: { items: Array<string> }) {\n'
          '  const re = /[\'"<]/g\n'
          '  const half = items.length / 2\n'
          '  if (half < 3) {}\n'
          '  return <ul>{items.map((i) => <li key={i}>{i}</li>)}<Slot name="main" title="List" /></ul>\n'
          '}\n',
        ),
        {'main': 'List'},
      );
    });
  });

  group('route rules match the engine', () {
    test('invalid, reserved and dynamic free routes are not views', () {
      const rejected = {
        'app/about_us/page.tsx': 'ROUTE_SEGMENT',
        'app/FAQ/page.tsx': 'ROUTE_SEGMENT',
        'app/(shop)/page.tsx': 'ROUTE_SEGMENT',
        'app/products/sale/page.tsx': 'ROUTE_RESERVED',
        'app/categories/all/page.tsx': 'ROUTE_RESERVED',
        'app/pages/about/page.tsx': 'ROUTE_RESERVED',
        'app/p/x/page.tsx': 'ROUTE_RESERVED',
        'app/api/page.tsx': 'ROUTE_RESERVED',
        'app/sitemaps/page.tsx': 'ROUTE_RESERVED',
        'app/cart/extra/page.tsx': 'ROUTE_RESERVED',
        'app/not-found/page.tsx': 'ROUTE_RESERVED',
        'app/index/page.tsx': 'ROUTE_RESERVED',
        'app/blog/[slug]/page.tsx': 'ROUTE_DYNAMIC',
      };
      const accepted = {
        'app/contact/page.tsx': 'contact',
        'app/about/team-2/page.tsx': 'about/team-2',
        'app/products/page.tsx': 'products',
        'app/categories/[slug]/page.tsx': 'categories/[slug]',
        'app/pages/[slug]/page.tsx': 'pages/[slug]',
      };
      for (final e in rejected.entries) {
        expect(PackageModel.routeIssueOf(e.key)?.code, e.value, reason: e.key);
        expect(PackageModel.routeOf(e.key), isNull, reason: e.key);
      }
      for (final e in accepted.entries) {
        expect(PackageModel.routeIssueOf(e.key), isNull, reason: e.key);
        expect(PackageModel.routeOf(e.key), e.value, reason: e.key);
      }

      final next = PackageModel.parse({
        ...files,
        'app/about_us/page.tsx': route,
        'app/products/sale/page.tsx': route,
        'app/about/page.jsx': route,
      });
      expect(next.pageIds, model.pageIds);
      expect(next.issues.map((i) => '${i.code} ${i.path}'), [
        'ROUTE_DUPLICATE app/about/page.tsx',
        'ROUTE_SEGMENT app/about_us/page.tsx',
        'ROUTE_RESERVED app/products/sale/page.tsx',
      ]);
      expect(next.route('about')!.source, 'app/about/page.jsx');
      expect(model.issues, isEmpty);
    });

    test('the store page frame is not an editable view', () {
      final next = PackageModel.parse({
        ...files,
        'app/pages/[slug]/page.tsx': "import { Slot } from '@feeef/template'\nexport default function Frame() { return <article><Slot name=\"main\" /></article> }\n",
      });
      expect(next.pageIds, model.pageIds);
      expect(next.routes.map((r) => r.id), isNot(contains('pages/[slug]')));
      expect(next.storePageFrame!.slots, {'main': 'main'});
      expect(next.issues, isEmpty);
      // The store page editor still edits a store page's content through the frame.
      final tree = next.page(PackageModel.storePageRoute);
      tree.insert('header', tree.defaultLocation());
      expect(next.savePage(PackageModel.storePageRoute, tree).changes.keys, [
        'content/pages/pages/[slug].json',
      ]);

      final broken = PackageModel.parse({
        ...files,
        'app/pages/[slug]/page.tsx':
            'export default function Frame() { return <Slot name="body" /> }\n',
        'content/pages/pages/[slug].json': enc({
          'slots': {
            'body': [
              {'id': 'header-frame', 'use': 'header'},
            ],
          },
        }),
      });
      expect(broken.issues.map((i) => '${i.code} ${i.path}'), [
        'STORE_PAGE_SLOT app/pages/[slug]/page.tsx',
        'CONTENT_STORE_PAGE content/pages/pages/[slug].json',
      ]);
      expect(broken.placementsOf('header').length, 3);
    });
  });

  group('content operations', () {
    test('move keeps ids; only the content file changes', () {
      final tree = model.page('index');
      final before = tree.ids;
      tree.move(
        'footer-home',
        const TreeLocation(parent: PageTree.rootId, slot: 'main', index: 0),
      );
      final edit = model.savePage('index', tree);
      expect(edit.changes.keys, ['content/pages/index.json']);
      final next = apply(edit).page('index');
      expect(mainIds(next), ['footer-home', 'frame-home']);
      expect(next.ids, before);
    });

    test('inserts and moves go into empty slots', () {
      final tree = model.page('about');
      expect(tree.root.slots['aside'], isEmpty);
      tree.move(
        'header-about',
        const TreeLocation(parent: PageTree.rootId, slot: 'aside', index: 0),
      );
      expect(mainIds(tree, 'aside'), ['header-about']);
      expect(mainIds(tree, 'main'), isEmpty);
      final json = jsonDecode(tree.encode()) as Map;
      expect((json['slots'] as Map)['main'], isEmpty);
      final box = tree.insert(
        'core/box',
        const TreeLocation(parent: PageTree.rootId, slot: 'main', index: 0),
      );
      tree.insert('footer', TreeLocation(parent: box, slot: 'main', index: 0));
      expect(tree.node(box)!.slots['main']!.single.use, 'footer');
      expect(tree.locationOf('header-about')!.slot, 'aside');
    });

    test('moving out of a component slot removes the empty slot', () {
      final tree = model.page('index');
      tree.move(
        'header-home',
        const TreeLocation(parent: PageTree.rootId, slot: 'main', index: 0),
      );
      expect(mainIds(tree), ['header-home', 'frame-home', 'footer-home']);
      expect(
        (jsonDecode(tree.encode())['slots']['main'][1] as Map).containsKey(
          'slots',
        ),
        isFalse,
      );
    });

    test('cannot move into self, move the root or use undeclared slots', () {
      final tree = model.page('index');
      expect(
        () => tree.move(
          'frame-home',
          const TreeLocation(parent: 'header-home', slot: 'main', index: 0),
        ),
        throwsStateError,
      );
      expect(
        () => tree.move(
          PageTree.rootId,
          const TreeLocation(parent: PageTree.rootId, slot: 'main', index: 0),
        ),
        throwsStateError,
      );
      expect(
        () => tree.insert(
          'footer',
          const TreeLocation(
            parent: PageTree.rootId,
            slot: 'sidebar',
            index: 0,
          ),
        ),
        throwsStateError,
      );
      expect(
        () => tree.insert(
          'footer',
          const TreeLocation(parent: 'header-home', slot: 'main', index: 0),
        ),
        throwsStateError,
      );
      expect(
        () => tree.insert(
          'missing',
          const TreeLocation(parent: PageTree.rootId, slot: 'main', index: 0),
        ),
        throwsStateError,
      );
    });

    test('ids stay unique across a view and the layout', () {
      final tree = model.page('about');
      final id = tree.insert(
        'header',
        const TreeLocation(parent: PageTree.rootId, slot: 'main', index: 1),
      );
      expect(id, 'header-1');
      expect(tree.ids.contains('header-top'), isFalse);
    });

    test('destinations list root slots and nested slots', () {
      final labels = model
          .page('index')
          .destinations()
          .map((d) => '${d.parent}.${d.slot}')
          .toList();
      expect(labels, ['${PageTree.rootId}.main', 'frame-home.main']);
    });

    test('duplicate copies subtree with fresh ids; remove deletes it', () {
      final tree = model.page('index');
      final copy = tree.duplicate('frame-home');
      expect(mainIds(tree)[1], copy);
      expect(tree.node(copy)!.slots['main']!.single.id, isNot('header-home'));
      tree.remove('frame-home');
      expect(tree.node('header-home'), isNull);
    });

    test('props overrides, hydrate rules', () {
      final tree = model.page('index');
      tree.setProps('header-home', {'accent': 'green'});
      expect(tree.node('header-home')!.props, {'accent': 'green'});
      tree.setProps('header-home', {});
      expect(tree.node('header-home')!.json.containsKey('props'), isFalse);
      expect(() => tree.setProps(PageTree.rootId, {'a': 1}), throwsStateError);
      tree.setHydrate('header-home', 'idle');
      expect(tree.node('header-home')!.hydrate, 'idle');
      final box = tree.insert('core/box', tree.defaultLocation());
      expect(() => tree.setHydrate(box, 'idle'), throwsStateError);
    });

    test('overridesFrom keeps only differences from defaults', () {
      expect(
        TreeNode.overridesFrom(
          {
            'a': 1,
            'b': {'x': 1, 'y': 2},
          },
          {
            'a': 1,
            'b': {'x': 1, 'y': 3},
            'c': 4,
          },
        ),
        {
          'b': {'y': 3},
          'c': 4,
        },
      );
    });

    test('a no-op move re-encodes to the same bytes', () {
      final tree = model.page('about');
      tree.move(
        'header-about',
        const TreeLocation(parent: PageTree.rootId, slot: 'main', index: 0),
      );
      final json = jsonDecode(tree.encode()) as Map;
      expect(
        (json['slots'] as Map)['main'],
        (jsonDecode(files['content/pages/about.json']!)
            as Map)['slots']['main'],
      );
    });
  });

  group('package operations', () {
    test('add component writes a starter source the model reads back', () {
      final edit = model.addComponent(id: 'offer', title: 'Offer');
      final next = apply(edit);
      expect(edit.path, 'components/offer.tsx');
      expect(next.localComponents['offer']!.title, 'Offer');
      expect(next.localComponents['offer']!.propsDefault, {'title': 'Offer'});
      expect(next.files['components/offer.tsx'], contains('export default'));
      expect(
        () => next.addComponent(id: 'offer', title: 'x'),
        throwsStateError,
      );
      expect(
        () => model.addComponent(id: 'Bad Id', title: 'x'),
        throwsFormatException,
      );
    });

    test('fork component for one placement leaves the others alone', () {
      final edit = model.forkComponentForNode(
        'about',
        'header-about',
        'header-about-page',
      );
      final next = apply(edit);
      expect(next.page('about').node('header-about')!.use, 'header-about-page');
      expect(next.page('index').node('header-home')!.use, 'header');
      expect(
        next.localComponents['header-about-page']!.title,
        'Header (About us)',
      );
      expect(
        next.localComponents['header-about-page']!.propsDefault,
        model.localComponents['header']!.propsDefault,
      );
      final folder = apply(
        model.forkComponentForNode('index', 'frame-home', 'frame-two'),
      );
      expect(
        folder.localComponents['frame-two']!.entry,
        'components/frame-two/index.tsx',
      );
    });

    test('theme and free ids', () {
      expect(apply(model.setTheme({'mode': 'light'})).themeValues, {
        'mode': 'light',
        'rounded': 100,
      });
      expect(model.freeComponentId('Header'), 'header-2');
      expect(model.freeComponentId('Frame'), 'frame-2');
      expect(model.freeComponentId('Special offer!'), 'special-offer');
    });
  });

  test('store page content edits against an installed artifact catalog', () {
    final artifact = {
      'code': {
        'components': {
          'hero': {
            'title': 'Hero',
            'props': {
              'default': {'title': 'Hi'},
            },
            'slots': {},
            'module': 'x',
          },
          'core/box': {
            'title': 'Box',
            'props': {'default': {}},
            'slots': {
              'main': {'title': 'Content'},
            },
            'module': 'y',
          },
        },
        'routes': {
          'store-page': {
            'slots': {
              'main': {'title': 'Content'},
            },
          },
        },
      },
    };
    final catalog = catalogFromArtifactComponents(artifactComponents(artifact));
    final tree = PageTree(
      {
        'slots': {'main': []},
      },
      catalog,
      slots: artifactRouteSlots(artifact, 'store-page'),
    );
    final id = tree.insert('hero', tree.defaultLocation());
    expect(tree.node(id)!.effectiveProps, {'title': 'Hi'});
    tree.insert(
      'core/product',
      tree.defaultLocation(),
      props: {'productId': 'p1'},
    );
    expect(mainIds(tree).length, 2);
    expect(
      jsonDecode(tree.encode())['slots']['main'][1]['use'],
      'core/product',
    );
  });
}
