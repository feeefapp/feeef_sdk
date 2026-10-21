import 'dart:convert';

import 'package:feeef/feeef.dart';
import 'package:test/test.dart';

String enc(Object value) => encodePackageJson(value);

Map<String, String> fixture() => {
      'package.json': enc({
        'kind': 'template',
        'engine': 'helium@19',
        'title': 'Demo',
        'defaultLocale': 'en',
        'locales': ['en'],
        'pages': {'home': 'pages/home.json', 'about': 'pages/about.json'},
        'components': {
          'header': {
            'entry': 'src/header.tsx',
            'title': 'Header',
            'props': {
              'schema': {
                'type': 'object',
                'properties': {
                  'accent': {'type': 'string', 'x-ui': 'color'},
                  'style': {
                    'type': 'object',
                    'properties': {
                      'size': {'type': 'number'},
                      'bold': {'type': 'boolean'},
                    },
                  },
                },
              },
              'default': {
                'accent': 'blue',
                'style': {'size': 12, 'bold': false},
              },
            },
          },
          'frame': {
            'entry': 'src/frame.tsx',
            'slots': {
              'main': {'title': 'Content'},
            },
          },
          'footer': {'entry': 'src/footer.tsx', 'title': 'Footer'},
        },
      }),
      'settings.json': enc({
        'type': 'object',
        'properties': {
          'theme': {'type': 'string', 'enum': ['light', 'dark']},
        },
      }),
      'settings.values.json': enc({'theme': 'light'}),
      'locales/en.json': enc({}),
      'pages/home.json': enc({
        'path': '/',
        'title': 'Home',
        'root': {
          'id': 'home',
          'use': 'core/page',
          'slots': {
            'main': [
              {
                'id': 'frame-home',
                'use': 'frame',
                'slots': {
                  'main': [
                    {'id': 'header-home', 'use': 'header', 'props': {'accent': 'red'}},
                  ],
                },
              },
              {'id': 'footer-home', 'use': 'footer'},
            ],
          },
        },
      }),
      'pages/about.json': enc({
        'path': '/about',
        'root': {
          'id': 'about',
          'use': 'core/page',
          'slots': {
            'main': [
              {'id': 'header-about', 'use': 'header'},
            ],
          },
        },
      }),
      'src/header.tsx': 'export default function Header() { return <header/>; }\n',
      'src/frame.tsx': 'export default function Frame() { return <div>{props.slots.main}</div>; }\n',
      'src/footer.tsx': 'export default function Footer() { return <footer/>; }\n',
    };

List<String> mainIds(PageTree tree) => tree.root.slots['main']!.map((n) => n.id).toList();

