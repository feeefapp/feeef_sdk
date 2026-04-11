import 'package:feeef/serializers.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'store.freezed.dart';
part 'store.g.dart';

@freezed
abstract class StoreDomain with _$StoreDomain {
  factory StoreDomain({
    required String name,
    DateTime? verifiedAt,
    @Default({}) Map<String, dynamic> metadata,
  }) = _StoreDomain;

  factory StoreDomain.fromJson(Map<String, dynamic> json) =>
      _$StoreDomainFromJson(json);
}

// StoreBanner
@freezed
abstract class StoreBanner with _$StoreBanner {
  factory StoreBanner({
    required String title,
    String? url,
    @Default(false) bool enabled,
    @Default({}) Map<String, dynamic> metadata,
  }) = _StoreBanner;

  factory StoreBanner.fromJson(Map<String, dynamic> json) =>
      _$StoreBannerFromJson(json);
}

// export interface StoreDecoration {
//   primaryColor: number
//   showStoreLogoInHeader?: boolean
//   logoFullHeight?: boolean
//   showStoreNameInHeader?: boolean
//   metadata?: Record<string, any>
// }
@freezed
abstract class StoreDecoration with _$StoreDecoration {
  factory StoreDecoration({
    // primary
    @ColorSerializer() @Default(0xFF4CAF50) int primary,
    @ColorSerializer() @Default(0xFFFFFFFF) int onPrimary,
    // on dark mode
    @ColorSerializer() @Default(0xFF69F0AE) int primaryDark,
    @ColorSerializer() @Default(0xFF000000) int onPrimaryDark,
    // secondary
    @ColorSerializer() @Default(0xFFFF9800) int secondary,
    @ColorSerializer() @Default(0xFFFFFFFF) int onSecondary,
    // on dark mode
    @ColorSerializer() @Default(0xFFFFAB40) int secondaryDark,
    @ColorSerializer() @Default(0xFF000000) int onSecondaryDark,

    @Default(true) bool useLogoDarkFilter,

    bool? showStoreLogoInHeader,
    bool? logoFullHeight,
    bool? showStoreNameInHeader,
    @Default({}) Map<String, dynamic> metadata,

    /// Theme selection and visual editor data storage pointer
    Map<String, dynamic>? theme,
  }) = _StoreDecoration;

  factory StoreDecoration.fromJson(Map<String, dynamic> json) =>
      _$StoreDecorationFromJson(json);
}

// export interface StoreAction {
//   label: string
//   url: string
//   type: StoreActionType
// }
@freezed
abstract class StoreAction with _$StoreAction {
  factory StoreAction({
    required String label,
    required String url,
    required StoreActionType type,
  }) = _StoreAction;

  factory StoreAction.fromJson(Map<String, dynamic> json) =>
      _$StoreActionFromJson(json);
}

enum StoreActionType { link, whatsapp, telegram, phone }

// export interface EmbaddedAddress {
//   city: string
//   state: string
//   country?: string
//   street?: string
//   zip?: string
//   location?: {
//     geohash?: string
//     lat: number
//     long: number
//   }
//   metadata?: Record<string, any>
// }
@freezed
abstract class EmbaddedAddress with _$EmbaddedAddress {
  factory EmbaddedAddress({
    String? city,
    String? state,
    String? country,
    String? street,
    String? zip,
    EmbaddedLocation? location,
    @Default({}) Map<String, dynamic> metadata,
  }) = _EmbaddedAddress;

  factory EmbaddedAddress.fromJson(Map<String, dynamic> json) =>
      _$EmbaddedAddressFromJson(json);
}

@freezed
abstract class EmbaddedLocation with _$EmbaddedLocation {
  factory EmbaddedLocation({
    String? geohash,
    required double lat,
    required double long,
  }) = _EmbaddedLocation;

  factory EmbaddedLocation.fromJson(Map<String, dynamic> json) =>
      _$EmbaddedLocationFromJson(json);
}

enum EmbaddedContactType {
  phone,
  email,
  facebook,
  twitter,
  instagram,
  linkedin,
  website,
  whatsapp,
  telegram,
  signal,
  viber,
  skype,
  zoom,
  other,
}

@freezed
abstract class EmbaddedContact with _$EmbaddedContact {
  factory EmbaddedContact({
    String? name,
    required EmbaddedContactType type,
    required String value,
    @Default({}) Map<String, dynamic> metadata,
  }) = _EmbaddedContact;

  factory EmbaddedContact.fromJson(Map<String, dynamic> json) =>
      _$EmbaddedContactFromJson(json);
}

// export enum StoreMemberRole {
//   editor = 'editor',
//   viewer = 'viewer',
//   confermer = 'confermer',
// }
enum StoreMemberRole { editor, viewer, confermer }

// export interface StoreMember {
//   name: string
//   role: StoreMemberRole
//   acceptedAt: any | null
//   expiredAt: any | null
//   createdAt: any
//   active: boolean
//   metadata: Record<string, any>
// }
@freezed
abstract class StoreMember with _$StoreMember {
  factory StoreMember({
    required String userId,
    required String name,
    required StoreMemberRole role,
    DateTime? acceptedAt,
    DateTime? expiredAt,
    required DateTime createdAt,
    @Default(false) bool active,
    @Default({}) Map<String, dynamic> metadata,
    /// Fine-grained permissions; empty = legacy full access for editors.
    @Default([]) List<String> scopes,
  }) = _StoreMember;

  factory StoreMember.fromJson(Map<String, dynamic> json) =>
      _$StoreMemberFromJson(json);
}

enum StoreInviteStatus { pending, accepted, revoked, expired }

@freezed
abstract class StoreInviteStore with _$StoreInviteStore {
  /// Minimal public store shape returned with invites (same as normal Store
  /// from the API, but only these fields are guaranteed; extra keys are ignored).
  factory StoreInviteStore({
    required String id,
    required String name,
    String? iconUrl,
    String? logoUrl,
  }) = _StoreInviteStore;

  factory StoreInviteStore.fromJson(Map<String, dynamic> json) =>
      _$StoreInviteStoreFromJson(json);
}

@freezed
abstract class StoreInvite with _$StoreInvite {
  factory StoreInvite({
    required String id,
    required String storeId,
    required String email,
    required StoreMemberRole role,
    required String invitedBy,
    required StoreInviteStatus status,
    DateTime? acceptedAt,
    required DateTime expiresAt,
    @Default({}) Map<String, dynamic> metadata,
    required DateTime createdAt,
    required DateTime updatedAt,
    StoreInviteStore? store,
    /// Present when listing pending invites for the invitee (accept flow).
    String? token,
    /// Copied to [StoreMember.scopes] on accept.
    List<String>? scopes,
  }) = _StoreInvite;

  factory StoreInvite.fromJson(Map<String, dynamic> json) =>
      _$StoreInviteFromJson(json);
}
