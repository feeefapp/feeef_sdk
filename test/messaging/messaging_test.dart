// WhatsApp & SMS order messages: settings JSON (store.integrations.messaging) and the requests
// `MessagingRepository` sends (no network). Contract: backend messaging_rules.ts,
// MessagingStoreIntegrationSchema and messaging_controller.ts.
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:feeef/feeef.dart';
import 'package:feeef/interfaces/embadded/store_integrations.dart';
import 'package:test/test.dart';

class _Recorder {
  _Recorder(this.respond) {
    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          calls.add(options);
          final (status, data) = respond(options);
          if (status >= 400) {
            handler.reject(
              DioException(
                requestOptions: options,
                type: DioExceptionType.badResponse,
                response: Response(
                  requestOptions: options,
                  statusCode: status,
                  data: data,
                ),
              ),
            );
            return;
          }
          handler.resolve(
            Response(requestOptions: options, data: data, statusCode: status),
          );
        },
      ),
    );
  }

  final (int, dynamic) Function(RequestOptions) respond;
  final calls = <RequestOptions>[];
  final dio = Dio(BaseOptions(baseUrl: 'https://feeef.test/v1'));
  late final messaging = MessagingRepository(client: dio);
}

const _settings = {
  'active': true,
  'senderId': 'snd_abc123',
  'rules': [
    {
      'id': 'shipped',
      'on': 'phase:ship',
      'template': 'order_shipped',
      'locale': 'ar',
      'variables': ['{{customer_name}}', '{{tracking}}'],
      'channels': ['whatsapp', 'sms'],
    },
    {
      'id': 'conf',
      'on': 'status:st_conf',
      'template': 'order_confirmed',
      'locale': 'fr',
      'variables': <String>[],
      'channels': ['whatsapp'],
    },
  ],
  'confirmation': {
    'enabled': true,
    'on': 'phase:open',
    'template': 'confirm_order',
    'locale': 'ar',
    'variables': ['{{customer_name}}', '{{total}} DA'],
    'confirmButton': 'q0',
    'cancelButton': 'q1',
    'confirmStatusId': null,
    'cancelStatusId': 'st_cancel',
    'waitHours': 24,
  },
};

