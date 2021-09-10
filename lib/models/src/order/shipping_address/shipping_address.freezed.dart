// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'shipping_address.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ShippingAddress _$ShippingAddressFromJson(Map<String, dynamic> json) {
  return _ShippingAddress.fromJson(json);
}

/// @nodoc
class _$ShippingAddressTearOff {
  const _$ShippingAddressTearOff();

  _ShippingAddress call(
      {required String name,
      required String firstName,
      required String id,
      required String lastName,
      required String address1,
      required String city,
      required String country,
      String? address2,
      String? company,
      String? countryCodeV2,
      double? latitude,
      double? longitude,
      String? phone,
      String? province,
      String? provinceCode,
      required String zip}) {
    return _ShippingAddress(
      name: name,
      firstName: firstName,
      id: id,
      lastName: lastName,
      address1: address1,
      city: city,
      country: country,
      address2: address2,
      company: company,
      countryCodeV2: countryCodeV2,
      latitude: latitude,
      longitude: longitude,
      phone: phone,
      province: province,
      provinceCode: provinceCode,
      zip: zip,
    );
  }

  ShippingAddress fromJson(Map<String, Object> json) {
    return ShippingAddress.fromJson(json);
  }
}

/// @nodoc
const $ShippingAddress = _$ShippingAddressTearOff();

/// @nodoc
mixin _$ShippingAddress {
  String get name => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  String get address1 => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  String? get address2 => throw _privateConstructorUsedError;
  String? get company => throw _privateConstructorUsedError;
  String? get countryCodeV2 => throw _privateConstructorUsedError;
  double? get latitude => throw _privateConstructorUsedError;
  double? get longitude => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get province => throw _privateConstructorUsedError;
  String? get provinceCode => throw _privateConstructorUsedError;
  String get zip => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShippingAddressCopyWith<ShippingAddress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShippingAddressCopyWith<$Res> {
  factory $ShippingAddressCopyWith(
          ShippingAddress value, $Res Function(ShippingAddress) then) =
      _$ShippingAddressCopyWithImpl<$Res>;
  $Res call(
      {String name,
      String firstName,
      String id,
      String lastName,
      String address1,
      String city,
      String country,
      String? address2,
      String? company,
      String? countryCodeV2,
      double? latitude,
      double? longitude,
      String? phone,
      String? province,
      String? provinceCode,
      String zip});
}

/// @nodoc
class _$ShippingAddressCopyWithImpl<$Res>
    implements $ShippingAddressCopyWith<$Res> {
  _$ShippingAddressCopyWithImpl(this._value, this._then);

  final ShippingAddress _value;
  // ignore: unused_field
  final $Res Function(ShippingAddress) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? firstName = freezed,
    Object? id = freezed,
    Object? lastName = freezed,
    Object? address1 = freezed,
    Object? city = freezed,
    Object? country = freezed,
    Object? address2 = freezed,
    Object? company = freezed,
    Object? countryCodeV2 = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? phone = freezed,
    Object? province = freezed,
    Object? provinceCode = freezed,
    Object? zip = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      address1: address1 == freezed
          ? _value.address1
          : address1 // ignore: cast_nullable_to_non_nullable
              as String,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      address2: address2 == freezed
          ? _value.address2
          : address2 // ignore: cast_nullable_to_non_nullable
              as String?,
      company: company == freezed
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String?,
      countryCodeV2: countryCodeV2 == freezed
          ? _value.countryCodeV2
          : countryCodeV2 // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      province: province == freezed
          ? _value.province
          : province // ignore: cast_nullable_to_non_nullable
              as String?,
      provinceCode: provinceCode == freezed
          ? _value.provinceCode
          : provinceCode // ignore: cast_nullable_to_non_nullable
              as String?,
      zip: zip == freezed
          ? _value.zip
          : zip // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ShippingAddressCopyWith<$Res>
    implements $ShippingAddressCopyWith<$Res> {
  factory _$ShippingAddressCopyWith(
          _ShippingAddress value, $Res Function(_ShippingAddress) then) =
      __$ShippingAddressCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      String firstName,
      String id,
      String lastName,
      String address1,
      String city,
      String country,
      String? address2,
      String? company,
      String? countryCodeV2,
      double? latitude,
      double? longitude,
      String? phone,
      String? province,
      String? provinceCode,
      String zip});
}

