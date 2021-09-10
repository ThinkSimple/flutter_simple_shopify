// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'location_input.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LocationInput _$LocationInputFromJson(Map<String, dynamic> json) {
  return _LocationInput.fromJson(json);
}

/// @nodoc
class _$LocationInputTearOff {
  const _$LocationInputTearOff();

  _LocationInput call({double? latitude, double? longitude}) {
    return _LocationInput(
      latitude: latitude,
      longitude: longitude,
    );
  }

  LocationInput fromJson(Map<String, Object> json) {
    return LocationInput.fromJson(json);
  }
}

/// @nodoc
const $LocationInput = _$LocationInputTearOff();

/// @nodoc
mixin _$LocationInput {
  double? get latitude => throw _privateConstructorUsedError;
  double? get longitude => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationInputCopyWith<LocationInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationInputCopyWith<$Res> {
  factory $LocationInputCopyWith(
          LocationInput value, $Res Function(LocationInput) then) =
      _$LocationInputCopyWithImpl<$Res>;
  $Res call({double? latitude, double? longitude});
}

/// @nodoc
class _$LocationInputCopyWithImpl<$Res>
    implements $LocationInputCopyWith<$Res> {
  _$LocationInputCopyWithImpl(this._value, this._then);

  final LocationInput _value;
  // ignore: unused_field
  final $Res Function(LocationInput) _then;

  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_value.copyWith(
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
abstract class _$LocationInputCopyWith<$Res>
    implements $LocationInputCopyWith<$Res> {
  factory _$LocationInputCopyWith(
          _LocationInput value, $Res Function(_LocationInput) then) =
      __$LocationInputCopyWithImpl<$Res>;
  @override
  $Res call({double? latitude, double? longitude});
}

/// @nodoc
class __$LocationInputCopyWithImpl<$Res>
    extends _$LocationInputCopyWithImpl<$Res>
    implements _$LocationInputCopyWith<$Res> {
  __$LocationInputCopyWithImpl(
      _LocationInput _value, $Res Function(_LocationInput) _then)
      : super(_value, (v) => _then(v as _LocationInput));

  @override
  _LocationInput get _value => super._value as _LocationInput;

  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_LocationInput(
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LocationInput implements _LocationInput {
  _$_LocationInput({this.latitude, this.longitude});

  factory _$_LocationInput.fromJson(Map<String, dynamic> json) =>
      _$$_LocationInputFromJson(json);

  @override
  final double? latitude;
  @override
  final double? longitude;

  @override
  String toString() {
    return 'LocationInput(latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LocationInput &&
            (identical(other.latitude, latitude) ||
                const DeepCollectionEquality()
                    .equals(other.latitude, latitude)) &&
            (identical(other.longitude, longitude) ||
                const DeepCollectionEquality()
                    .equals(other.longitude, longitude)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(latitude) ^
      const DeepCollectionEquality().hash(longitude);

  @JsonKey(ignore: true)
  @override
  _$LocationInputCopyWith<_LocationInput> get copyWith =>
      __$LocationInputCopyWithImpl<_LocationInput>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LocationInputToJson(this);
  }
}

abstract class _LocationInput implements LocationInput {
  factory _LocationInput({double? latitude, double? longitude}) =
      _$_LocationInput;

  factory _LocationInput.fromJson(Map<String, dynamic> json) =
      _$_LocationInput.fromJson;

  @override
  double? get latitude => throw _privateConstructorUsedError;
  @override
  double? get longitude => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LocationInputCopyWith<_LocationInput> get copyWith =>
      throw _privateConstructorUsedError;
}
