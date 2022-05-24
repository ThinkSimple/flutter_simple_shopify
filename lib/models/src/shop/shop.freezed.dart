// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'shop.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Shop _$ShopFromJson(Map<String, dynamic> json) {
  return _Shop.fromJson(json);
}

/// @nodoc
mixin _$Shop {
  String? get description => throw _privateConstructorUsedError;
  String? get moneyFormat => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  PaymentSettings? get paymentSettings => throw _privateConstructorUsedError;
  PrimaryDomain? get primaryDomain => throw _privateConstructorUsedError;
  PrivacyPolicy? get privacyPolicy => throw _privateConstructorUsedError;
  RefundPolicy? get refundPolicy => throw _privateConstructorUsedError;
  List<String>? get shipsToCountries => throw _privateConstructorUsedError;
  TermsOfService? get termsOfService => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShopCopyWith<Shop> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopCopyWith<$Res> {
  factory $ShopCopyWith(Shop value, $Res Function(Shop) then) =
      _$ShopCopyWithImpl<$Res>;
  $Res call(
      {String? description,
      String? moneyFormat,
      String? name,
      PaymentSettings? paymentSettings,
      PrimaryDomain? primaryDomain,
      PrivacyPolicy? privacyPolicy,
      RefundPolicy? refundPolicy,
      List<String>? shipsToCountries,
      TermsOfService? termsOfService});

  $PaymentSettingsCopyWith<$Res>? get paymentSettings;
  $PrimaryDomainCopyWith<$Res>? get primaryDomain;
  $PrivacyPolicyCopyWith<$Res>? get privacyPolicy;
  $RefundPolicyCopyWith<$Res>? get refundPolicy;
  $TermsOfServiceCopyWith<$Res>? get termsOfService;
}

/// @nodoc
class _$ShopCopyWithImpl<$Res> implements $ShopCopyWith<$Res> {
  _$ShopCopyWithImpl(this._value, this._then);

  final Shop _value;
  // ignore: unused_field
  final $Res Function(Shop) _then;

  @override
  $Res call({
    Object? description = freezed,
    Object? moneyFormat = freezed,
    Object? name = freezed,
    Object? paymentSettings = freezed,
    Object? primaryDomain = freezed,
    Object? privacyPolicy = freezed,
    Object? refundPolicy = freezed,
    Object? shipsToCountries = freezed,
    Object? termsOfService = freezed,
  }) {
    return _then(_value.copyWith(
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      moneyFormat: moneyFormat == freezed
          ? _value.moneyFormat
          : moneyFormat // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentSettings: paymentSettings == freezed
          ? _value.paymentSettings
          : paymentSettings // ignore: cast_nullable_to_non_nullable
              as PaymentSettings?,
      primaryDomain: primaryDomain == freezed
          ? _value.primaryDomain
          : primaryDomain // ignore: cast_nullable_to_non_nullable
              as PrimaryDomain?,
      privacyPolicy: privacyPolicy == freezed
          ? _value.privacyPolicy
          : privacyPolicy // ignore: cast_nullable_to_non_nullable
              as PrivacyPolicy?,
      refundPolicy: refundPolicy == freezed
          ? _value.refundPolicy
          : refundPolicy // ignore: cast_nullable_to_non_nullable
              as RefundPolicy?,
      shipsToCountries: shipsToCountries == freezed
          ? _value.shipsToCountries
          : shipsToCountries // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      termsOfService: termsOfService == freezed
          ? _value.termsOfService
          : termsOfService // ignore: cast_nullable_to_non_nullable
              as TermsOfService?,
    ));
  }

  @override
  $PaymentSettingsCopyWith<$Res>? get paymentSettings {
    if (_value.paymentSettings == null) {
      return null;
    }

    return $PaymentSettingsCopyWith<$Res>(_value.paymentSettings!, (value) {
      return _then(_value.copyWith(paymentSettings: value));
    });
  }

  @override
  $PrimaryDomainCopyWith<$Res>? get primaryDomain {
    if (_value.primaryDomain == null) {
      return null;
    }

    return $PrimaryDomainCopyWith<$Res>(_value.primaryDomain!, (value) {
      return _then(_value.copyWith(primaryDomain: value));
    });
  }

  @override
  $PrivacyPolicyCopyWith<$Res>? get privacyPolicy {
    if (_value.privacyPolicy == null) {
      return null;
    }

    return $PrivacyPolicyCopyWith<$Res>(_value.privacyPolicy!, (value) {
      return _then(_value.copyWith(privacyPolicy: value));
    });
  }

  @override
  $RefundPolicyCopyWith<$Res>? get refundPolicy {
    if (_value.refundPolicy == null) {
      return null;
    }

    return $RefundPolicyCopyWith<$Res>(_value.refundPolicy!, (value) {
      return _then(_value.copyWith(refundPolicy: value));
    });
  }

  @override
  $TermsOfServiceCopyWith<$Res>? get termsOfService {
    if (_value.termsOfService == null) {
      return null;
    }

    return $TermsOfServiceCopyWith<$Res>(_value.termsOfService!, (value) {
      return _then(_value.copyWith(termsOfService: value));
    });
  }
}

/// @nodoc
abstract class _$$_ShopCopyWith<$Res> implements $ShopCopyWith<$Res> {
  factory _$$_ShopCopyWith(_$_Shop value, $Res Function(_$_Shop) then) =
      __$$_ShopCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? description,
      String? moneyFormat,
      String? name,
      PaymentSettings? paymentSettings,
      PrimaryDomain? primaryDomain,
      PrivacyPolicy? privacyPolicy,
      RefundPolicy? refundPolicy,
      List<String>? shipsToCountries,
      TermsOfService? termsOfService});

  @override
  $PaymentSettingsCopyWith<$Res>? get paymentSettings;
  @override
  $PrimaryDomainCopyWith<$Res>? get primaryDomain;
  @override
  $PrivacyPolicyCopyWith<$Res>? get privacyPolicy;
  @override
  $RefundPolicyCopyWith<$Res>? get refundPolicy;
  @override
  $TermsOfServiceCopyWith<$Res>? get termsOfService;
}

