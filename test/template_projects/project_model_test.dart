import 'dart:convert';

import 'package:feeef/feeef.dart';
import 'package:test/test.dart';

String enc(Object value) => TemplateProjectModel.encodeJson(value);

Map<String, String> fixture() => {
  'project.json': enc({
    'formatVersion': 1,
    'runtime': 'helium',
    'runtimeFormatVersion': 2,
    'scopeApi': 19,
    'defaultLocale': 'en',
    'locales': ['en'],
    'pages': {'home': 'pages/home.json', 'about': 'pages/about.json'},
    'modules': {
      'header': {
        'entry': 'src/header.tsx',
        'title': 'Header',
        'propsSchema': {
          'type': 'object',
          'properties': {
            'accent': {'type': 'string'},
            'style': {
              'type': 'object',
              'properties': {
                'size': {'type': 'number'},
                'bold': {'type': 'boolean'},
              },
            },
          },
        },
        'propsDefault': {
          'accent': 'blue',
          'style': {'size': 12, 'bold': false},
        },
      },
      'frame': {
        'entry': 'src/frame.tsx',
        'slotsSchema': {
          'main': {'title': 'Content'},
        },
      },
      'footer': {'entry': 'src/footer.tsx', 'title': 'Footer'},
    },
    'dependencies': {},
  }),
  'props.json': enc({'theme': 'light'}),
  'schema.json': enc({
    'type': 'object',
    'properties': {
      'theme': {
        'type': 'string',
        'enum': ['light', 'dark'],
      },
    },
  }),
  'pages/home.json': enc({
    'path': '/',
    'title': 'Home',
    'root': {
      'instanceId': 'home',
      'builtin': {'id': 'page', 'version': 1},
      'slots': {
        'main': [
          {
            'instanceId': 'frame-home',
            'moduleId': 'frame',
            'slots': {
              'main': [
                {
                  'instanceId': 'header-home',
                  'moduleId': 'header',
                  'props': {'accent': 'red'},
                },
              ],
            },
          },
          {'instanceId': 'footer-home', 'moduleId': 'footer'},
        ],
      },
    },
  }),
  'pages/about.json': enc({
    'path': '/about',
    'root': {
      'instanceId': 'about',
      'builtin': {'id': 'page', 'version': 1},
      'slots': {
        'main': [
          {'instanceId': 'header-about', 'moduleId': 'header'},
        ],
      },
    },
  }),
  'src/header.tsx': 'export default function Header() { return <header/>; }\n',
  'src/frame.tsx': 'export default function Frame() { return <div/>; }\n',
  'src/footer.tsx': 'export default function Footer() { return <footer/>; }\n',
};

TemplateProjectModel apply(Map<String, String> files, ProjectEdit edit) =>
    TemplateProjectModel.parse({...files, ...edit.changes});

List<String> mainIds(TemplateProjectModel m, String page) =>
    m.root(page).slots['main']!.map((n) => n.instanceId).toList();

