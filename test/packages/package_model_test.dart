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
