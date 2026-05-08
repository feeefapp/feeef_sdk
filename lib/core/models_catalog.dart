// Multi-provider model catalog from backend option key `models`.
// Wire JSON often follows OpenRouter GET /api/v1/models (snake_case fields); see
// https://openrouter.ai/docs/guides/overview/models and backend `ai_models_catalog.ts`
// (TypeScript uses `@openrouter/sdk` Model types; Dart keeps flexible maps where needed).

class ProviderRegistryRow {
  final String slug;
  final String kind;
  final String baseUrl;
  final String? displayName;
  final String? name;

  const ProviderRegistryRow({
    required this.slug,
    required this.kind,
    required this.baseUrl,
    this.displayName,
    this.name,
  });

  factory ProviderRegistryRow.fromJson(Map<String, dynamic> json) {
    return ProviderRegistryRow(
      slug: json['slug'] as String,
      kind: json['kind'] as String,
      baseUrl: json['baseUrl'] as String,
      displayName: json['displayName'] as String?,
      name: json['name'] as String?,
    );
  }

  String get label => displayName ?? name ?? slug;
}

class ModelCatalogRow {
  final String id;
  final String providerSlug;
  final String name;
  final String? description;
  final Map<String, dynamic>? architecture;
  /// Optional Feeef extensions: `image_generation` under `capabilities`.
  final Map<String, dynamic>? capabilities;
  /// Optional OpenRouter-style pricing (per-token USD strings): `{ prompt, completion }`.
  final Map<String, dynamic>? pricing;

  const ModelCatalogRow({
    required this.id,
    required this.providerSlug,
    required this.name,
    this.description,
    this.architecture,
    this.capabilities,
    this.pricing,
  });

  factory ModelCatalogRow.fromJson(Map<String, dynamic> json) {
    final idRaw = json['id'] as String?;
    final slugRaw = json['slug'] as String?;
    final resolvedId = (idRaw != null && idRaw.trim().isNotEmpty)
        ? idRaw.trim()
        : (slugRaw?.trim() ?? '');
    if (resolvedId.isEmpty) {
      throw FormatException(
        'Model catalog row requires non-empty id or slug (OpenRouter exports use slug)',
      );
    }

    Map<String, dynamic>? arch;
    if (json['architecture'] is Map) {
      arch = Map<String, dynamic>.from(json['architecture'] as Map);
    }

    void mergeModalities(String snakeKey, String camelKey, String archKey) {
      final v = json[snakeKey] ?? json[camelKey];
      if (v is List && v.isNotEmpty) {
        arch ??= {};
        arch![archKey] = v.map((e) => e.toString()).toList();
      }
    }

    mergeModalities('output_modalities', 'outputModalities', 'output_modalities');
    mergeModalities('input_modalities', 'inputModalities', 'input_modalities');

    Map<String, dynamic>? cap;
    if (json['capabilities'] is Map) {
      cap = Map<String, dynamic>.from(json['capabilities'] as Map);
    }
    Map<String, dynamic>? pricing;
    if (json['pricing'] is Map) {
      pricing = Map<String, dynamic>.from(json['pricing'] as Map);
    }

    return ModelCatalogRow(
      id: resolvedId,
      providerSlug: json['provider_slug'] as String,
      name: json['name'] as String? ?? resolvedId,
      description: json['description'] as String?,
      architecture: arch,
      capabilities: cap,
      pricing: pricing,
    );
  }
}

class ModelsCatalogConfig {
  final List<ProviderRegistryRow> providers;
  final List<ModelCatalogRow> data;

  const ModelsCatalogConfig({required this.providers, required this.data});

  factory ModelsCatalogConfig.fromJson(Map<String, dynamic> json) {
    final rawData = json['data'] as List<dynamic>? ?? [];
    return ModelsCatalogConfig(
      providers: (json['providers'] as List<dynamic>? ?? [])
          .map((e) => ProviderRegistryRow.fromJson(e as Map<String, dynamic>))
          .toList(),
      data: rawData
          .map((e) => ModelCatalogRow.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() => {
        'providers': providers
            .map((e) => {
                  'slug': e.slug,
                  'kind': e.kind,
                  'baseUrl': e.baseUrl,
                  if (e.displayName != null) 'displayName': e.displayName,
                  if (e.name != null) 'name': e.name,
                })
            .toList(),
        'data': data
            .map((m) => {
                  'id': m.id,
                  'provider_slug': m.providerSlug,
                  'name': m.name,
                  if (m.description != null) 'description': m.description,
                  if (m.architecture != null) 'architecture': m.architecture,
                  if (m.capabilities != null) 'capabilities': m.capabilities,
                })
            .toList(),
      };

  /// Models grouped by [ProviderRegistryRow.slug] for nested menus.
  Map<String, List<ModelCatalogRow>> modelsByProviderSlug() {
    final map = <String, List<ModelCatalogRow>>{};
    for (final p in providers) {
      map[p.slug] = [];
    }
    for (final m in data) {
      map.putIfAbsent(m.providerSlug, () => []).add(m);
    }
    return map;
  }

  ModelCatalogRow? modelById(String id) {
    for (final m in data) {
      if (m.id == id) return m;
    }
    return null;
  }

  static Iterable<String> _outputModalities(ModelCatalogRow row) {
    final arch = row.architecture;
    if (arch == null) return const [];
    final out = arch['output_modalities'] ?? arch['outputModalities'];
    if (out is! List || out.isEmpty) return const [];
    return out.map((e) => e.toString());
  }

  /// Whether output modalities include text (OpenRouter-style snake_case or camelCase).
  static bool rowSupportsText(ModelCatalogRow row) {
    final modes = _outputModalities(row).toList();
    if (modes.isEmpty) return true;
    final set = modes.toSet();
    return set.contains('text') || set.contains('transcription');
  }

  static bool rowSupportsImage(ModelCatalogRow row) {
    final modes = _outputModalities(row).toList();
    if (modes.isEmpty) return true;
    return modes.contains('image');
  }

  /// TTS / speech output (e.g. Gemini Flash TTS — `output_modalities` contains `speech`).
  static bool rowSupportsSpeech(ModelCatalogRow row) {
    final modes = _outputModalities(row).toList();
    if (modes.isEmpty) return false;
    return modes.contains('speech') || modes.contains('audio');
  }
}
