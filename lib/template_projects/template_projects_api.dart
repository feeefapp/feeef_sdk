import 'package:dio/dio.dart';

/// The source-first authoring protocol. Versions/hashes come from the draft the caller actually
/// reviewed. No method fetches a new head before overwriting an existing checkout.
class TemplateProjectsApi {
  TemplateProjectsApi(this.client);
  final Dio client;
  String _root(String project) =>
      '/template-projects/${Uri.encodeComponent(project)}';
  Future<Map<String, dynamic>> _request(
    String method,
    String path, [
    Map<String, dynamic>? body,
  ]) async {
    final r = await client.request<Object?>(
      path,
      data: body,
      options: Options(method: method),
    );
    if (r.data is! Map) {
      throw const FormatException('Invalid template project response');
    }
    return Map<String, dynamic>.from(r.data as Map);
  }

  /// Explicit install/restore/reset of a complete authorized revision.
  Future<Map<String, dynamic>> activate(
    String store, {
    required String revisionId,
    required int expectedInstallationVersion,
    required String idempotencyKey,
    String operation = 'activate',
  }) {
    if (!['install', 'activate', 'restore', 'reset'].contains(operation)) {
      throw ArgumentError('Invalid installation operation');
    }
    return _request(
      'POST',
      '/stores/${Uri.encodeComponent(store)}/template-installation',
      {
        'revisionId': revisionId,
        'expectedInstallationVersion': expectedInstallationVersion,
        'idempotencyKey': idempotencyKey,
        'operation': operation,
      },
    );
  }

  /// Public selected identity; it does not grant source access.
  Future<Map<String, dynamic>> installation(String store) => _request(
    'GET',
    '/stores/${Uri.encodeComponent(store)}/template-installation',
  );

  Future<Map<String, dynamic>> installed(String store) =>
      _request('GET', '/stores/${Uri.encodeComponent(store)}/template-project');
  Future<Map<String, dynamic>> project(String project) =>
      _request('GET', _root(project));
  Future<TemplateWorkspace> open(
    String project, {
    required int expectedProjectVersion,
    required String? baseRevisionId,
    Map<String, String>? files,
  }) async => TemplateWorkspace.fromJson(
    await _request('POST', '${_root(project)}/workspaces', {
      'expectedProjectVersion': expectedProjectVersion,
      'baseRevisionId': baseRevisionId,
      if (files != null) 'files': files,
    }),
  );
  Future<TemplateWorkspace> workspace(String project, String workspace) async =>
      TemplateWorkspace.fromJson(
        await _request(
          'GET',
          '${_root(project)}/workspaces/${Uri.encodeComponent(workspace)}',
        ),
      );
  Future<TemplateWorkspace> patch(
    String project,
    String workspace, {
    required int expectedVersion,
    required List<Map<String, dynamic>> changes,
  }) async => TemplateWorkspace.fromJson(
    await _request(
      'PATCH',
      '${_root(project)}/workspaces/${Uri.encodeComponent(workspace)}/files',
      {'expectedVersion': expectedVersion, 'changes': changes},
    ),
  );
  Future<Map<String, String>> source(String project, String revision) async =>
      (await _request(
        'GET',
        '${_root(project)}/revisions/${Uri.encodeComponent(revision)}/source',
      )).cast<String, String>();
  Future<TemplateProjectBuild> queue(
    String project,
    String workspace, {
    required int expectedWorkspaceVersion,
    required String idempotencyKey,
  }) async => TemplateProjectBuild.fromJson(
    await _request(
      'POST',
      '${_root(project)}/workspaces/${Uri.encodeComponent(workspace)}/builds',
      {
        'expectedWorkspaceVersion': expectedWorkspaceVersion,
        'idempotencyKey': idempotencyKey,
      },
    ),
  );
  Future<TemplateProjectBuild> run(String project, String build) async =>
      TemplateProjectBuild.fromJson(
        await _request(
          'POST',
          '${_root(project)}/builds/${Uri.encodeComponent(build)}/run',
          {},
        ),
      );
  Future<TemplateProjectBuild> build(String project, String build) async =>
      TemplateProjectBuild.fromJson(
        await _request(
          'GET',
          '${_root(project)}/builds/${Uri.encodeComponent(build)}',
        ),
      );
  Future<Map<String, dynamic>> publish(
    String project, {
    required String buildId,
    required int expectedProjectVersion,
    required int expectedWorkspaceVersion,
    required String inputHash,
    required String artifactHash,
    required String idempotencyKey,
    required String message,
    String? storeId,
    int? expectedInstallationVersion,
  }) {
    if (storeId != null && expectedInstallationVersion == null) {
      throw ArgumentError('Installation version required');
    }
    return _request('POST', '${_root(project)}/publish', {
      'buildId': buildId,
      'expectedProjectVersion': expectedProjectVersion,
      'expectedWorkspaceVersion': expectedWorkspaceVersion,
      'inputHash': inputHash,
      'artifactHash': artifactHash,
      'idempotencyKey': idempotencyKey,
      'message': message,
      if (storeId != null)
        'activate': {
          'storeId': storeId,
          'expectedInstallationVersion': expectedInstallationVersion,
        },
    });
  }