void main() {
  group('settings JSON', () {
    test('round-trips the backend shape, nulls kept', () {
      final m = MessagingIntegration.fromJson(_settings);
      expect(m.active, isTrue);
      expect(m.senderId, 'snd_abc123');
      expect(m.rules.first.trigger, isA<PixelPhaseTrigger>());
      expect(m.rules[1].trigger, isA<PixelStatusTrigger>());
      expect(m.rules.first.channels, ['whatsapp', 'sms']);
      expect(m.confirmation!.waitHours, 24.0);
      expect(m.confirmation!.confirmStatusId, isNull);

      final json = jsonDecode(jsonEncode(m.toJson())) as Map<String, dynamic>;
      expect(json['rules'], _settings['rules']);
      final confirmation = json['confirmation'] as Map<String, dynamic>;
      // The validator requires these keys (nullable, not optional).
      expect(confirmation.containsKey('cancelButton'), isTrue);
      expect(confirmation.containsKey('confirmStatusId'), isTrue);
      expect(confirmation['confirmStatusId'], isNull);
      expect(confirmation['waitHours'], 24);
      expect(MessagingIntegration.fromJson(json), m);
    });

    test('defaults for an empty object; a cleared sender is sent as null', () {
      final m = MessagingIntegration.fromJson(const {});
      expect(m.active, isFalse);
      expect(m.rules, isEmpty);
      expect(m.confirmation, isNull);
      final json = m.toJson();
      expect(json.containsKey('senderId'), isTrue);
      expect(json['senderId'], isNull);
      expect(json['confirmation'], isNull);
    });

    test('a rule defaults to WhatsApp only', () {
      final rule = MessagingRule.fromJson(const {
        'id': 'r',
        'on': 'paid',
        'template': 't',
        'locale': 'en',
      });
      expect(rule.channels, [MessagingChannels.whatsapp]);
      expect(rule.variables, isEmpty);
      expect(rule.trigger, isA<PixelPaidTrigger>());
    });

    test('StoreIntegrations carries messaging', () {
      final store = StoreIntegrations.fromJson({'messaging': _settings});
      expect(store.messaging!.rules.length, 2);
      expect((store.toJson()['messaging'] as Map)['senderId'], 'snd_abc123');
    });
  });

  group('order ledger', () {
    test('reads claims.messageSends oldest first', () {
      final sends = OrderMessageSend.fromClaims({
        'messageSends': {
          'rule:shipped': {
            'at': '2026-10-31T10:00:00.000Z',
            'status': 'failed',
            'message': 'msg_2',
            'error': 'no_whatsapp',
          },
          'confirmation': {
            'at': '2026-10-30T10:00:00.000Z',
            'status': 'read',
            'message': 'msg_1',
          },
        },
      });
      expect(sends.map((s) => s.key), ['confirmation', 'rule:shipped']);
      expect(sends.last.error, 'no_whatsapp');
      expect(OrderMessageSend.fromClaims(null), isEmpty);
    });
  });

  group('repository', () {
    test('senders parses Cloud rows and the selection', () async {
      final r = _Recorder(
        (_) => (
          200,
          {
            'data': [
              {
                'id': 'snd_abc123',
                'scope': 'own',
                'channel': 'whatsapp',
                'provider': 'meta',
                'display_name': 'Demo Shop',
                'address': '+213555000111',
                'status': 'active',
                'quality': 'green',
                'templates_synced_at': '2026-10-31T09:00:00.000Z',
              },
            ],
            'selected': 'snd_abc123',
          },
        ),
      );
      final page = await r.messaging.senders('st 1');
      expect(r.calls.single.path, '/stores/st%201/messaging/senders');
      expect(page.selected, 'snd_abc123');
      expect(page.own.single.displayName, 'Demo Shop');
      expect(page.own.single.templatesSyncedAt, isNotNull);
      expect(page.platform, isEmpty);
    });

    test('connectWhatsApp sends the four Meta fields trimmed', () async {
      final r = _Recorder(
        (_) => (
          201,
          {
            'data': {
              'id': 'snd_new',
              'scope': 'own',
              'channel': 'whatsapp',
              'provider': 'meta',
              'display_name': 'Shop',
              'status': 'active',
              'quality': 'unknown',
            },
          },
        ),
      );
      final sender = await r.messaging.connectWhatsApp(
        's1',
        phoneNumberId: ' 1234 ',
        wabaId: '5678',
        accessToken: 'EAAB',
        appSecret: 'sec',
        name: '  ',
      );
      final call = r.calls.single;
      expect(call.method, 'POST');
      expect(call.path, '/stores/s1/messaging/senders');
      expect(call.data, {
        'phoneNumberId': '1234',
        'wabaId': '5678',
        'accessToken': 'EAAB',
        'appSecret': 'sec',
      });
      expect(sender.id, 'snd_new');
    });

    test('templates, sync, delete and test hit their routes', () async {
      final r = _Recorder((o) {
        if (o.path.endsWith('/templates')) {
          return (
            200,
            {
              'data': [
                {
                  'id': 'tpl_1',
                  'sender': 'snd_abc123',
                  'name': 'confirm_order',
                  'locale': 'ar',
                  'category': 'UTILITY',
                  'slots': ['1', '2'],
                  'slotInfo': [
                    {'key': '1', 'part': 'body', 'example': 'Amina'},
                    {'key': '2', 'part': 'body', 'example': null},
                  ],
                  'buttons': [
                    {'id': 'q0', 'title': 'Confirm'},
                    {'id': 'q1', 'title': 'Cancel'},
                  ],
                  'body': 'Hello {{1}}, total {{2}}',
                },
              ],
              'variables': kMessagingVariables,
            },
          );
        }
        if (o.path.endsWith('/test')) {
          return (
            200,
            {
              'data': {'id': 'msg_1', 'status': 'queued'},
            },
          );
        }
        if (o.method == 'DELETE') return (204, null);
        return (
          200,
          {
            'data': {'synced': 3},
          },
        );
      });
      final templates = await r.messaging.templates('s1', sender: 'snd_x');
      expect(r.calls.last.queryParameters, {'sender': 'snd_x'});
      final tpl = templates.find('confirm_order', 'ar')!;
      expect(tpl.slotInfo.first.example, 'Amina');
      expect(tpl.buttons.map((b) => b.id), ['q0', 'q1']);
      expect(templates.variables, contains('tracking'));
      expect(templates.find('confirm_order', 'fr'), isNull);

      await r.messaging.templates('s1');
      expect(r.calls.last.queryParameters, isEmpty);

      expect(await r.messaging.syncTemplates('s1', 'snd_x'), {'synced': 3});
      expect(
        r.calls.last.path,
        '/stores/s1/messaging/senders/snd_x/sync-templates',
      );

      await r.messaging.deleteSender('s1', 'snd_x');
      expect(r.calls.last.method, 'DELETE');

      final sent = await r.messaging.sendTest(
        's1',
        to: ' 0555 ',
        template: 'confirm_order',
        locale: 'ar',
        variables: const ['Amina', '1200'],
      );
      expect(r.calls.last.data, {
        'to': '0555',
        'template': 'confirm_order',
        'locale': 'ar',
        'variables': ['Amina', '1200'],
      });
      expect(sent.status, 'queued');
    });

    test(
      'MessagingError reads disabled, Cloud failures and field errors',
      () async {
        final r = _Recorder((o) {
          if (o.path.endsWith('/senders') && o.method == 'GET') {
            return (503, {'code': 'messaging_disabled', 'message': 'not yet'});
          }
          if (o.path.endsWith('/test')) {
            return (
              422,
              {'message': 'Enter a valid phone number', 'field': 'to'},
            );
          }
          return (502, {'code': 'messaging_unavailable', 'message': 'down'});
        });
        Future<MessagingError> failure(Future<void> Function() call) async {
          try {
            await call();
          } catch (e) {
            return MessagingError.of(e);
          }
          fail('expected an error');
        }

        expect(
          (await failure(() => r.messaging.senders('s1'))).disabled,
          isTrue,
        );
        final cloud = await failure(() => r.messaging.templates('s1'));
        expect(cloud.cloudFailed, isTrue);
        expect(cloud.code, 'messaging_unavailable');
        final field = await failure(
          () =>
              r.messaging.sendTest('s1', to: 'x', template: 't', locale: 'en'),
        );
        expect(field.status, 422);
        expect(field.field, 'to');
      },
    );
  });

  group('templates you create', () {
    final presetJson = {
      'key': 'order_confirmation',
      'title': 'Order confirmation',
      'description': 'Asks the customer to confirm.',
      'category': 'utility',
      'use': 'confirmation',
      'on': 'phase:open',
      'template': {
        'name': 'order_confirmation',
        'locale': 'en',
        'category': 'utility',
        'header': {'text': 'Confirm your order'},
        'body': 'Hello {{customer_name}}, order {{order_id}}.',
        'buttons': [
          {'type': 'quick_reply', 'text': 'Confirm order'},
          {'type': 'quick_reply', 'text': 'Cancel order'},
        ],
        'examples': {'customer_name': 'Amine', 'order_id': 'a7k2'},
      },
    };
    final row = {
      'id': 'mtp_1',
      'sender': 'snd_own',
      'name': 'order_confirmation',
      'locale': 'en',
      'category': 'utility',
      'status': 'rejected',
      'rejectionReason': 'INVALID_FORMAT',
      'updatedAt': '2026-10-31T10:00:00Z',
      'mediaHeader': false,
      'slots': ['customer_name', 'order_id'],
      'slotInfo': [
        {'key': 'customer_name', 'part': 'body', 'example': 'Amine'},
      ],
      'buttons': [
        {'id': 'q0', 'title': 'Confirm order'},
      ],
      'body': 'Hello {{customer_name}}, order {{order_id}}.',
      'draft': presetJson['template'],
    };

    test(
      'presets, list all, create, edit and delete hit their routes',
      () async {
        final r = _Recorder((o) {
          if (o.path.endsWith('/template-presets')) {
            return (
              200,
              {
                'data': [presetJson],
                'locale': 'en',
              },
            );
          }
          if (o.path.endsWith('/templates') && o.method == 'GET') {
            return (
              200,
              {
                'data': [row],
                'sender': 'snd_own',
                'variables': ['customer_name'],
              },
            );
          }
          if (o.method == 'DELETE') return (204, null);
          return (
            o.method == 'POST' ? 201 : 200,
            {
              'data': {...row, 'status': 'pending'},
            },
          );
        });
        final presets = await r.messaging.templatePresets('s1', locale: 'en');
        expect(presets.single.key, 'order_confirmation');
        expect(presets.single.on, 'phase:open');
        expect(presets.single.template.buttons.map((b) => b.text), [
          'Confirm order',
          'Cancel order',
        ]);
        expect(r.calls.last.queryParameters, {'locale': 'en'});

        final all = await r.messaging.templates('s1', all: true);
        expect(r.calls.last.queryParameters, {'all': '1'});
        expect(all.sender, 'snd_own');
        final t = all.data.single;
        expect(t.status, MessagingTemplateStatus.rejected);
        expect(t.isApproved, isFalse);
        expect(t.rejectionReason, 'INVALID_FORMAT');
        expect(t.draft!.header, 'Confirm your order');
        expect(t.draft!.examples['order_id'], 'a7k2');

        final created = await r.messaging.createTemplate(
          's1',
          presets.single.template,
          idempotencyKey: 'k-1',
        );
        expect(created.status, MessagingTemplateStatus.pending);
        final post = r.calls.last;
        expect(post.method, 'POST');
        expect(post.path, '/stores/s1/messaging/templates');
        expect(post.headers['Idempotency-Key'], 'k-1');
        final body = post.data as Map;
        expect(body.containsKey('sender'), isFalse);
        expect(jsonDecode(jsonEncode(body)), presetJson['template']);

        await r.messaging.updateTemplate(
          's1',
          'mtp_1',
          t.draft!.copyWith(body: 'Hi {{customer_name}}.'),
        );
        final patch = r.calls.last;
        expect(patch.method, 'PATCH');
        expect(patch.path, '/stores/s1/messaging/templates/mtp_1');
        expect((patch.data as Map).containsKey('name'), isFalse);
        expect((patch.data as Map).containsKey('locale'), isFalse);
        expect((patch.data as Map)['body'], 'Hi {{customer_name}}.');
        expect(patch.headers['Idempotency-Key'], startsWith('ff-tpl-'));

        await r.messaging.deleteTemplate('s1', 'mtp_1');
        expect(r.calls.last.method, 'DELETE');
        expect(r.calls.last.path, '/stores/s1/messaging/templates/mtp_1');
      },
    );

    test('verification drafts send only their code options', () {
      const draft = MessagingTemplateDraft(
        name: 'verification_code',
        locale: 'ar',
        category: MessagingTemplateCategory.authentication,
        body: 'ignored',
        authentication: MessagingTemplateAuthentication(
          codeExpirationMinutes: 10,
          button: MessagingOtpButton(text: 'نسخ الرمز'),
        ),
      );
      expect(draft.toJson(), {
        'name': 'verification_code',
        'locale': 'ar',
        'category': 'authentication',
        'authentication': {
          'security_recommendation': true,
          'code_expiration_minutes': 10,
          'button': {'type': 'copy_code', 'text': 'نسخ الرمز'},
        },
      });
    });

    test('errors keep Meta’s words and field paths', () async {
      var n = 0;
      final r = _Recorder((o) {
        n++;
        if (n == 1) {
          return (
            422,
            {
              'code': 'validation_failed',
              'message': 'body: …',
              'details': {
                'fields': [
                  {'path': 'body', 'message': 'Write the message.'},
                  {'path': 'buttons.1.text', 'message': 'Too long.'},
                ],
              },
            },
          );
        }
        if (n == 2) {
          return (
            422,
            {
              'code': 'messaging_template_rejected',
              'message': 'WhatsApp refused this template.',
              'details': {'provider_message': 'Looks like marketing.'},
            },
          );
        }
        return (409, {'code': 'messaging_template_exists', 'message': 'Taken'});
      });
      const draft = MessagingTemplateDraft(
        name: 'x',
        locale: 'en',
        category: 'utility',
      );
      Future<MessagingError> failure() async {
        try {
          await r.messaging.createTemplate('s1', draft);
        } catch (e) {
          return MessagingError.of(e);
        }
        fail('expected an error');
      }

      final invalid = await failure();
      expect(invalid.fieldErrors, {
        'body': 'Write the message.',
        'buttons.1.text': 'Too long.',
      });
      final rejected = await failure();
      expect(rejected.templateRejected, isTrue);
      expect(rejected.providerMessage, 'Looks like marketing.');
      expect((await failure()).templateExists, isTrue);
    });
  });
}
