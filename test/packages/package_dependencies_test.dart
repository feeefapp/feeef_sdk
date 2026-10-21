import 'dart:convert';

import 'package:feeef/feeef.dart';
import 'package:test/test.dart';

Map<String, String> template() => {
  'package.json': encodePackageJson({
    'kind': 'template',
    'engine': 'helium@19',
    'title': 'Shop',
    'pages': {'home': 'pages/home.json'},
    'components': {
      'hero': {'entry': 'src/hero.tsx', 'title': 'Hero'},
    },
  }),
  'pages/home.json': encodePackageJson({
    'path': '/',
    'root': {
      'id': 'page',
      'use': 'core/page',
      'slots': {
        'main': [
          {'id': 'hero-1', 'use': 'hero'},
        ],
      },
    },
  }),
  'src/hero.tsx': 'export default function Hero(){return <h1/>}',
};

final reviews = {
  'package.json': encodePackageJson({
    'kind': 'component',
    'engine': 'helium@19',
    'title': 'Reviews',
    'components': {
      'list': {'entry': 'src/list.tsx', 'title': 'Review list', 'props': {'default': {'limit': 3}}},
    },
  }),
  'src/list.tsx': 'import { stars } from "./stars";\nexport default function List(){return <ul>{stars()}</ul>}',
  'src/stars.ts': 'export const stars = () => "★";',
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
      'list': {'title': 'Review list', 'props': {'default': {'limit': 3}}},
    });
    expect(deps.keys, ['reviews/list']);
    final tree = model.page('home', deps);
    final id = tree.insert('reviews/list', tree.defaultLocation());
    files = {...files, ...model.savePage('home', tree).changes};
    final page = jsonDecode(files['pages/home.json']!) as Map;
    expect(((page['root'] as Map)['slots'] as Map)['main'].last['use'], 'reviews/list');
    expect(id, isNotEmpty);
  });

  test('customize copies the dependency source and retargets placements', () {
    var files = template();
    var model = PackageModel.parse(files);
    files = {...files, ...model.pinDependency('reviews', 'pkg_reviews', 2).changes};
    final home = jsonDecode(files['pages/home.json']!) as Map<String, dynamic>;
    (((home['root'] as Map)['slots'] as Map)['main'] as List).add({'id': 'r1', 'use': 'reviews/list'});
    files['pages/home.json'] = encodePackageJson(home);
    model = PackageModel.parse(files);

    final edit = model.customizeDependency('reviews', reviews);
    files = {...files, ...edit.changes};
    model = PackageModel.parse(files);
    expect(model.dependencies, isEmpty);
    expect(model.localComponents['reviews-list']!.entry, 'src/reviews/list.tsx');
    expect(files['src/reviews/stars.ts'], reviews['src/stars.ts']);
    expect(model.placementsOf('reviews-list'), [(pageId: 'home', nodeId: 'r1')]);
    expect(model.placementsOf('reviews/list'), isEmpty);
  });
}
