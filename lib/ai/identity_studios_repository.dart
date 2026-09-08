/// @deprecated Prefer [BrandStudiosRepository] from `brand_studios_repository.dart`.
///
/// Re-exports [BrandStudiosRepository] so existing `identityStudios` imports keep
/// compiling during the Brandstudio rename. The repository hits `/brandStudios`.
library;

import 'brand_studios_repository.dart';

export 'brand_studios_repository.dart' show BrandStudiosRepository;

@Deprecated('Use BrandStudiosRepository')
typedef IdentityStudiosRepository = BrandStudiosRepository;