/// @nodoc
class __$ShippingAddressCopyWithImpl<$Res>
    extends _$ShippingAddressCopyWithImpl<$Res>
    implements _$ShippingAddressCopyWith<$Res> {
  __$ShippingAddressCopyWithImpl(
      _ShippingAddress _value, $Res Function(_ShippingAddress) _then)
      : super(_value, (v) => _then(v as _ShippingAddress));

  @override
  _ShippingAddress get _value => super._value as _ShippingAddress;

  @override
  $Res call({
    Object? name = freezed,
    Object? firstName = freezed,
    Object? id = freezed,
    Object? lastName = freezed,
    Object? address1 = freezed,
    Object? city = freezed,
    Object? country = freezed,
    Object? address2 = freezed,
    Object? company = freezed,
    Object? countryCodeV2 = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? phone = freezed,
    Object? province = freezed,
    Object? provinceCode = freezed,
    Object? zip = freezed,
  }) {
    return _then(_ShippingAddress(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      address1: address1 == freezed
          ? _value.address1
          : address1 // ignore: cast_nullable_to_non_nullable
              as String,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      address2: address2 == freezed
          ? _value.address2
          : address2 // ignore: cast_nullable_to_non_nullable
              as String?,
      company: company == freezed
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String?,
      countryCodeV2: countryCodeV2 == freezed
          ? _value.countryCodeV2
          : countryCodeV2 // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      province: province == freezed
          ? _value.province
          : province // ignore: cast_nullable_to_non_nullable
              as String?,
      provinceCode: provinceCode == freezed
          ? _value.provinceCode
          : provinceCode // ignore: cast_nullable_to_non_nullable
              as String?,
      zip: zip == freezed
          ? _value.zip
          : zip // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ShippingAddress implements _ShippingAddress {
  _$_ShippingAddress(
      {required this.name,
      required this.firstName,
      required this.id,
      required this.lastName,
      required this.address1,
      required this.city,
      required this.country,
      this.address2,
      this.company,
      this.countryCodeV2,
      this.latitude,
      this.longitude,
      this.phone,
      this.province,
      this.provinceCode,
      required this.zip});

  factory _$_ShippingAddress.fromJson(Map<String, dynamic> json) =>
      _$$_ShippingAddressFromJson(json);

  @override
  final String name;
  @override
  final String firstName;
  @override
  final String id;
  @override
  final String lastName;
  @override
  final String address1;
  @override
  final String city;
  @override
  final String country;
  @override
  final String? address2;
  @override
  final String? company;
  @override
  final String? countryCodeV2;
  @override
  final double? latitude;
  @override
  final double? longitude;
  @override
  final String? phone;
  @override
  final String? province;
  @override
  final String? provinceCode;
  @override
  final String zip;

  @override
  String toString() {
    return 'ShippingAddress(name: $name, firstName: $firstName, id: $id, lastName: $lastName, address1: $address1, city: $city, country: $country, address2: $address2, company: $company, countryCodeV2: $countryCodeV2, latitude: $latitude, longitude: $longitude, phone: $phone, province: $province, provinceCode: $provinceCode, zip: $zip)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ShippingAddress &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality()
                    .equals(other.lastName, lastName)) &&
            (identical(other.address1, address1) ||
                const DeepCollectionEquality()
                    .equals(other.address1, address1)) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.country, country) ||
                const DeepCollectionEquality()
                    .equals(other.country, country)) &&
            (identical(other.address2, address2) ||
                const DeepCollectionEquality()
                    .equals(other.address2, address2)) &&
            (identical(other.company, company) ||
                const DeepCollectionEquality()
                    .equals(other.company, company)) &&
            (identical(other.countryCodeV2, countryCodeV2) ||
                const DeepCollectionEquality()
                    .equals(other.countryCodeV2, countryCodeV2)) &&
            (identical(other.latitude, latitude) ||
                const DeepCollectionEquality()
                    .equals(other.latitude, latitude)) &&
            (identical(other.longitude, longitude) ||
                const DeepCollectionEquality()
                    .equals(other.longitude, longitude)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.province, province) ||
                const DeepCollectionEquality()
                    .equals(other.province, province)) &&
            (identical(other.provinceCode, provinceCode) ||
                const DeepCollectionEquality()
                    .equals(other.provinceCode, provinceCode)) &&
            (identical(other.zip, zip) ||
                const DeepCollectionEquality().equals(other.zip, zip)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(lastName) ^
      const DeepCollectionEquality().hash(address1) ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(country) ^
      const DeepCollectionEquality().hash(address2) ^
      const DeepCollectionEquality().hash(company) ^
      const DeepCollectionEquality().hash(countryCodeV2) ^
      const DeepCollectionEquality().hash(latitude) ^
      const DeepCollectionEquality().hash(longitude) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(province) ^
      const DeepCollectionEquality().hash(provinceCode) ^
      const DeepCollectionEquality().hash(zip);

  @JsonKey(ignore: true)
  @override
  _$ShippingAddressCopyWith<_ShippingAddress> get copyWith =>
      __$ShippingAddressCopyWithImpl<_ShippingAddress>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ShippingAddressToJson(this);
  }
}

abstract class _ShippingAddress implements ShippingAddress {
  factory _ShippingAddress(
      {required String name,
      required String firstName,
      required String id,
      required String lastName,
      required String address1,
      required String city,
      required String country,
      String? address2,
      String? company,
      String? countryCodeV2,
      double? latitude,
      double? longitude,
      String? phone,
      String? province,
      String? provinceCode,
      required String zip}) = _$_ShippingAddress;

  factory _ShippingAddress.fromJson(Map<String, dynamic> json) =
      _$_ShippingAddress.fromJson;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get firstName => throw _privateConstructorUsedError;
  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get lastName => throw _privateConstructorUsedError;
  @override
  String get address1 => throw _privateConstructorUsedError;
  @override
  String get city => throw _privateConstructorUsedError;
  @override
  String get country => throw _privateConstructorUsedError;
  @override
  String? get address2 => throw _privateConstructorUsedError;
  @override
  String? get company => throw _privateConstructorUsedError;
  @override
  String? get countryCodeV2 => throw _privateConstructorUsedError;
  @override
  double? get latitude => throw _privateConstructorUsedError;
  @override
  double? get longitude => throw _privateConstructorUsedError;
  @override
  String? get phone => throw _privateConstructorUsedError;
  @override
  String? get province => throw _privateConstructorUsedError;
  @override
  String? get provinceCode => throw _privateConstructorUsedError;
  @override
  String get zip => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ShippingAddressCopyWith<_ShippingAddress> get copyWith =>
      throw _privateConstructorUsedError;
}
