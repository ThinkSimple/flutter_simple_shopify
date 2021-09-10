// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'address_prediction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AddressPrediction _$AddressPredictionFromJson(Map<String, dynamic> json) {
  return _AddressPrediction.fromJson(json);
}

/// @nodoc
class _$AddressPredictionTearOff {
  const _$AddressPredictionTearOff();

  _AddressPrediction call(
      {String? addressId,
      String? description,
      List<MatchedSubstring>? matchedSubstrings}) {
    return _AddressPrediction(
      addressId: addressId,
      description: description,
      matchedSubstrings: matchedSubstrings,
    );
  }

  AddressPrediction fromJson(Map<String, Object> json) {
    return AddressPrediction.fromJson(json);
  }
}

/// @nodoc
const $AddressPrediction = _$AddressPredictionTearOff();

/// @nodoc
mixin _$AddressPrediction {
  String? get addressId => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  List<MatchedSubstring>? get matchedSubstrings =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddressPredictionCopyWith<AddressPrediction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressPredictionCopyWith<$Res> {
  factory $AddressPredictionCopyWith(
          AddressPrediction value, $Res Function(AddressPrediction) then) =
      _$AddressPredictionCopyWithImpl<$Res>;
  $Res call(
      {String? addressId,
      String? description,
      List<MatchedSubstring>? matchedSubstrings});
}

/// @nodoc
class _$AddressPredictionCopyWithImpl<$Res>
    implements $AddressPredictionCopyWith<$Res> {
  _$AddressPredictionCopyWithImpl(this._value, this._then);

  final AddressPrediction _value;
  // ignore: unused_field
  final $Res Function(AddressPrediction) _then;

  @override
  $Res call({
    Object? addressId = freezed,
    Object? description = freezed,
    Object? matchedSubstrings = freezed,
  }) {
    return _then(_value.copyWith(
      addressId: addressId == freezed
          ? _value.addressId
          : addressId // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      matchedSubstrings: matchedSubstrings == freezed
          ? _value.matchedSubstrings
          : matchedSubstrings // ignore: cast_nullable_to_non_nullable
              as List<MatchedSubstring>?,
    ));
  }
}

/// @nodoc
abstract class _$AddressPredictionCopyWith<$Res>
    implements $AddressPredictionCopyWith<$Res> {
  factory _$AddressPredictionCopyWith(
          _AddressPrediction value, $Res Function(_AddressPrediction) then) =
      __$AddressPredictionCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? addressId,
      String? description,
      List<MatchedSubstring>? matchedSubstrings});
}

/// @nodoc
class __$AddressPredictionCopyWithImpl<$Res>
    extends _$AddressPredictionCopyWithImpl<$Res>
    implements _$AddressPredictionCopyWith<$Res> {
  __$AddressPredictionCopyWithImpl(
      _AddressPrediction _value, $Res Function(_AddressPrediction) _then)
      : super(_value, (v) => _then(v as _AddressPrediction));

  @override
  _AddressPrediction get _value => super._value as _AddressPrediction;

  @override
  $Res call({
    Object? addressId = freezed,
    Object? description = freezed,
    Object? matchedSubstrings = freezed,
  }) {
    return _then(_AddressPrediction(
      addressId: addressId == freezed
          ? _value.addressId
          : addressId // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      matchedSubstrings: matchedSubstrings == freezed
          ? _value.matchedSubstrings
          : matchedSubstrings // ignore: cast_nullable_to_non_nullable
              as List<MatchedSubstring>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AddressPrediction implements _AddressPrediction {
  const _$_AddressPrediction(
      {this.addressId, this.description, this.matchedSubstrings});

  factory _$_AddressPrediction.fromJson(Map<String, dynamic> json) =>
      _$$_AddressPredictionFromJson(json);

  @override
  final String? addressId;
  @override
  final String? description;
  @override
  final List<MatchedSubstring>? matchedSubstrings;

  @override
  String toString() {
    return 'AddressPrediction(addressId: $addressId, description: $description, matchedSubstrings: $matchedSubstrings)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddressPrediction &&
            (identical(other.addressId, addressId) ||
                const DeepCollectionEquality()
                    .equals(other.addressId, addressId)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.matchedSubstrings, matchedSubstrings) ||
                const DeepCollectionEquality()
                    .equals(other.matchedSubstrings, matchedSubstrings)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(addressId) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(matchedSubstrings);

  @JsonKey(ignore: true)
  @override
  _$AddressPredictionCopyWith<_AddressPrediction> get copyWith =>
      __$AddressPredictionCopyWithImpl<_AddressPrediction>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AddressPredictionToJson(this);
  }
}

abstract class _AddressPrediction implements AddressPrediction {
  const factory _AddressPrediction(
      {String? addressId,
      String? description,
      List<MatchedSubstring>? matchedSubstrings}) = _$_AddressPrediction;

  factory _AddressPrediction.fromJson(Map<String, dynamic> json) =
      _$_AddressPrediction.fromJson;

  @override
  String? get addressId => throw _privateConstructorUsedError;
  @override
  String? get description => throw _privateConstructorUsedError;
  @override
  List<MatchedSubstring>? get matchedSubstrings =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AddressPredictionCopyWith<_AddressPrediction> get copyWith =>
      throw _privateConstructorUsedError;
}