void main() {
  late Map<String, String> files;
  late TemplateProjectModel model;

  setUp(() {
    files = fixture();
    model = TemplateProjectModel.parse(files);
  });

  group('reading', () {
    test('pages, modules, nested tree, placements', () {
      expect(model.pageIds, ['home', 'about']);
      expect(model.modules.keys, ['header', 'frame', 'footer']);
      final frame = model.node('home', 'frame-home')!;
      expect(frame.slots['main']!.single.instanceId, 'header-home');
      expect(model.placementsOf('header').length, 2);
      expect(model.instanceIds, {
        'home',
        'frame-home',
        'header-home',
        'footer-home',
        'about',
        'header-about',
      });
    });

    test('effective props deep-merge propsDefault like the compiler', () {
      expect(model.node('home', 'header-home')!.effectiveProps, {
        'accent': 'red',
        'style': {'size': 12, 'bold': false},
      });
    });

    test('template settings come from schema.json and props.json', () {
      expect(model.templateProps, {'theme': 'light'});
      expect(model.templatePropsSchema!['properties'], contains('theme'));
    });

    test('default location is before a trailing footer', () {
      final at = model.defaultLocation('home');
      expect([at.parent, at.slot, at.index], ['home', 'main', 1]);
    });

    test('broken JSON names the file', () {
      expect(
        () => TemplateProjectModel.parse({...files, 'pages/home.json': '{'}),
        throwsA(
          isA<FormatException>().having(
            (e) => e.message,
            'message',
            startsWith('pages/home.json'),
          ),
        ),
      );
    });
  });

  group('operations', () {
    test('move keeps the instanceId and only touches the page file', () {
      final edit = model.moveNode(
        'home',
        'footer-home',
        const ProjectLocation(parent: 'home', slot: 'main', index: 0),
      );
      expect(edit.changes.keys, ['pages/home.json']);
      final next = apply(files, edit);
      expect(mainIds(next, 'home'), ['footer-home', 'frame-home']);
      expect(next.instanceIds, model.instanceIds);
    });

    test('move down within the same list lands at the requested index', () {
      final edit = model.moveNode(
        'home',
        'frame-home',
        const ProjectLocation(parent: 'home', slot: 'main', index: 2),
      );
      expect(mainIds(apply(files, edit), 'home'), [
        'footer-home',
        'frame-home',
      ]);
    });

    test('move out of a module slot removes the empty slot', () {
      final edit = model.moveNode(
        'home',
        'header-home',
        const ProjectLocation(parent: 'home', slot: 'main', index: 0),
      );
      final next = apply(files, edit);
      expect(mainIds(next, 'home'), [
        'header-home',
        'frame-home',
        'footer-home',
      ]);
      final page = jsonDecode(next.files['pages/home.json']!) as Map;
      final frame = ((page['root'] as Map)['slots'] as Map)['main'][1] as Map;
      expect(frame.containsKey('slots'), isFalse);
    });

    test('moving the only child back into its own slot keeps it', () {
      final edit = model.moveNode(
        'home',
        'header-home',
        const ProjectLocation(parent: 'frame-home', slot: 'main', index: 0),
      );
      expect(apply(files, edit).node('home', 'header-home'), isNotNull);
    });

    test('cannot move a node into itself or the root', () {
      expect(
        () => model.moveNode(
          'home',
          'frame-home',
          const ProjectLocation(parent: 'header-home', slot: 'main', index: 0),
        ),
        throwsStateError,
      );
      expect(
        () => model.moveNode(
          'home',
          'home',
          const ProjectLocation(parent: 'home', slot: 'main', index: 0),
        ),
        throwsStateError,
      );
    });

    test('insert module gets a unique id and no props (defaults apply)', () {
      final edit = model.insertModule(
        'about',
        'header',
        const ProjectLocation(parent: 'about', slot: 'main', index: 1),
      );
      expect(edit.instanceId, 'header-1');
      final next = apply(files, edit);
      expect(mainIds(next, 'about'), ['header-about', 'header-1']);
      expect(
        next.node('about', 'header-1')!.json.containsKey('props'),
        isFalse,
      );
      expect(next.node('about', 'header-1')!.effectiveProps['accent'], 'blue');
    });

    test('insert respects declared module slots', () {
      expect(
        () => model.insertModule(
          'home',
          'footer',
          const ProjectLocation(parent: 'header-home', slot: 'main', index: 0),
        ),
        throwsA(
          isA<StateError>().having(
            (e) => e.message,
            'message',
            contains('SLOT_UNDECLARED'),
          ),
        ),
      );
    });

    test('layout builtins hold children, not slots', () {
      final edit = model.insertBuiltin(
        'home',
        'stack',
        const ProjectLocation(parent: 'home', slot: 'main', index: 0),
      );
      var next = apply(files, edit);
      final stackId = edit.instanceId!;
      expect(next.node('home', stackId)!.isLayout, isTrue);
      expect(
        () => next.insertModule(
          'home',
          'header',
          ProjectLocation(parent: stackId, slot: 'main', index: 0),
        ),
        throwsStateError,
      );
      final inner = next.insertModule(
        'home',
        'header',
        ProjectLocation(parent: stackId, index: 0),
      );
      next = apply(next.files, inner);
      expect(
        next.node('home', stackId)!.children.single.instanceId,
        inner.instanceId,
      );
    });

    test('remove deletes the subtree', () {
      final next = apply(files, model.removeNode('home', 'frame-home'));
      expect(mainIds(next, 'home'), ['footer-home']);
      expect(next.node('home', 'header-home'), isNull);
    });

    test('duplicate copies the subtree with fresh project-unique ids', () {
      final edit = model.duplicateNode('home', 'frame-home');
      final next = apply(files, edit);
      final ids = mainIds(next, 'home');
      expect(ids.length, 3);
      expect(ids[1], edit.instanceId);
      final copy = next.node('home', edit.instanceId!)!;
      final innerId = copy.slots['main']!.single.instanceId;
      expect(innerId, isNot('header-home'));
      expect(next.instanceIds.length, model.instanceIds.length + 2);
    });

    test('set props replaces overrides; empty removes the key', () {
      var next = apply(
        files,
        model.setNodeProps('home', 'header-home', {'accent': 'green'}),
      );
      expect(next.node('home', 'header-home')!.props, {'accent': 'green'});
      next = apply(next.files, next.setNodeProps('home', 'header-home', {}));
      expect(
        next.node('home', 'header-home')!.json.containsKey('props'),
        isFalse,
      );
      expect(
        () => model.setNodeProps('home', 'home', {'a': 1}),
        throwsStateError,
      );
    });

    test('hydrate only on modules', () {
      final next = apply(
        files,
        model.setNodeHydrate('home', 'header-home', 'idle'),
      );
      expect(next.node('home', 'header-home')!.hydrate, 'idle');
      expect(
        () => model.setNodeHydrate('home', 'home', 'idle'),
        throwsStateError,
      );
      expect(
        () => model.setNodeHydrate('home', 'header-home', 'soon'),
        throwsStateError,
      );
    });

    test('template props write props.json only', () {
      final edit = model.setTemplateProps({'theme': 'dark'});
      expect(edit.changes.keys, ['props.json']);
      expect(apply(files, edit).templateProps, {'theme': 'dark'});
    });

    test('add module declares it and writes its source', () {
      final edit = model.addModule(id: 'offer', title: 'Offer');
      expect(edit.path, 'src/components/offer.tsx');
      final next = apply(files, edit);
      expect(next.modules['offer']!.entry, 'src/components/offer.tsx');
      expect(
        next.files['src/components/offer.tsx'],
        contains('export default'),
      );
      expect(
        () => next.addModule(id: 'offer', title: 'Again'),
        throwsStateError,
      );
      expect(
        () => model.addModule(id: 'Bad Id', title: 'x'),
        throwsFormatException,
      );
    });

    test('fork module for one placement leaves the others alone', () {
      final edit = model.forkModuleForNode(
        'about',
        'header-about',
        'header-about-page',
      );
      expect(edit.path, 'src/header-about-page.tsx');
      final next = apply(files, edit);
      expect(next.node('about', 'header-about')!.moduleId, 'header-about-page');
      expect(next.node('home', 'header-home')!.moduleId, 'header');
      expect(next.files['src/header-about-page.tsx'], files['src/header.tsx']);
      expect(
        next.modules['header-about-page']!.propsDefault,
        model.modules['header']!.propsDefault,
      );
      expect(next.placementsOf('header').length, 1);
    });

    test('freeModuleId avoids existing modules', () {
      expect(model.freeModuleId('Header'), 'header-2');
      expect(model.freeModuleId('Special offer!'), 'special-offer');
    });

    test('untouched files and key order survive a round trip', () {
      final edit = model.setNodeProps('about', 'header-about', {'accent': 'x'});
      final before = jsonDecode(files['pages/about.json']!) as Map;
      final after = jsonDecode(edit.changes['pages/about.json']!) as Map;
      expect(after.keys.toList(), before.keys.toList());
      expect(edit.changes['pages/about.json'], endsWith('}\n'));
      // A no-op move re-encodes to the exact same bytes.
      final noop = model.moveNode(
        'about',
        'header-about',
        const ProjectLocation(parent: 'about', slot: 'main', index: 0),
      );
      expect(noop.changes['pages/about.json'], files['pages/about.json']);
    });

    test('ensurePageRoot wraps a single-module root once', () {
      final single = {
        ...files,
        'pages/about.json': enc({
          'path': '/about',
          'root': {'instanceId': 'solo', 'moduleId': 'header'},
        }),
      };
      final m = TemplateProjectModel.parse(single);
      final next = apply(single, m.ensurePageRoot('about'));
      expect(next.root('about').isPageRoot, isTrue);
      expect(mainIds(next, 'about'), ['solo']);
      expect(next.ensurePageRoot('about').changes, isEmpty);
    });

    test('overridesFrom keeps only differences from defaults', () {
      final defaults = {
        'accent': 'blue',
        'style': {'size': 12, 'bold': false},
      };
      expect(
        ProjectNode.overridesFrom(defaults, {
          'accent': 'blue',
          'style': {'size': 14, 'bold': false},
          'extra': 1,
        }),
        {
          'style': {'size': 14},
          'extra': 1,
        },
      );
      expect(ProjectNode.overridesFrom(defaults, defaults), isEmpty);
    });
  });
}
