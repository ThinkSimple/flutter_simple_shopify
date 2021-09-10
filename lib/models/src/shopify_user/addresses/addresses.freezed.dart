// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'addresses.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Addresses _$AddressesFromJson(Map<String, dynamic> json) {
  return _Addresses.fromJson(json);
}

/// @nodoc
class _$AddressesTearOff {
  const _$AddressesTearOff();

  _Addresses call({required List<Address> addressList}) {
    return _Addresses(
      addressList: addressList,
    );
  }

  Addresses fromJson(Map<String, Object> json) {
    return Addresses.fromJson(json);
  }
}

/// @nodoc
const $Addresses = _$AddressesTearOff();

/// @nodoc
mixin _$Addresses {
  List<Address> get addressList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddressesCopyWith<Addresses> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressesCopyWith<$Res> {
  factory $AddressesCopyWith(Addresses value, $Res Function(Addresses) then) =
      _$AddressesCopyWithImpl<$Res>;
  $Res call({List<Address> addressList});
}

/// @nodoc
class _$AddressesCopyWithImpl<$Res> implements $AddressesCopyWith<$Res> {
  _$AddressesCopyWithImpl(this._value, this._then);

  final Addresses _value;
  // ignore: unused_field
  final $Res Function(Addresses) _then;

  @override
  $Res call({
    Object? addressList = freezed,
  }) {
    return _then(_value.copyWith(
      addressList: addressList == freezed
          ? _value.addressList
          : addressList // ignore: cast_nullable_to_non_nullable
              as List<Address>,
    ));
  }
}

/// @nodoc
abstract class _$AddressesCopyWith<$Res> implements $AddressesCopyWith<$Res> {
  factory _$AddressesCopyWith(
          _Addresses value, $Res Function(_Addresses) then) =
      __$AddressesCopyWithImpl<$Res>;
  @override
  $Res call({List<Address> addressList});
}

/// @nodoc
class __$AddressesCopyWithImpl<$Res> extends _$AddressesCopyWithImpl<$Res>
    implements _$AddressesCopyWith<$Res> {
  __$AddressesCopyWithImpl(_Addresses _value, $Res Function(_Addresses) _then)
      : super(_value, (v) => _then(v as _Addresses));

  @override
  _Addresses get _value => super._value as _Addresses;

  @override
  $Res call({
    Object? addressList = freezed,
  }) {
    return _then(_Addresses(
      addressList: addressList == freezed
          ? _value.addressList
          : addressList // ignore: cast_nullable_to_non_nullable
              as List<Address>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Addresses extends _Addresses {
  _$_Addresses({required this.addressList}) : super._();

  factory _$_Addresses.fromJson(Map<String, dynamic> json) =>
      _$$_AddressesFromJson(json);

  @override
  final List<Address> addressList;

  @override
  String toString() {
    return 'Addresses(addressList: $addressList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Addresses &&
            (identical(other.addressList, addressList) ||
                const DeepCollectionEquality()
                    .equals(other.addressList, addressList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(addressList);

  @JsonKey(ignore: true)
  @override
  _$AddressesCopyWith<_Addresses> get copyWith =>
      __$AddressesCopyWithImpl<_Addresses>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AddressesToJson(this);
  }
}

abstract class _Addresses extends Addresses {
  factory _Addresses({required List<Address> addressList}) = _$_Addresses;
  _Addresses._() : super._();

  factory _Addresses.fromJson(Map<String, dynamic> json) =
      _$_Addresses.fromJson;

  @override
  List<Address> get addressList => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AddressesCopyWith<_Addresses> get copyWith =>
      throw _privateConstructorUsedError;
}
