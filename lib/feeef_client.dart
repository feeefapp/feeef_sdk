import 'dart:developer' as developer;
import 'dart:typed_data';

import 'package:cuid2/cuid2.dart';
import 'package:dio/dio.dart';

import 'package:feeef/ai/ai_repository.dart';
import 'package:feeef/core/feeef_config.dart';
import 'package:feeef/core/feeef_storage.dart';
import 'package:feeef/core/feeef_upload_file.dart';
import 'package:feeef/categories/category_repository.dart';
import 'package:feeef/cities/city_repository.dart';
import 'package:feeef/config_repository.dart';
import 'package:feeef/countries/country_repository.dart';
import 'package:feeef/currencies/currency_repository.dart';
import 'package:feeef/deposits/deposit_repository.dart';
import 'package:feeef/files/services/actions.dart';
import 'package:feeef/files/services/analytics.dart';
import 'package:feeef/files/services/file_service.dart';
import 'package:feeef/feedbacks/feedback_repository.dart';
import 'package:feeef/apps/app_repository.dart';
import 'package:feeef/oauth/oauth_repository.dart';
import 'package:feeef/image_prompt_templates/image_prompt_template_repository.dart';
import 'package:feeef/orders/order_repository.dart';
import 'package:feeef/product_landing_page_templates/product_landing_page_template_repository.dart';
import 'package:feeef/product_landing_pages/product_landing_page_repository.dart';
import 'package:feeef/products/product_repository.dart';
import 'package:feeef/realtime/realtime.dart';
import 'package:feeef/shipping_methods/shipping_method_repository.dart';
import 'package:feeef/shipping_prices/shipping_price_repository.dart';
import 'package:feeef/states/state_repository.dart';
import 'package:feeef/promos/promo_repository.dart';
import 'package:feeef/stores/store_repository.dart';
import 'package:feeef/transfers/transfer_repository.dart';
import 'package:feeef/users/user_repository.dart';
import 'package:transmit_client/transmit.dart';

/// Aggregates SDK services (e.g. storage). Used by [Feeef] or standalone.
class Services {
  late final Dio client;
  late final StorageService storage;
  Services({required this.client}) {
    storage = StorageService(client: client);
  }
}

/// Handles file uploads to the Feeef storage API.
///
/// Use when you need to upload a file or raw bytes to storage and get back a URL.
/// Supports optional [folder], progress callback, and [cancelToken].
/// [file] is a [FeeefUploadFile] (app provides it; e.g. from file_picker in Flutter).
class StorageService {
  final Dio client;
  StorageService({required this.client});

  Future<String> upload({
    required FeeefUploadFile file,
    String? folder,
    void Function(int sent, int total)? onProgress,
    CancelToken? cancelToken,
  }) async {
    if (Feeef.debugMode) {
      final fullUrl = '${client.options.baseUrl}/services/storage/upload';
      developer.log(
        'StorageService.upload: file.size=${file.size}, bytes.length=${file.bytes?.length ?? 0}, name=${file.name}',
      );
      developer.log('StorageService.upload: POST $fullUrl');
    }
    final dynamic filePart = file.bytes == null
        ? await MultipartFile.fromFile(file.path!)
        : MultipartFile.fromBytes(
            file.bytes!,
            filename: file.name,
            contentType: file.name.toLowerCase().endsWith('.wav')
                ? DioMediaType.parse('audio/wav')
                : null,
          );
    final formData = FormData.fromMap({
      'file': filePart,
      if (folder != null) 'folder': folder,
    });
    final response = await client.post(
      '/services/storage/upload',
      data: formData,
      onSendProgress: onProgress,
      cancelToken: cancelToken,
    );
    return response.data['url'];
  }

  Future<String> uploadBytes({
    required Uint8List bytes,
    required String filename,
    String? folder,
    void Function(int sent, int total)? onProgress,
    CancelToken? cancelToken,
  }) async {
    final formData = FormData.fromMap({
      'file': MultipartFile.fromBytes(bytes, filename: filename),
      if (folder != null) 'folder': folder,
    });
    final response = await client.post(
      '/services/storage/upload',
      data: formData,
      onSendProgress: onProgress,
      cancelToken: cancelToken,
    );
    return response.data['url'];
  }
}

/// Single entrypoint that wires all repositories and services.
///
/// Use [Feeef.instance] and call [init] with [baseUrl], [storage], and optional [FeeefConfig]
/// before using [users], [stores], [products], [orders], etc. After init, all
/// repositories are ready; [realtime] is used for live updates.
class Feeef {
  /// Set by [init] from [FeeefConfig.debugMode]. Used for logging.
  static bool debugMode = false;

  late final Dio client;
  late final UserRepository users;
  late final StoreRepository stores;
  late final ProductRepository products;
  late final ProductLandingPageRepository productLandingPages;
  late final ProductLandingPageTemplateRepository productLandingPageTemplates;
  late final ImagePromptTemplateRepository imagePromptTemplates;
  late final ShippingMethodRepository shippingMethods;
  late final ShippingPriceRepository shippingPrices;
  late final OrderRepository orders;
  late final FeedbackRepository feedbacks;
  late final CategoryRepository categories;
  late final Realtime realtime;
  late final FileService files;
  late final Actions actions;
  late final ImageGenerationsRepository imageGenerations;
  late final AiRepository ai;
  late final Analytics analytics;
  late final DepositRepository deposits;
  late final TransferRepository transfers;
  late final ConfigRepository configs;
  late final AppRepository apps;
  late final OAuthRepository oauth;
  late final PromoRepository promos;

