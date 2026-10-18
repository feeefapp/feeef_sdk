class InstalledTheme {
  const InstalledTheme({
    required this.data,
    required this.schema,
    required this.revision,
    required this.customized,
    this.templateId,
    this.installedReleaseId,
    this.installation,
  });
  final Map<String, dynamic> data, schema;
  final Map<String, dynamic>? installation;
  final String revision;
  final bool customized;
  final String? templateId, installedReleaseId;
  factory InstalledTheme.fromJson(Map<String, dynamic> json) => InstalledTheme(
    data: Map<String, dynamic>.from(json['data'] as Map? ?? {}),
    schema: Map<String, dynamic>.from(json['schema'] as Map? ?? {}),
    revision: json['revision'] as String,
    customized: json['customized'] == true,
    templateId: json['templateId'] as String?,
    installedReleaseId: json['installedReleaseId'] as String?,
    installation: json['installation'] is Map
        ? Map<String, dynamic>.from(json['installation'] as Map)
        : null,
  );
}

class StoreThemeBackup {
  const StoreThemeBackup({
    required this.id,
    required this.reason,
    required this.createdAt,
    required this.expiresAt,
  });
  final String id, reason;
  final DateTime createdAt, expiresAt;
  factory StoreThemeBackup.fromJson(Map<String, dynamic> json) =>
      StoreThemeBackup(
        id: json['id'] as String,
        reason: json['reason'] as String,
        createdAt: DateTime.parse(
          (json['createdAt'] ?? json['created_at']) as String,
        ),
        expiresAt: DateTime.parse(
          (json['expiresAt'] ?? json['expires_at']) as String,
        ),
      );
}
