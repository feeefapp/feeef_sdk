/// How the checkout asks for the city.
enum CityInputMode {
  /// State then city dropdowns (Cloud lists).
  select,

  /// Typed text; the server matches it to Cloud geography.
  text,

  /// One searchable city field.
  search;

  static CityInputMode? tryParse(Object? raw) => switch (raw) {
    'select' => CityInputMode.select,
    'text' => CityInputMode.text,
    'search' => CityInputMode.search,
    _ => null,
  };
}

/// Whether a checkout address field is shown, and whether it must be filled.
enum AddressFieldMode {
  hidden,
  optional,
  required;

  static AddressFieldMode? tryParse(Object? raw) => switch (raw) {
    'hidden' => AddressFieldMode.hidden,
    'optional' => AddressFieldMode.optional,
    'required' => AddressFieldMode.required,
    _ => null,
  };
}

/// Checkout address rules for one country.
///
/// Every field is nullable = inherit. The server resolves them as
/// [builtInDefault] ← platform option `checkout.address_defaults` ← store
/// overrides (`store.configs.address[country]`). Built-in defaults:
/// - `DZ`: [CityInputMode.select], state and city required, zip and address2 hidden.
/// - `TN`, `LY`: [CityInputMode.search], state not required, city required,
///   zip and address2 hidden.
/// - any other country: [CityInputMode.text], nothing required, zip and
///   address2 hidden.
class AddressRules {
  const AddressRules({
    this.cityInput,
    this.showState,
    this.showCity,
    this.requireState,
    this.requireCity,
    this.zip,
    this.address2,
  });

  final CityInputMode? cityInput;

  /// The state field shows (always when required). [CityInputMode.search]
  /// picks the state with the city.
  final bool? showState;

  /// The city field shows (always when required). In
  /// [CityInputMode.select] it needs the state.
  final bool? showCity;
  final bool? requireState;
  final bool? requireCity;
  final AddressFieldMode? zip;

  /// Second address line: [AddressFieldMode.hidden] or
  /// [AddressFieldMode.optional] (never required).
  final AddressFieldMode? address2;

  /// Server built-in defaults for ISO-2 [country].
  static AddressRules builtInDefault(String country) =>
      switch (country.toUpperCase()) {
        'DZ' => const AddressRules(
          cityInput: CityInputMode.select,
          showState: true,
          showCity: true,
          requireState: true,
          requireCity: true,
          zip: AddressFieldMode.hidden,
          address2: AddressFieldMode.hidden,
        ),
        'TN' || 'LY' => const AddressRules(
          cityInput: CityInputMode.search,
          showState: false,
          showCity: true,
          requireState: false,
          requireCity: true,
          zip: AddressFieldMode.hidden,
          address2: AddressFieldMode.hidden,
        ),
        _ => const AddressRules(
          cityInput: CityInputMode.text,
          showState: false,
          showCity: true,
          requireState: false,
          requireCity: false,
          zip: AddressFieldMode.hidden,
          address2: AddressFieldMode.hidden,
        ),
      };

  bool get isEmpty =>
      cityInput == null &&
      showState == null &&
      showCity == null &&
      requireState == null &&
      requireCity == null &&
      zip == null &&
      address2 == null;

  static AddressRules? fromJsonOrNull(Object? raw) {
    if (raw is! Map) return null;
    final address2 = AddressFieldMode.tryParse(raw['address2']);
    final rules = AddressRules(
      cityInput: CityInputMode.tryParse(raw['cityInput']),
      showState: raw['showState'] is bool ? raw['showState'] as bool : null,
      showCity: raw['showCity'] is bool ? raw['showCity'] as bool : null,
      requireState: raw['requireState'] is bool
          ? raw['requireState'] as bool
          : null,
      requireCity: raw['requireCity'] is bool
          ? raw['requireCity'] as bool
          : null,
      zip: AddressFieldMode.tryParse(raw['zip']),
      address2: address2 == AddressFieldMode.required ? null : address2,
    );
    return rules.isEmpty ? null : rules;
  }

