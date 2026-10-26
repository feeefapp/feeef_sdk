import 'package:feeef/feeef.dart';
import 'package:test/test.dart';

String enc(Object value) => encodePackageJson(value);

const _landing =
    "import { Slot } from '@feeef/template'\n"
    "export const config = { title: 'Landing', description: 'Logo only' }\n"
    'export default function Landing({ children }) {\n  return <div><Slot name="top" />{children}</div>\n}\n';

Map<String, String> fixture() => {
  'feeef.json': enc({
    'kind': 'template',
    'engine': 'helium@20',
    'title': 'Demo',
    'defaultLocale': 'en',
    'locales': ['en'],
  }),
  'app/layout.tsx': "import { Slot } from '@feeef/template'\nexport default function Layout({ children }) {\n  return <><Slot name=\"header\" />{children}</>\n}\n",
  'app/layouts/landing.tsx': _landing,
  'app/page.tsx': "import { Slot } from '@feeef/template'\nexport default function Home() { return <Slot name=\"main\" /> }\n",
  'app/checkout/page.tsx': "import { Slot } from '@feeef/template'\nexport default function C() { return <Slot name=\"main\" /> }\n",
  'components/hero.tsx': 'export default function Hero() { return <h1 /> }\n',
  'content/layout.json': enc({
    'slots': {
      'header': [
        {'id': 'top', 'use': 'hero'},
      ],
    },
  }),
  'content/layouts/landing.json': enc({
    'slots': {
      'top': [
        {'id': 'hero-1', 'use': 'hero'},
      ],
    },
  }),
  'content/pages/checkout.json': enc({
    'layout': 'landing',
    'slots': {'main': <dynamic>[]},
  }),
};

void main() {
  test('named layouts are views with their own content file and config', () {
    final model = PackageModel.parse(fixture());
    expect(model.issues, isEmpty);
    expect(model.layouts.map((l) => l.id), ['@layout', '@layout:landing']);
    final landing = model.route('@layout:landing')!;
    expect(landing.isLayout, isTrue);
    expect(landing.layoutName, 'landing');
    expect(landing.contentPath, 'content/layouts/landing.json');
    expect(landing.title, 'Landing');
    expect(landing.description, 'Logo only');
    expect(landing.slots.keys, ['top']);
    expect(model.pageIds.last, '@layout:landing');
    expect(PackageModel.layoutNameOf('@layout'), 'default');
    expect(PackageModel.layoutNameOf('index'), isNull);
  });

  test('layout choices, the page layout and changing it', () {
    final model = PackageModel.parse(fixture());
    expect(model.layoutChoices.map((c) => c.id), [
      'default',
      'blank',
      'landing',
    ]);
    expect(model.layoutChoices.last.title, 'Landing');
    expect(model.pageLayout('index'), 'default');
    expect(model.pageLayout('checkout'), 'landing');
    expect(model.pageLayout('@layout'), isNull);

    final blank = model.setPageLayout('index', 'blank');
    final next = PackageModel.parse({...fixture(), ...blank.changes});
    expect(next.pageLayout('index'), 'blank');
    final back = next.setPageLayout('index', 'default');
    expect(back.changes['content/pages/index.json'], isNot(contains('layout')));
    expect(
      () => model.setPageLayout('index', 'missing'),
      throwsA(isA<StateError>()),
    );
  });

  test('ids stay unique against the layout a page renders in', () {
    final model = PackageModel.parse(fixture());
    const at = TreeLocation(parent: PageTree.rootId, slot: 'main', index: 0);
    // The landing layout already holds a node `hero-1`; the default layout does not.
    expect(model.page('checkout').insert('hero', at), 'hero-2');
    expect(model.page('index').insert('hero', at), 'hero-1');
  });

  test('PageTree keeps and sets the layout choice', () {
    final tree = PageTree({
      'layout': 'blank',
      'slots': {'main': <dynamic>[]},
    }, const {});
    expect(tree.layout, 'blank');
    expect(tree.content['layout'], 'blank');
    tree.setLayout('default');
    expect(tree.content.containsKey('layout'), isFalse);
    tree.setLayout('landing');
    expect(tree.content['layout'], 'landing');
  });

  test('layout file rules match the engine', () {
    expect(
      PackageModel.routeIssueOf('app/layouts/Landing.tsx')?.code,
      'LAYOUT_NAME',
    );
    expect(
      PackageModel.routeIssueOf('app/layouts/default.tsx')?.code,
      'LAYOUT_RESERVED',
    );
    expect(
      PackageModel.routeIssueOf('app/layouts/about/page.tsx')?.code,
      'ROUTE_RESERVED',
    );
    expect(PackageModel.routeOf('app/layouts/landing.tsx'), '@layout:landing');
  });

  test('store page layout choices come from the installed artifact', () {
    final choices = artifactLayoutChoices({
      'code': {
        'layout': {'title': 'Store'},
        'layouts': {
          'landing': {'title': 'Landing'},
          'blank': {'title': 'Plain'},
        },
      },
    });
    expect(choices.map((c) => c.id), ['default', 'blank', 'landing']);
    expect(choices.first.title, 'Store');
    expect(choices[1].title, 'Plain');
    expect(artifactLayoutChoices({'code': {}}).map((c) => c.id), [
      'default',
      'blank',
    ]);
  });
}