/// @nodoc
class __$$_ShopCopyWithImpl<$Res> extends _$ShopCopyWithImpl<$Res>
    implements _$$_ShopCopyWith<$Res> {
  __$$_ShopCopyWithImpl(_$_Shop _value, $Res Function(_$_Shop) _then)
      : super(_value, (v) => _then(v as _$_Shop));

  @override
  _$_Shop get _value => super._value as _$_Shop;

  @override
  $Res call({
    Object? description = freezed,
    Object? moneyFormat = freezed,
    Object? name = freezed,
    Object? paymentSettings = freezed,
    Object? primaryDomain = freezed,
    Object? privacyPolicy = freezed,
    Object? refundPolicy = freezed,
    Object? shipsToCountries = freezed,
    Object? termsOfService = freezed,
  }) {
    return _then(_$_Shop(
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      moneyFormat: moneyFormat == freezed
          ? _value.moneyFormat
          : moneyFormat // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentSettings: paymentSettings == freezed
          ? _value.paymentSettings
          : paymentSettings // ignore: cast_nullable_to_non_nullable
              as PaymentSettings?,
      primaryDomain: primaryDomain == freezed
          ? _value.primaryDomain
          : primaryDomain // ignore: cast_nullable_to_non_nullable
              as PrimaryDomain?,
      privacyPolicy: privacyPolicy == freezed
          ? _value.privacyPolicy
          : privacyPolicy // ignore: cast_nullable_to_non_nullable
              as PrivacyPolicy?,
      refundPolicy: refundPolicy == freezed
          ? _value.refundPolicy
          : refundPolicy // ignore: cast_nullable_to_non_nullable
              as RefundPolicy?,
      shipsToCountries: shipsToCountries == freezed
          ? _value._shipsToCountries
          : shipsToCountries // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      termsOfService: termsOfService == freezed
          ? _value.termsOfService
          : termsOfService // ignore: cast_nullable_to_non_nullable
              as TermsOfService?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Shop implements _Shop {
  _$_Shop(
      {this.description,
      this.moneyFormat,
      this.name,
      this.paymentSettings,
      this.primaryDomain,
      this.privacyPolicy,
      this.refundPolicy,
      final List<String>? shipsToCountries,
      this.termsOfService})
      : _shipsToCountries = shipsToCountries;

  factory _$_Shop.fromJson(Map<String, dynamic> json) => _$$_ShopFromJson(json);

  @override
  final String? description;
  @override
  final String? moneyFormat;
  @override
  final String? name;
  @override
  final PaymentSettings? paymentSettings;
  @override
  final PrimaryDomain? primaryDomain;
  @override
  final PrivacyPolicy? privacyPolicy;
  @override
  final RefundPolicy? refundPolicy;
  final List<String>? _shipsToCountries;
  @override
  List<String>? get shipsToCountries {
    final value = _shipsToCountries;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final TermsOfService? termsOfService;

  @override
  String toString() {
    return 'Shop(description: $description, moneyFormat: $moneyFormat, name: $name, paymentSettings: $paymentSettings, primaryDomain: $primaryDomain, privacyPolicy: $privacyPolicy, refundPolicy: $refundPolicy, shipsToCountries: $shipsToCountries, termsOfService: $termsOfService)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Shop &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality()
                .equals(other.moneyFormat, moneyFormat) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.paymentSettings, paymentSettings) &&
            const DeepCollectionEquality()
                .equals(other.primaryDomain, primaryDomain) &&
            const DeepCollectionEquality()
                .equals(other.privacyPolicy, privacyPolicy) &&
            const DeepCollectionEquality()
                .equals(other.refundPolicy, refundPolicy) &&
            const DeepCollectionEquality()
                .equals(other._shipsToCountries, _shipsToCountries) &&
            const DeepCollectionEquality()
                .equals(other.termsOfService, termsOfService));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(moneyFormat),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(paymentSettings),
      const DeepCollectionEquality().hash(primaryDomain),
      const DeepCollectionEquality().hash(privacyPolicy),
      const DeepCollectionEquality().hash(refundPolicy),
      const DeepCollectionEquality().hash(_shipsToCountries),
      const DeepCollectionEquality().hash(termsOfService));

  @JsonKey(ignore: true)
  @override
  _$$_ShopCopyWith<_$_Shop> get copyWith =>
      __$$_ShopCopyWithImpl<_$_Shop>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ShopToJson(this);
  }
}

abstract class _Shop implements Shop {
  factory _Shop(
      {final String? description,
      final String? moneyFormat,
      final String? name,
      final PaymentSettings? paymentSettings,
      final PrimaryDomain? primaryDomain,
      final PrivacyPolicy? privacyPolicy,
      final RefundPolicy? refundPolicy,
      final List<String>? shipsToCountries,
      final TermsOfService? termsOfService}) = _$_Shop;

  factory _Shop.fromJson(Map<String, dynamic> json) = _$_Shop.fromJson;

  @override
  String? get description => throw _privateConstructorUsedError;
  @override
  String? get moneyFormat => throw _privateConstructorUsedError;
  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  PaymentSettings? get paymentSettings => throw _privateConstructorUsedError;
  @override
  PrimaryDomain? get primaryDomain => throw _privateConstructorUsedError;
  @override
  PrivacyPolicy? get privacyPolicy => throw _privateConstructorUsedError;
  @override
  RefundPolicy? get refundPolicy => throw _privateConstructorUsedError;
  @override
  List<String>? get shipsToCountries => throw _privateConstructorUsedError;
  @override
  TermsOfService? get termsOfService => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ShopCopyWith<_$_Shop> get copyWith => throw _privateConstructorUsedError;
}