  Future<Map<String, dynamic>> preview(
    String project, {
    required String buildId,
    required String storeId,
    required int expectedWorkspaceVersion,
    int ttlSeconds = 900,
  }) => _request('POST', '${_root(project)}/previews', {
    'buildId': buildId,
    'storeId': storeId,
    'expectedWorkspaceVersion': expectedWorkspaceVersion,
    'ttlSeconds': ttlSeconds,
  });
  Future<TemplateWorkspace> rebase(
    String project,
    String workspace, {
    required int expectedVersion,
    required int expectedProjectVersion,
    required String revisionId,
  }) async => TemplateWorkspace.fromJson(
    await _request(
      'POST',
      '${_root(project)}/workspaces/${Uri.encodeComponent(workspace)}/rebase',
      {
        'expectedVersion': expectedVersion,
        'expectedProjectVersion': expectedProjectVersion,
        'revisionId': revisionId,
      },
    ),
  );
  Future<Map<String, dynamic>> checkpoint(
    String project,
    String workspace,
    int expectedVersion,
  ) => _request(
    'POST',
    '${_root(project)}/workspaces/${Uri.encodeComponent(workspace)}/checkpoints',
    {'expectedVersion': expectedVersion},
  );
  Future<TemplateWorkspace> restoreCheckpoint(
    String project,
    String workspace, {
    required String checkpointId,
    required int expectedVersion,
  }) async => TemplateWorkspace.fromJson(
    await _request(
      'POST',
      '${_root(project)}/workspaces/${Uri.encodeComponent(workspace)}/restore-checkpoint',
      {'checkpointId': checkpointId, 'expectedVersion': expectedVersion},
    ),
  );
}

class TemplateWorkspace {
  TemplateWorkspace.fromJson(Map<String, dynamic> json)
    : id = json['id'] as String,
      projectId = json['projectId'] as String,
      version = json['version'] as int,
      baseRevisionId = json['baseRevisionId'] as String?,
      files = Map<String, String>.unmodifiable(
        (json['files'] as Map).cast<String, String>(),
      ),
      manifest = Map<String, dynamic>.unmodifiable(
        Map<String, dynamic>.from(json['manifest'] as Map),
      ),
      closed = json['closed'] == true;
  final String id, projectId;
  final int version;
  final String? baseRevisionId;
  final Map<String, String> files;
  final Map<String, dynamic> manifest;
  final bool closed;
  String hash(String path) => (manifest[path] as Map)['hash'] as String;
}

class TemplateProjectBuild {
  TemplateProjectBuild.fromJson(this.json);
  final Map<String, dynamic> json;
  String get id => json['id'] as String;
  String get status => json['status'] as String;
  int get workspaceVersion => json['workspaceVersion'] as int;
  String get inputHash => json['inputHash'] as String;
  String? get artifactHash => json['artifactHash'] as String?;
  List<dynamic> get diagnostics => json['diagnostics'] as List? ?? const [];
  bool get succeeded => status == 'succeeded' && artifactHash != null;
}
