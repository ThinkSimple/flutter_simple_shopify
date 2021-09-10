// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'shopify_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ShopifyUser _$ShopifyUserFromJson(Map<String, dynamic> json) {
  return _ShopifyUser.fromJson(json);
}

/// @nodoc
class _$ShopifyUserTearOff {
  const _$ShopifyUserTearOff();

  _ShopifyUser call(
      {Addresses? address,
      String? createdAt,
      String? displayName,
      String? email,
      String? firstName,
      String? id,
      String? lastName,
      String? phone,
      List<String>? tags,
      LastIncompleteCheckout? lastIncompleteCheckout}) {
    return _ShopifyUser(
      address: address,
      createdAt: createdAt,
      displayName: displayName,
      email: email,
      firstName: firstName,
      id: id,
      lastName: lastName,
      phone: phone,
      tags: tags,
      lastIncompleteCheckout: lastIncompleteCheckout,
    );
  }

  ShopifyUser fromJson(Map<String, Object> json) {
    return ShopifyUser.fromJson(json);
  }
}

/// @nodoc
const $ShopifyUser = _$ShopifyUserTearOff();

/// @nodoc
mixin _$ShopifyUser {
  Addresses? get address => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get displayName => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get firstName => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  String? get lastName => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  List<String>? get tags => throw _privateConstructorUsedError;
  LastIncompleteCheckout? get lastIncompleteCheckout =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShopifyUserCopyWith<ShopifyUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopifyUserCopyWith<$Res> {
  factory $ShopifyUserCopyWith(
          ShopifyUser value, $Res Function(ShopifyUser) then) =
      _$ShopifyUserCopyWithImpl<$Res>;
  $Res call(
      {Addresses? address,
      String? createdAt,
      String? displayName,
      String? email,
      String? firstName,
      String? id,
      String? lastName,
      String? phone,
      List<String>? tags,
      LastIncompleteCheckout? lastIncompleteCheckout});

  $AddressesCopyWith<$Res>? get address;
  $LastIncompleteCheckoutCopyWith<$Res>? get lastIncompleteCheckout;
}

/// @nodoc
class _$ShopifyUserCopyWithImpl<$Res> implements $ShopifyUserCopyWith<$Res> {
  _$ShopifyUserCopyWithImpl(this._value, this._then);

  final ShopifyUser _value;
  // ignore: unused_field
  final $Res Function(ShopifyUser) _then;

  @override
  $Res call({
    Object? address = freezed,
    Object? createdAt = freezed,
    Object? displayName = freezed,
    Object? email = freezed,
    Object? firstName = freezed,
    Object? id = freezed,
    Object? lastName = freezed,
    Object? phone = freezed,
    Object? tags = freezed,
    Object? lastIncompleteCheckout = freezed,
  }) {
    return _then(_value.copyWith(
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Addresses?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: tags == freezed
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      lastIncompleteCheckout: lastIncompleteCheckout == freezed
          ? _value.lastIncompleteCheckout
          : lastIncompleteCheckout // ignore: cast_nullable_to_non_nullable
              as LastIncompleteCheckout?,
    ));
  }

  @override
  $AddressesCopyWith<$Res>? get address {
    if (_value.address == null) {
      return null;
    }

    return $AddressesCopyWith<$Res>(_value.address!, (value) {
      return _then(_value.copyWith(address: value));
    });
  }

  @override
  $LastIncompleteCheckoutCopyWith<$Res>? get lastIncompleteCheckout {
    if (_value.lastIncompleteCheckout == null) {
      return null;
    }

    return $LastIncompleteCheckoutCopyWith<$Res>(_value.lastIncompleteCheckout!,
        (value) {
      return _then(_value.copyWith(lastIncompleteCheckout: value));
    });
  }
}

/// @nodoc
abstract class _$ShopifyUserCopyWith<$Res>
    implements $ShopifyUserCopyWith<$Res> {
  factory _$ShopifyUserCopyWith(
          _ShopifyUser value, $Res Function(_ShopifyUser) then) =
      __$ShopifyUserCopyWithImpl<$Res>;
  @override
  $Res call(
      {Addresses? address,
      String? createdAt,
      String? displayName,
      String? email,
      String? firstName,
      String? id,
      String? lastName,
      String? phone,
      List<String>? tags,
      LastIncompleteCheckout? lastIncompleteCheckout});

  @override
  $AddressesCopyWith<$Res>? get address;
  @override
  $LastIncompleteCheckoutCopyWith<$Res>? get lastIncompleteCheckout;
}

/// @nodoc
class __$ShopifyUserCopyWithImpl<$Res> extends _$ShopifyUserCopyWithImpl<$Res>
    implements _$ShopifyUserCopyWith<$Res> {
  __$ShopifyUserCopyWithImpl(
      _ShopifyUser _value, $Res Function(_ShopifyUser) _then)
      : super(_value, (v) => _then(v as _ShopifyUser));

  @override
  _ShopifyUser get _value => super._value as _ShopifyUser;

  @override
  $Res call({
    Object? address = freezed,
    Object? createdAt = freezed,
    Object? displayName = freezed,
    Object? email = freezed,
    Object? firstName = freezed,
    Object? id = freezed,
    Object? lastName = freezed,
    Object? phone = freezed,
    Object? tags = freezed,
    Object? lastIncompleteCheckout = freezed,
  }) {
    return _then(_ShopifyUser(
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Addresses?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: tags == freezed
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      lastIncompleteCheckout: lastIncompleteCheckout == freezed
          ? _value.lastIncompleteCheckout
          : lastIncompleteCheckout // ignore: cast_nullable_to_non_nullable
              as LastIncompleteCheckout?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ShopifyUser implements _ShopifyUser {
  _$_ShopifyUser(
      {this.address,
      this.createdAt,
      this.displayName,
      this.email,
      this.firstName,
      this.id,
      this.lastName,
      this.phone,
      this.tags,
      this.lastIncompleteCheckout});

  factory _$_ShopifyUser.fromJson(Map<String, dynamic> json) =>
      _$$_ShopifyUserFromJson(json);

  @override
  final Addresses? address;
  @override
  final String? createdAt;
  @override
  final String? displayName;
  @override
  final String? email;
  @override
  final String? firstName;
  @override
  final String? id;
  @override
  final String? lastName;
  @override
  final String? phone;
  @override
  final List<String>? tags;
  @override
  final LastIncompleteCheckout? lastIncompleteCheckout;

  @override
  String toString() {
    return 'ShopifyUser(address: $address, createdAt: $createdAt, displayName: $displayName, email: $email, firstName: $firstName, id: $id, lastName: $lastName, phone: $phone, tags: $tags, lastIncompleteCheckout: $lastIncompleteCheckout)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ShopifyUser &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.displayName, displayName) ||
                const DeepCollectionEquality()
                    .equals(other.displayName, displayName)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality()
                    .equals(other.lastName, lastName)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.tags, tags) ||
                const DeepCollectionEquality().equals(other.tags, tags)) &&
            (identical(other.lastIncompleteCheckout, lastIncompleteCheckout) ||
                const DeepCollectionEquality().equals(
                    other.lastIncompleteCheckout, lastIncompleteCheckout)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(displayName) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(lastName) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(tags) ^
      const DeepCollectionEquality().hash(lastIncompleteCheckout);

  @JsonKey(ignore: true)
  @override
  _$ShopifyUserCopyWith<_ShopifyUser> get copyWith =>
      __$ShopifyUserCopyWithImpl<_ShopifyUser>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ShopifyUserToJson(this);
  }
}

abstract class _ShopifyUser implements ShopifyUser {
  factory _ShopifyUser(
      {Addresses? address,
      String? createdAt,
      String? displayName,
      String? email,
      String? firstName,
      String? id,
      String? lastName,
      String? phone,
      List<String>? tags,
      LastIncompleteCheckout? lastIncompleteCheckout}) = _$_ShopifyUser;

  factory _ShopifyUser.fromJson(Map<String, dynamic> json) =
      _$_ShopifyUser.fromJson;

  @override
  Addresses? get address => throw _privateConstructorUsedError;
  @override
  String? get createdAt => throw _privateConstructorUsedError;
  @override
  String? get displayName => throw _privateConstructorUsedError;
  @override
  String? get email => throw _privateConstructorUsedError;
  @override
  String? get firstName => throw _privateConstructorUsedError;
  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  String? get lastName => throw _privateConstructorUsedError;
  @override
  String? get phone => throw _privateConstructorUsedError;
  @override
  List<String>? get tags => throw _privateConstructorUsedError;
  @override
  LastIncompleteCheckout? get lastIncompleteCheckout =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ShopifyUserCopyWith<_ShopifyUser> get copyWith =>
      throw _privateConstructorUsedError;
}
