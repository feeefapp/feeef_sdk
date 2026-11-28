import 'package:dio/dio.dart';

import 'lab_chat_api.dart';
import 'lab_core.dart';
import 'lab_resources_api.dart';
import 'lab_studio_api.dart';

export 'lab_chat_api.dart';
export 'lab_chat_reduce.dart';
export 'lab_core.dart';
export 'lab_resources_api.dart';
export 'lab_studio_api.dart';

/// Feeef Lab for signed-in apps: the same controllers as `lab.feeef.org`, mounted at
/// `/api/v1/lab/*` behind the bearer guard (no CSRF, no guest merge). Every area shares one
/// [LabEffects] so the host app can route `upgrade_required` / limits to its billing UI.
class LabApi {
  LabApi(Dio client) : http = LabHttp(client) {
    chat = LabChatApi(http);
    image = LabImageApi(http);
    brand = LabBrandApi(http);
    voice = LabVoiceApi(http);
    media = LabMediaApi(http);
    ads = LabAdsApi(http);
    billing = LabBillingApi(http);
    resources = LabResourcesApi(http);
  }

  final LabHttp http;
  late final LabChatApi chat;
  late final LabImageApi image;

  /// Lab Brand: brand kits, drafts and SVG logo masters.
  late final LabBrandApi brand;
  late final LabVoiceApi voice;
  late final LabMediaApi media;
  late final LabAdsApi ads;
  late final LabBillingApi billing;

  /// Store products a person can attach to chat, image and voice requests.
  late final LabResourcesApi resources;

  LabEffects get effects => http.effects;
}