  factory AddressRules.fromJson(Map<String, dynamic> json) =>
      fromJsonOrNull(json) ?? const AddressRules();

  Map<String, dynamic> toJson() => {
    if (cityInput != null) 'cityInput': cityInput!.name,
    if (showState != null) 'showState': showState,
    if (showCity != null) 'showCity': showCity,
    if (requireState != null) 'requireState': requireState,
    if (requireCity != null) 'requireCity': requireCity,
    if (zip != null) 'zip': zip!.name,
    if (address2 != null) 'address2': address2!.name,
  };

  /// Fields set here win over [fallback].
  AddressRules over(AddressRules? fallback) => AddressRules(
    cityInput: cityInput ?? fallback?.cityInput,
    showState: showState ?? fallback?.showState,
    showCity: showCity ?? fallback?.showCity,
    requireState: requireState ?? fallback?.requireState,
    requireCity: requireCity ?? fallback?.requireCity,
    zip: zip ?? fallback?.zip,
    address2: address2 ?? fallback?.address2,
  );

  AddressRules copyWith({
    CityInputMode? cityInput,
    bool? showState,
    bool? showCity,
    bool? requireState,
    bool? requireCity,
    AddressFieldMode? zip,
    AddressFieldMode? address2,
  }) => AddressRules(
    cityInput: cityInput ?? this.cityInput,
    showState: showState ?? this.showState,
    showCity: showCity ?? this.showCity,
    requireState: requireState ?? this.requireState,
    requireCity: requireCity ?? this.requireCity,
    zip: zip ?? this.zip,
    address2: address2 ?? this.address2,
  );

  /// The state field shows: shown or required, never in
  /// [CityInputMode.search] (the city carries it).
  bool get stateShown =>
      cityInput != CityInputMode.search &&
      (showState == true || requireState == true);

  /// The city field shows: shown or required; a [CityInputMode.select] city
  /// needs the state dropdown.
  bool get cityShown =>
      (showCity == true || requireCity == true) &&
      (cityInput != CityInputMode.select || stateShown);

  @override
  bool operator ==(Object other) =>
      other is AddressRules &&
      other.cityInput == cityInput &&
      other.showState == showState &&
      other.showCity == showCity &&
      other.requireState == requireState &&
      other.requireCity == requireCity &&
      other.zip == zip &&
      other.address2 == address2;

  @override
  int get hashCode => Object.hash(
    cityInput,
    showState,
    showCity,
    requireState,
    requireCity,
    zip,
    address2,
  );
}

/// Response of `GET stores/:storeId/address-rules?country=XX`.
class StoreAddressRules {
  const StoreAddressRules({
    required this.country,
    required this.rules,
    this.defaults,
  });

  /// ISO-2 country, upper case.
  final String country;

  /// Resolved rules; every field is set (missing ones fall back to
  /// [AddressRules.builtInDefault]).
  final AddressRules rules;

  /// Built-in + platform rules without the store's overrides; every field is
  /// set. Null when the server did not send them.
  final AddressRules? defaults;

  /// [defaults], or [AddressRules.builtInDefault] when the server sent none.
  AddressRules get defaultsOrBuiltIn =>
      defaults ?? AddressRules.builtInDefault(country);

  factory StoreAddressRules.fromJson(Map<String, dynamic> json) {
    final country = (json['country'] as String? ?? '').toUpperCase();
    final builtIn = AddressRules.builtInDefault(country);
    return StoreAddressRules(
      country: country,
      rules:
          (AddressRules.fromJsonOrNull(json['rules']) ?? const AddressRules())
              .over(builtIn),
      defaults: AddressRules.fromJsonOrNull(json['defaults'])?.over(builtIn),
    );
  }

  Map<String, dynamic> toJson() => {
    'country': country,
    'rules': rules.toJson(),
    if (defaults != null) 'defaults': defaults!.toJson(),
  };
}