void main() {
  late Map<String, String> files;
  late PackageModel model;

  setUp(() {
    files = fixture();
    model = PackageModel.parse(files);
  });

  PackageModel apply(PackageEdit edit) => PackageModel.parse({...files, ...edit.changes});

  group('reading', () {
    test('pages, components, catalog, placements', () {
      expect(model.pageIds, ['home', 'about']);
      expect(model.localComponents.keys, ['header', 'frame', 'footer']);
      expect(model.catalog().keys, containsAll(['core/page', 'core/order-form', 'header']));
      final tree = model.page('home');
      expect(tree.node('frame-home')!.slots['main']!.single.id, 'header-home');
      expect(model.placementsOf('header').length, 2);
    });

    test('effective props deep-merge defaults like the engine', () {
      expect(model.page('home').node('header-home')!.effectiveProps, {
        'accent': 'red',
        'style': {'size': 12, 'bold': false},
      });
    });

    test('settings and default location', () {
      expect(model.settingsValues, {'theme': 'light'});
      final at = model.page('home').defaultLocation();
      expect([at.parent, at.slot, at.index], ['home', 'main', 1]);
    });

    test('broken JSON names the file', () {
      expect(
        () => PackageModel.parse({...files, 'pages/home.json': '{'}),
        throwsA(isA<FormatException>().having((e) => e.message, 'message', startsWith('pages/home.json'))),
      );
    });
  });

  group('page tree operations', () {
    test('move keeps ids; only the page file changes', () {
      final tree = model.page('home');
      final before = tree.ids;
      tree.move('footer-home', const TreeLocation(parent: 'home', slot: 'main', index: 0));
      final edit = model.savePage('home', tree);
      expect(edit.changes.keys, ['pages/home.json']);
      final next = apply(edit).page('home');
      expect(mainIds(next), ['footer-home', 'frame-home']);
      expect(next.ids, before);
    });

    test('moving out of a module slot removes the empty slot; moving into own slot keeps it', () {
      final tree = model.page('home');
      tree.move('header-home', const TreeLocation(parent: 'home', slot: 'main', index: 0));
      expect(mainIds(tree), ['header-home', 'frame-home', 'footer-home']);
      expect((jsonDecode(tree.encode())['root']['slots']['main'][1] as Map).containsKey('slots'), isFalse);
      final again = model.page('home');
      again.move('header-home', const TreeLocation(parent: 'frame-home', slot: 'main', index: 0));
      expect(again.node('header-home'), isNotNull);
    });

    test('cannot move into self or move the root', () {
      final tree = model.page('home');
      expect(() => tree.move('frame-home', const TreeLocation(parent: 'header-home', slot: 'main', index: 0)), throwsStateError);
      expect(() => tree.move('home', const TreeLocation(parent: 'home', slot: 'main', index: 0)), throwsStateError);
    });

    test('insert local, core and layout blocks with unique ids; declared slots enforced', () {
      final tree = model.page('about');
      final id = tree.insert('header', const TreeLocation(parent: 'about', slot: 'main', index: 1));
      expect(id, 'header-1');
      final grid = tree.insert('core/grid', const TreeLocation(parent: 'about', slot: 'main', index: 2));
      tree.insert('core/order-form', TreeLocation(parent: grid, slot: 'main', index: 0));
      expect(tree.node(grid)!.slots['main']!.single.use, 'core/order-form');
      expect(() => tree.insert('footer', const TreeLocation(parent: 'header-about', slot: 'main', index: 0)), throwsStateError);
      expect(() => tree.insert('core/page', const TreeLocation(parent: 'about', slot: 'main', index: 0)), throwsStateError);
      expect(() => tree.insert('missing', const TreeLocation(parent: 'about', slot: 'main', index: 0)), throwsStateError);
    });

    test('duplicate copies subtree with fresh ids; remove deletes it', () {
      final tree = model.page('home');
      final copy = tree.duplicate('frame-home');
      expect(mainIds(tree)[1], copy);
      expect(tree.node(copy)!.slots['main']!.single.id, isNot('header-home'));
      tree.remove('frame-home');
      expect(tree.node('header-home'), isNull);
    });

    test('props overrides, hydrate rules', () {
      final tree = model.page('home');
      tree.setProps('header-home', {'accent': 'green'});
      expect(tree.node('header-home')!.props, {'accent': 'green'});
      tree.setProps('header-home', {});
      expect(tree.node('header-home')!.json.containsKey('props'), isFalse);
      expect(() => tree.setProps('home', {'a': 1}), throwsStateError);
      tree.setHydrate('header-home', 'idle');
      expect(tree.node('header-home')!.hydrate, 'idle');
      expect(() => tree.setHydrate('home', 'idle'), throwsStateError);
    });

    test('overridesFrom keeps only differences from defaults', () {
      expect(TreeNode.overridesFrom({'a': 1, 'b': {'x': 1, 'y': 2}}, {'a': 1, 'b': {'x': 1, 'y': 3}, 'c': 4}), {
        'b': {'y': 3},
        'c': 4,
      });
    });

    test('ensurePageRoot wraps a single-component root once', () {
      final tree = PageTree({'path': '/x', 'root': {'id': 'solo', 'use': 'header'}}, model.catalog());
      expect(tree.ensurePageRoot(), isTrue);
      expect(tree.root.use, 'core/page');
      expect(mainIds(tree), ['solo']);
      expect(tree.ensurePageRoot(), isFalse);
    });

    test('a no-op move re-encodes to the same bytes', () {
      final tree = model.page('about');
      tree.move('header-about', const TreeLocation(parent: 'about', slot: 'main', index: 0));
      expect(tree.encode(), files['pages/about.json']);
    });
  });

  group('package operations', () {
    test('add component declares it with a starter source', () {
      final edit = model.addComponent(id: 'offer', title: 'Offer');
      final next = apply(edit);
      expect(next.localComponents['offer']!.entry, 'src/components/offer.tsx');
      expect(next.files['src/components/offer.tsx'], contains('export default'));
      expect(() => next.addComponent(id: 'offer', title: 'x'), throwsStateError);
      expect(() => model.addComponent(id: 'Bad Id', title: 'x'), throwsFormatException);
    });

    test('fork component for one placement leaves the others alone', () {
      final edit = model.forkComponentForNode('about', 'header-about', 'header-about-page');
      final next = apply(edit);
      expect(next.page('about').node('header-about')!.use, 'header-about-page');
      expect(next.page('home').node('header-home')!.use, 'header');
      expect(next.files['src/header-about-page.tsx'], files['src/header.tsx']);
      expect(next.localComponents['header-about-page']!.propsDefault, model.localComponents['header']!.propsDefault);
    });

    test('settings and free ids', () {
      expect(apply(model.setSettings({'theme': 'dark'})).settingsValues, {'theme': 'dark'});
      expect(model.freeComponentId('Header'), 'header-2');
      expect(model.freeComponentId('Special offer!'), 'special-offer');
    });
  });

  test('store pages edit against an installed artifact catalog', () {
    final catalog = catalogFromArtifactComponents({
      'hero': {'title': 'Hero', 'props': {'default': {'title': 'Hi'}}, 'slots': {}, 'module': 'x'},
      'core/page': {'title': 'Page', 'props': {'default': {}}, 'slots': null, 'module': 'y'},
    });
    final tree = PageTree({'path': '/pages/offer', 'root': {'id': 'page', 'use': 'core/page', 'slots': {'main': []}}}, catalog);
    final id = tree.insert('hero', tree.defaultLocation());
    expect(tree.node(id)!.effectiveProps, {'title': 'Hi'});
    tree.insert('core/product', tree.defaultLocation(), props: {'productId': 'p1'});
    expect(mainIds(tree).length, 2);
  });
}
