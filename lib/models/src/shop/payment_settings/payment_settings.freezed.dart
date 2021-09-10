// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'payment_settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PaymentSettings _$PaymentSettingsFromJson(Map<String, dynamic> json) {
  return _PaymentSettings.fromJson(json);
}

/// @nodoc
class _$PaymentSettingsTearOff {
  const _$PaymentSettingsTearOff();

  _PaymentSettings call(
      {List<String>? acceptedCardBrands,
      String? cardVaultUrl,
      String? countryCode,
      String? currencyCode,
      List<String>? enabledPresentmentCurrencies,
      String? shopifyPaymentAccountId,
      List<String>? supportedDigitalWallets}) {
    return _PaymentSettings(
      acceptedCardBrands: acceptedCardBrands,
      cardVaultUrl: cardVaultUrl,
      countryCode: countryCode,
      currencyCode: currencyCode,
      enabledPresentmentCurrencies: enabledPresentmentCurrencies,
      shopifyPaymentAccountId: shopifyPaymentAccountId,
      supportedDigitalWallets: supportedDigitalWallets,
    );
  }

  PaymentSettings fromJson(Map<String, Object> json) {
    return PaymentSettings.fromJson(json);
  }
}

/// @nodoc
const $PaymentSettings = _$PaymentSettingsTearOff();

