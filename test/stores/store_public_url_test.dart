import 'dart:convert';
import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:feeef/config_repository.dart';
import 'package:feeef/core/storefront.dart';
import 'package:feeef/interfaces/embadded/store.dart';
import 'package:feeef/stores/models/store.dart';
import 'package:test/test.dart';

/// Answers `GET /configs` with the smallest config the API sends, plus [domain].
class _ConfigsAdapter implements HttpClientAdapter {
  _ConfigsAdapter(this.domain);
  final String? domain;

  @override
  Future<ResponseBody> fetch(
    RequestOptions options,
    Stream<Uint8List>? requestStream,
    Future<void>? cancelFuture,
  ) async {
    return ResponseBody.fromString(
      jsonEncode({
        'update': {'min': 1, 'force': 1, 'whatsnew': ''},
        'popups': [],
        'features': {},
        'plans': [],
        'currencies': [],
        'languages': [],
        'storefrontDomain': ?domain,
      }),
      200,
      headers: {
        'content-type': ['application/json'],
      },
    );
  }

  @override
  void close({bool force = false}) {}
}

Store _store({StoreDomain? domain}) {
  final now = DateTime.utc(2026, 1, 1);
  return Store(
    id: 'store1',
    createdAt: now,
    updatedAt: now,
    slug: 'alalami',
    name: 'Alalami',
    userId: 'user1',
    domain: domain,
  );
}

Future<void> _loadConfigs(String? domain) async {
  final client = Dio()..httpClientAdapter = _ConfigsAdapter(domain);
  await ConfigRepository(client: client).fetch();
}

void main() {
  tearDown(() => storefrontDomain = 'feeef.store');

  test('store links use the storefront domain from /configs', () async {
    await _loadConfigs('alpha.feeef.store');
    expect(_store().getPublicUrl(), 'https://alalami.alpha.feeef.store');
    expect(
      _store().getPublicUrl(path: '/pages/test'),
      'https://alalami.alpha.feeef.store/pages/test',
    );
  });

  test('production suffix when /configs sends none', () async {
    await _loadConfigs(null);
    expect(_store().getPublicUrl(), 'https://alalami.feeef.store');
  });

  test('a custom domain wins unless ignored', () async {
    await _loadConfigs('alpha.feeef.store');
    final store = _store(domain: StoreDomain(name: 'shop.example'));
    expect(store.getPublicUrl(), 'https://shop.example');
    expect(
      store.getPublicUrl(ignoreDomain: true),
      'https://alalami.alpha.feeef.store',
    );
  });
}
