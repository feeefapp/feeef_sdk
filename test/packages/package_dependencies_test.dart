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
    expect(model.dependencies, isEmpty);
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
}