/// @nodoc
mixin _$PaymentSettings {
  List<String>? get acceptedCardBrands => throw _privateConstructorUsedError;
  String? get cardVaultUrl => throw _privateConstructorUsedError;
  String? get countryCode => throw _privateConstructorUsedError;
  String? get currencyCode => throw _privateConstructorUsedError;
  List<String>? get enabledPresentmentCurrencies =>
      throw _privateConstructorUsedError;
  String? get shopifyPaymentAccountId => throw _privateConstructorUsedError;
  List<String>? get supportedDigitalWallets =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentSettingsCopyWith<PaymentSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentSettingsCopyWith<$Res> {
  factory $PaymentSettingsCopyWith(
          PaymentSettings value, $Res Function(PaymentSettings) then) =
      _$PaymentSettingsCopyWithImpl<$Res>;
  $Res call(
      {List<String>? acceptedCardBrands,
      String? cardVaultUrl,
      String? countryCode,
      String? currencyCode,
      List<String>? enabledPresentmentCurrencies,
      String? shopifyPaymentAccountId,
      List<String>? supportedDigitalWallets});
}

/// @nodoc
class _$PaymentSettingsCopyWithImpl<$Res>
    implements $PaymentSettingsCopyWith<$Res> {
  _$PaymentSettingsCopyWithImpl(this._value, this._then);

  final PaymentSettings _value;
  // ignore: unused_field
  final $Res Function(PaymentSettings) _then;

  @override
  $Res call({
    Object? acceptedCardBrands = freezed,
    Object? cardVaultUrl = freezed,
    Object? countryCode = freezed,
    Object? currencyCode = freezed,
    Object? enabledPresentmentCurrencies = freezed,
    Object? shopifyPaymentAccountId = freezed,
    Object? supportedDigitalWallets = freezed,
  }) {
    return _then(_value.copyWith(
      acceptedCardBrands: acceptedCardBrands == freezed
          ? _value.acceptedCardBrands
          : acceptedCardBrands // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      cardVaultUrl: cardVaultUrl == freezed
          ? _value.cardVaultUrl
          : cardVaultUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      countryCode: countryCode == freezed
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String?,
      currencyCode: currencyCode == freezed
          ? _value.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as String?,
      enabledPresentmentCurrencies: enabledPresentmentCurrencies == freezed
          ? _value.enabledPresentmentCurrencies
          : enabledPresentmentCurrencies // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      shopifyPaymentAccountId: shopifyPaymentAccountId == freezed
          ? _value.shopifyPaymentAccountId
          : shopifyPaymentAccountId // ignore: cast_nullable_to_non_nullable
              as String?,
      supportedDigitalWallets: supportedDigitalWallets == freezed
          ? _value.supportedDigitalWallets
          : supportedDigitalWallets // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
abstract class _$PaymentSettingsCopyWith<$Res>
    implements $PaymentSettingsCopyWith<$Res> {
  factory _$PaymentSettingsCopyWith(
          _PaymentSettings value, $Res Function(_PaymentSettings) then) =
      __$PaymentSettingsCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<String>? acceptedCardBrands,
      String? cardVaultUrl,
      String? countryCode,
      String? currencyCode,
      List<String>? enabledPresentmentCurrencies,
      String? shopifyPaymentAccountId,
      List<String>? supportedDigitalWallets});
}

/// @nodoc
class __$PaymentSettingsCopyWithImpl<$Res>
    extends _$PaymentSettingsCopyWithImpl<$Res>
    implements _$PaymentSettingsCopyWith<$Res> {
  __$PaymentSettingsCopyWithImpl(
      _PaymentSettings _value, $Res Function(_PaymentSettings) _then)
      : super(_value, (v) => _then(v as _PaymentSettings));

  @override
  _PaymentSettings get _value => super._value as _PaymentSettings;

  @override
  $Res call({
    Object? acceptedCardBrands = freezed,
    Object? cardVaultUrl = freezed,
    Object? countryCode = freezed,
    Object? currencyCode = freezed,
    Object? enabledPresentmentCurrencies = freezed,
    Object? shopifyPaymentAccountId = freezed,
    Object? supportedDigitalWallets = freezed,
  }) {
    return _then(_PaymentSettings(
      acceptedCardBrands: acceptedCardBrands == freezed
          ? _value.acceptedCardBrands
          : acceptedCardBrands // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      cardVaultUrl: cardVaultUrl == freezed
          ? _value.cardVaultUrl
          : cardVaultUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      countryCode: countryCode == freezed
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String?,
      currencyCode: currencyCode == freezed
          ? _value.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as String?,
      enabledPresentmentCurrencies: enabledPresentmentCurrencies == freezed
          ? _value.enabledPresentmentCurrencies
          : enabledPresentmentCurrencies // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      shopifyPaymentAccountId: shopifyPaymentAccountId == freezed
          ? _value.shopifyPaymentAccountId
          : shopifyPaymentAccountId // ignore: cast_nullable_to_non_nullable
              as String?,
      supportedDigitalWallets: supportedDigitalWallets == freezed
          ? _value.supportedDigitalWallets
          : supportedDigitalWallets // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PaymentSettings implements _PaymentSettings {
  _$_PaymentSettings(
      {this.acceptedCardBrands,
      this.cardVaultUrl,
      this.countryCode,
      this.currencyCode,
      this.enabledPresentmentCurrencies,
      this.shopifyPaymentAccountId,
      this.supportedDigitalWallets});

  factory _$_PaymentSettings.fromJson(Map<String, dynamic> json) =>
      _$$_PaymentSettingsFromJson(json);

  @override
  final List<String>? acceptedCardBrands;
  @override
  final String? cardVaultUrl;
  @override
  final String? countryCode;
  @override
  final String? currencyCode;
  @override
  final List<String>? enabledPresentmentCurrencies;
  @override
  final String? shopifyPaymentAccountId;
  @override
  final List<String>? supportedDigitalWallets;

  @override
  String toString() {
    return 'PaymentSettings(acceptedCardBrands: $acceptedCardBrands, cardVaultUrl: $cardVaultUrl, countryCode: $countryCode, currencyCode: $currencyCode, enabledPresentmentCurrencies: $enabledPresentmentCurrencies, shopifyPaymentAccountId: $shopifyPaymentAccountId, supportedDigitalWallets: $supportedDigitalWallets)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PaymentSettings &&
            (identical(other.acceptedCardBrands, acceptedCardBrands) ||
                const DeepCollectionEquality()
                    .equals(other.acceptedCardBrands, acceptedCardBrands)) &&
            (identical(other.cardVaultUrl, cardVaultUrl) ||
                const DeepCollectionEquality()
                    .equals(other.cardVaultUrl, cardVaultUrl)) &&
            (identical(other.countryCode, countryCode) ||
                const DeepCollectionEquality()
                    .equals(other.countryCode, countryCode)) &&
            (identical(other.currencyCode, currencyCode) ||
                const DeepCollectionEquality()
                    .equals(other.currencyCode, currencyCode)) &&
            (identical(other.enabledPresentmentCurrencies,
                    enabledPresentmentCurrencies) ||
                const DeepCollectionEquality().equals(
                    other.enabledPresentmentCurrencies,
                    enabledPresentmentCurrencies)) &&
            (identical(
                    other.shopifyPaymentAccountId, shopifyPaymentAccountId) ||
                const DeepCollectionEquality().equals(
                    other.shopifyPaymentAccountId, shopifyPaymentAccountId)) &&
            (identical(
                    other.supportedDigitalWallets, supportedDigitalWallets) ||
                const DeepCollectionEquality().equals(
                    other.supportedDigitalWallets, supportedDigitalWallets)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(acceptedCardBrands) ^
      const DeepCollectionEquality().hash(cardVaultUrl) ^
      const DeepCollectionEquality().hash(countryCode) ^
      const DeepCollectionEquality().hash(currencyCode) ^
      const DeepCollectionEquality().hash(enabledPresentmentCurrencies) ^
      const DeepCollectionEquality().hash(shopifyPaymentAccountId) ^
      const DeepCollectionEquality().hash(supportedDigitalWallets);

  @JsonKey(ignore: true)
  @override
  _$PaymentSettingsCopyWith<_PaymentSettings> get copyWith =>
      __$PaymentSettingsCopyWithImpl<_PaymentSettings>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PaymentSettingsToJson(this);
  }
}

abstract class _PaymentSettings implements PaymentSettings {
  factory _PaymentSettings(
      {List<String>? acceptedCardBrands,
      String? cardVaultUrl,
      String? countryCode,
      String? currencyCode,
      List<String>? enabledPresentmentCurrencies,
      String? shopifyPaymentAccountId,
      List<String>? supportedDigitalWallets}) = _$_PaymentSettings;

  factory _PaymentSettings.fromJson(Map<String, dynamic> json) =
      _$_PaymentSettings.fromJson;

  @override
  List<String>? get acceptedCardBrands => throw _privateConstructorUsedError;
  @override
  String? get cardVaultUrl => throw _privateConstructorUsedError;
  @override
  String? get countryCode => throw _privateConstructorUsedError;
  @override
  String? get currencyCode => throw _privateConstructorUsedError;
  @override
  List<String>? get enabledPresentmentCurrencies =>
      throw _privateConstructorUsedError;
  @override
  String? get shopifyPaymentAccountId => throw _privateConstructorUsedError;
  @override
  List<String>? get supportedDigitalWallets =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PaymentSettingsCopyWith<_PaymentSettings> get copyWith =>
      throw _privateConstructorUsedError;
}
