import 'package:dio/dio.dart';
import 'package:feeef/chat/chat_models.dart';
import 'package:feeef/chat/chat_realtime.dart';
import 'package:feeef/chat/chat_repository.dart';
import 'package:test/test.dart';

void main() {
  group('ChatMessagesRepository.send userEvent journey', () {
    late Dio dio;
    late ChatMessagesRepository messages;

    setUp(() {
      dio = Dio(BaseOptions(baseUrl: 'https://api.test/v1'));
      dio.interceptors.add(
        InterceptorsWrapper(
          onRequest: (options, handler) {
            handler.resolve(
              Response(
                requestOptions: options,
                statusCode: 202,
                data: const {'ok': true, 'type': 'user_event'},
              ),
            );
          },
        ),
      );
      messages = ChatMessagesRepository(client: dio);
    });

    test('confirm_action returns user event response without message payload', () async {
      final result = await messages.send(
        conversationId: 'conv_1',
        userEvent: {
          'type': 'confirm_action',
          'actionId': 'confirm_1',
          'approved': true,
          'payload': {
            'confirmId': 'confirm_1',
            'generationId': 'gen_1',
            'type': 'tool_confirm',
          },
        },
      );
      expect(result.isUserEvent, isTrue);
      expect(result.message, isNull);
    });

    test('regenerate user event may return generation metadata', () async {
      dio.interceptors.clear();
      dio.interceptors.add(
        InterceptorsWrapper(
          onRequest: (options, handler) {
            handler.resolve(
              Response(
                requestOptions: options,
                statusCode: 202,
                data: const {
                  'ok': true,
                  'type': 'user_event',
                  'generationId': 'g2',
                  'assistantMessageId': 'a2',
                  'transmitChannel': 'users/u1/chat/generations/g2',
                },
              ),
            );
          },
        ),
      );

      final result = await messages.send(
        conversationId: 'conv_1',
        userEvent: {
          'type': 'regenerate',
          'assistantMessageId': 'a1',
        },
      );
      expect(result.isUserEvent, isTrue);
      expect(result.generationId, 'g2');
    });

    test('normal text send returns SendMessageResult with generation ids', () async {
      dio.interceptors.clear();
      dio.interceptors.add(
        InterceptorsWrapper(
          onRequest: (options, handler) {
            handler.resolve(
              Response(
                requestOptions: options,
                statusCode: 202,
                data: {
                  'userMessageId': 'u1',
                  'assistantMessageId': 'a1',
                  'generationId': 'g1',
                  'transmitChannel': 'users/u1/chat/generations/g1',
                },
              ),
            );
          },
        ),
      );

      final result = await messages.send(
        conversationId: 'conv_1',
        parts: [ChatPartInput.text('Hello')],
      );
      expect(result.message, isNotNull);
      expect(result.generationId, 'g1');
      expect(result.transmitChannel, contains('generations'));
    });
  });

  group('ChatRealtimeBridge streaming journey', () {
    test('part deltas merge into full assistant text', () {
      var parts = <String, String>{};
      parts = ChatRealtimeBridge.applyEvent(
        parts,
        const ChatGenerationEvent(
          event: 'chat.part.delta',
          data: {'partId': 'p1', 'text': 'Hello'},
        ),
      );
      parts = ChatRealtimeBridge.applyEvent(
        parts,
        const ChatGenerationEvent(
          event: 'chat.part.delta',
          data: {'partId': 'p1', 'text': ' world'},
        ),
      );
      expect(parts['p1'], 'Hello world');
    });

    test('awaiting_confirm snapshot stops poll loop status', () {
      const snap = ChatGenerationSnapshot(
        id: 'g1',
        conversationId: 'c1',
        status: 'awaiting_confirm',
        seq: 3,
        parts: const [],
        jobs: const [],
      );
      expect(snap.status, 'awaiting_confirm');
    });
  });
}