  late final CurrencyRepository currencies;
  late final CountryRepository countries;
  late final StateRepository states;
  late final CityRepository cities;

  late final StorageService storage;

  static final Feeef _instance = Feeef._();
  static Feeef get instance => _instance;
  Feeef._() {
    client = Dio(BaseOptions(baseUrl: 'http://localhost:3333/api/v1'));
    client.options.headers['Accept'] = 'application/json';
    client.options.headers['X-Requested-With'] = 'XMLHttpRequest';

    actions = Actions(client: client);
    imageGenerations = ImageGenerationsRepository(client: client);
    ai = imageGenerations;
    analytics = Analytics(client: client);
    stores = StoreRepository(client: client);
    orders = OrderRepository(client: client);
    products = ProductRepository(client: client);
    productLandingPages = ProductLandingPageRepository(client: client);
    productLandingPageTemplates = ProductLandingPageTemplateRepository(
      client: client,
    );
    imagePromptTemplates = ImagePromptTemplateRepository(client: client);
    shippingMethods = ShippingMethodRepository(client: client);
    shippingPrices = ShippingPriceRepository(client: client);
    feedbacks = FeedbackRepository(client: client);
    categories = CategoryRepository(client: client);
    deposits = DepositRepository(client: client);
    transfers = TransferRepository(client: client);
    configs = ConfigRepository(client: client);
    apps = AppRepository(client: client);
    oauth = OAuthRepository(client: client);
    promos = PromoRepository(client: client);
    files = FileService(client: client);

    currencies = CurrencyRepository(client: client);
    countries = CountryRepository(client: client);
    states = StateRepository(client: client);
    cities = CityRepository(client: client);

    storage = StorageService(client: client);
  }

  bool _initialized = false;

  /// Initializes the SDK with API base URL and optional config (for realtime URL and env flags).
  ///
  /// When [config] is provided, Transmit/realtime use [config.baseUrl] and [config.isProduction].
  /// [getPushToken] is optional: if provided, it is used during sign-in/sign-up to send a push
  /// token (e.g. FCM) to the backend. The SDK does not depend on Firebase; the app supplies
  /// this callback when it uses push notifications (e.g. `() => FirebaseMessaging.instance.getToken()`).
  /// [storage] is required for auth persistence (token, user). The SDK does not depend on
  /// Flutter or shared_preferences; the app provides an implementation (e.g. wrapping SharedPreferences).
  /// Call once before using any repository. Throws if already initialized.
  Future<void> init({
    required String baseUrl,
    required FeeefStorage storage,
    FeeefConfig? config,
    Future<String?> Function()? getPushToken,
  }) async {
    if (_initialized) throw "Already initialized";
    _initialized = true;
    Feeef.debugMode = config?.debugMode ?? false;
    client.options.baseUrl = baseUrl;
    client.options.headers['Accept'] = 'application/json';
    client.options.headers['X-Requested-With'] = 'XMLHttpRequest';

    final transmitBaseUrl = config != null
        ? config.baseUrl
        : (baseUrl.endsWith('/api/v1')
              ? baseUrl.substring(0, baseUrl.length - 7)
              : 'https://api.feeef.org');
    final useDevRealtime = config != null
        ? (!config.isProduction && config.debugMode)
        : false;
    final uid = cuid();
    final transmit = Transmit(
      TransmitOptions(
        uidGenerator: () => uid,
        baseUrl: useDevRealtime ? "http://127.0.0.1:3333" : transmitBaseUrl,
        httpClientFactory: (baseUrl, uid) =>
            TransmitHttpClient(baseUrl: baseUrl, uid: uid, dio: client),
        maxReconnectAttempts: 20,
        reconnectInitialDelay: Duration(seconds: 1),
        reconnectMaxDelay: Duration(seconds: 10),
        reconnectBackoffMultiplier: 2.0,
        reconnectJitterFactor: 0.1,
        heartbeatTimeout: Duration(seconds: 30),
        onReconnectAttempt: (attempt) {
          developer.log('Reconnect attempt $attempt');
        },
        onReconnectFailed: () {
          developer.log('Reconnect failed');
        },
        onSubscribeFailed: (response) {
          developer.log('Subscribe failed: ${response.statusCode} ${response}');
        },
        onSubscription: (subscription) {
          developer.log('Subscription created: ${subscription}');
        },
        onUnsubscription: (subscription) {
          developer.log('Subscription deleted: ${subscription}');
        },
        onDisconnected: () {
          developer.log('Disconnected');
        },
        onReconnecting: () {
          developer.log('Reconnecting');
        },
        onReconnected: () {
          developer.log('Reconnected');
        },
      ),
    );
    transmit.onMessage((channel, payload) {
      developer.log('-- Received message on $channel');
    });
    realtime = Realtime(transmit: transmit);
    users = UserRepository(
      client: client,
      realtime: realtime,
      storage: storage,
      getPushToken: getPushToken,
    );

    await users.init();
    realtime.init();
    await configs.init();
  }
}
