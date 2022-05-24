// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'address_prediction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AddressPrediction _$AddressPredictionFromJson(Map<String, dynamic> json) {
  return _AddressPrediction.fromJson(json);
}

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
abstract class _$$_AddressPredictionCopyWith<$Res>
    implements $AddressPredictionCopyWith<$Res> {
  factory _$$_AddressPredictionCopyWith(_$_AddressPrediction value,
          $Res Function(_$_AddressPrediction) then) =
      __$$_AddressPredictionCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? addressId,
      String? description,
      List<MatchedSubstring>? matchedSubstrings});
}

/// @nodoc
class __$$_AddressPredictionCopyWithImpl<$Res>
    extends _$AddressPredictionCopyWithImpl<$Res>
    implements _$$_AddressPredictionCopyWith<$Res> {
  __$$_AddressPredictionCopyWithImpl(
      _$_AddressPrediction _value, $Res Function(_$_AddressPrediction) _then)
      : super(_value, (v) => _then(v as _$_AddressPrediction));

  @override
  _$_AddressPrediction get _value => super._value as _$_AddressPrediction;

  @override
  $Res call({
    Object? addressId = freezed,
    Object? description = freezed,
    Object? matchedSubstrings = freezed,
  }) {
    return _then(_$_AddressPrediction(
      addressId: addressId == freezed
          ? _value.addressId
          : addressId // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      matchedSubstrings: matchedSubstrings == freezed
          ? _value._matchedSubstrings
          : matchedSubstrings // ignore: cast_nullable_to_non_nullable
              as List<MatchedSubstring>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AddressPrediction implements _AddressPrediction {
  const _$_AddressPrediction(
      {this.addressId,
      this.description,
      final List<MatchedSubstring>? matchedSubstrings})
      : _matchedSubstrings = matchedSubstrings;

  factory _$_AddressPrediction.fromJson(Map<String, dynamic> json) =>
      _$$_AddressPredictionFromJson(json);

  @override
  final String? addressId;
  @override
  final String? description;
  final List<MatchedSubstring>? _matchedSubstrings;
  @override
  List<MatchedSubstring>? get matchedSubstrings {
    final value = _matchedSubstrings;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'AddressPrediction(addressId: $addressId, description: $description, matchedSubstrings: $matchedSubstrings)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddressPrediction &&
            const DeepCollectionEquality().equals(other.addressId, addressId) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality()
                .equals(other._matchedSubstrings, _matchedSubstrings));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(addressId),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(_matchedSubstrings));

  @JsonKey(ignore: true)
  @override
  _$$_AddressPredictionCopyWith<_$_AddressPrediction> get copyWith =>
      __$$_AddressPredictionCopyWithImpl<_$_AddressPrediction>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AddressPredictionToJson(this);
  }
}

abstract class _AddressPrediction implements AddressPrediction {
  const factory _AddressPrediction(
      {final String? addressId,
      final String? description,
      final List<MatchedSubstring>? matchedSubstrings}) = _$_AddressPrediction;

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
  _$$_AddressPredictionCopyWith<_$_AddressPrediction> get copyWith =>
      throw _privateConstructorUsedError;
}
