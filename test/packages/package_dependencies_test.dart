import 'dart:convert';

import 'package:feeef/feeef.dart';
import 'package:test/test.dart';

Map<String, String> template() => {
  'feeef.json': encodePackageJson({
    'kind': 'template',
    'engine': 'helium@20',
    'title': 'Shop',
  }),
  'app/page.tsx': "import { Slot } from '@feeef/template'\nexport default function Home() { return <Slot name=\"main\" /> }\n",
  'content/pages/index.json': encodePackageJson({
    'slots': {
      'main': [
        {'id': 'hero-1', 'use': 'hero'},
      ],
    },
  }),
  'components/hero.tsx': "export const config = { title: 'Hero' }\nexport default function Hero(){return <h1/>}",
};

final reviews = {
  'feeef.json': encodePackageJson({
    'kind': 'component',
    'engine': 'helium@20',
    'title': 'Reviews',
  }),
  'components/list.tsx': "import { stars } from '../lib/stars'\nimport '../styles/list.css'\nexport const config = { title: 'Review list', props: { limit: { type: 'integer', default: 3 } } }\nexport default function List(){return <ul>{stars()}</ul>}",
  'lib/stars.ts': 'export const stars = () => "★";',
  'styles/list.css': 'ul { margin: 0 }',
};

void main() {
  test('pin, place and catalog a marketplace component', () {
    var files = template();
    var model = PackageModel.parse(files);
    final key = model.dependencyKeyFor('pkg_reviews', 'reviews');
    expect(key, 'reviews');
    files = {...files, ...model.pinDependency(key, 'pkg_reviews', 2).changes};
    model = PackageModel.parse(files);
    expect(model.dependencies['reviews'], (package: 'pkg_reviews', version: 2));
    expect(model.dependencyKeyFor('pkg_reviews', 'other'), 'reviews');

    final deps = dependencyCatalog('reviews', {
      'list': {
        'title': 'Review list',
        'props': {
          'default': {'limit': 3},
        },
      },
      'core/box': {
        'title': 'Box',
        'props': {'default': {}},
      },
    });
    expect(deps.keys, ['reviews/list']);
    final tree = model.page('index', deps);
    final id = tree.insert('reviews/list', tree.defaultLocation());
    files = {...files, ...model.savePage('index', tree).changes};
    final page = jsonDecode(files['content/pages/index.json']!) as Map;
    expect((page['slots'] as Map)['main'].last['use'], 'reviews/list');
    expect(id, isNotEmpty);
  });

  test('customize copies the dependency code and retargets placements', () {
    var files = template();
    var model = PackageModel.parse(files);
    files = {
      ...files,
      ...model.pinDependency('reviews', 'pkg_reviews', 2).changes,
    };
    final home =
        jsonDecode(files['content/pages/index.json']!) as Map<String, dynamic>;
    ((home['slots'] as Map)['main'] as List).add({
      'id': 'r1',
      'use': 'reviews/list',
    });
    files['content/pages/index.json'] = encodePackageJson(home);
    model = PackageModel.parse(files);

    final edit = model.customizeDependency('reviews', reviews);
    files = {...files, ...edit.changes};
    model = PackageModel.parse(files);
    // The pin stays: store pages may still place `reviews/list`.
    expect(edit.changes.keys, isNot(contains(PackageModel.manifestPath)));
    expect(model.dependencies['reviews'], (package: 'pkg_reviews', version: 2));
    expect(
      model.localComponents['reviews-list']!.entry,
      'components/reviews-list.tsx',
    );
    expect(model.localComponents['reviews-list']!.propsDefault, {'limit': 3});
    expect(files['lib/reviews/stars.ts'], reviews['lib/stars.ts']);
    expect(files['styles/reviews/list.css'], reviews['styles/list.css']);
    expect(
      files['components/reviews-list.tsx'],
      contains("from '../lib/reviews/stars'"),
    );
    expect(
      files['components/reviews-list.tsx'],
      contains("import '../styles/reviews/list.css'"),
    );
    expect(model.placementsOf('reviews-list'), [
      (pageId: 'index', nodeId: 'r1'),
    ]);
    expect(model.placementsOf('reviews/list'), isEmpty);
  });

  test('customize moves every components/ file with its siblings', () {
    var files = template();
    files = {
      ...files,
      ...PackageModel.parse(files)
          .pinDependency('reviews', 'pkg_reviews', 2)
          .changes,
      // Differs only in case from the Hero copy's first name: paths must not collide.
      'components/Reviews-Hero.css': '.taken {}',
    };
    final dependency = {
      ...reviews,
      'README.md': '# Reviews',
      'locales/en.json': '{"reviews": {"title": "Reviews"}}',
      'components/list.tsx':
          "import './list.module.css'\nimport './Hero.css'\nimport Card from './card'\nimport { stars } from '../lib/stars'\n"
          "export const config = { title: 'Review list' }\nexport default function List(){return <ul>{stars()}<Card/></ul>}",
      'components/list.module.css': '.list {}',
      'components/Hero.css': '.hero {}',
      'components/card/index.tsx': "import { label } from './parts'\nimport '../../styles/list.css'\nexport const config = { title: 'Card' }\nexport default function Card(){return <b>{label}</b>}",
      'components/card/parts.ts': "export const label = 'card'",
    };
    final model = PackageModel.parse(files);
    final edit = model.customizeDependency('reviews', dependency);
    expect(edit.changes.keys.toSet(), {
      'components/reviews-Hero-2.css',
      'components/reviews-card/index.tsx',
      'components/reviews-card/parts.ts',
      'components/reviews-list.module.css',
      'components/reviews-list.tsx',
      'lib/reviews/stars.ts',
      'styles/reviews/list.css',
    });
    final list = edit.changes['components/reviews-list.tsx']!;
    expect(list, contains("import './reviews-list.module.css'"));
    expect(list, contains("import './reviews-Hero-2.css'"));
    expect(list, contains("import Card from './reviews-card'"));
    expect(list, contains("from '../lib/reviews/stars'"));
    final card = edit.changes['components/reviews-card/index.tsx']!;
    expect(card, contains("from './parts'"));
    expect(card, contains("import '../../styles/reviews/list.css'"));

    // A second copy gets fresh names instead of colliding with the first.
    final next = PackageModel.parse({...files, ...edit.changes});
    final again = next.customizeDependency('reviews', dependency);
    expect(
      again.changes.keys,
      containsAll([
        'components/reviews-list-2.tsx',
        'components/reviews-list-2.module.css',
        'components/reviews-card-2/index.tsx',
        'lib/reviews-2/stars.ts',
        'styles/reviews-2/list.css',
      ]),
    );
    expect(
      again.changes['components/reviews-list-2.tsx'],
      contains("from '../lib/reviews-2/stars'"),
    );

    expect(
      () => model.customizeDependency('reviews', {
        ...dependency,
        'app/page.tsx': 'export default function P() { return null }',
      }),
      throwsA(
        isA<StateError>().having(
          (e) => e.message,
          'message',
          'DEPENDENCY_FILE_UNSUPPORTED: app/page.tsx',
        ),
      ),
    );
    expect(
      () => model.customizeDependency('missing', dependency),
      throwsStateError,
    );
  });
}
