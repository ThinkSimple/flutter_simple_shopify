// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'matched_substring.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MatchedSubstring _$MatchedSubstringFromJson(Map<String, dynamic> json) {
  return _MatchedSubstring.fromJson(json);
}

/// @nodoc
class _$MatchedSubstringTearOff {
  const _$MatchedSubstringTearOff();

  _MatchedSubstring call({int? length, int? offset}) {
    return _MatchedSubstring(
      length: length,
      offset: offset,
    );
  }

  MatchedSubstring fromJson(Map<String, Object> json) {
    return MatchedSubstring.fromJson(json);
  }
}

/// @nodoc
const $MatchedSubstring = _$MatchedSubstringTearOff();

/// @nodoc
mixin _$MatchedSubstring {
  int? get length => throw _privateConstructorUsedError;
  int? get offset => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MatchedSubstringCopyWith<MatchedSubstring> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MatchedSubstringCopyWith<$Res> {
  factory $MatchedSubstringCopyWith(
          MatchedSubstring value, $Res Function(MatchedSubstring) then) =
      _$MatchedSubstringCopyWithImpl<$Res>;
  $Res call({int? length, int? offset});
}

/// @nodoc
class _$MatchedSubstringCopyWithImpl<$Res>
    implements $MatchedSubstringCopyWith<$Res> {
  _$MatchedSubstringCopyWithImpl(this._value, this._then);

  final MatchedSubstring _value;
  // ignore: unused_field
  final $Res Function(MatchedSubstring) _then;

  @override
  $Res call({
    Object? length = freezed,
    Object? offset = freezed,
  }) {
    return _then(_value.copyWith(
      length: length == freezed
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int?,
      offset: offset == freezed
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$MatchedSubstringCopyWith<$Res>
    implements $MatchedSubstringCopyWith<$Res> {
  factory _$MatchedSubstringCopyWith(
          _MatchedSubstring value, $Res Function(_MatchedSubstring) then) =
      __$MatchedSubstringCopyWithImpl<$Res>;
  @override
  $Res call({int? length, int? offset});
}

/// @nodoc
class __$MatchedSubstringCopyWithImpl<$Res>
    extends _$MatchedSubstringCopyWithImpl<$Res>
    implements _$MatchedSubstringCopyWith<$Res> {
  __$MatchedSubstringCopyWithImpl(
      _MatchedSubstring _value, $Res Function(_MatchedSubstring) _then)
      : super(_value, (v) => _then(v as _MatchedSubstring));

  @override
  _MatchedSubstring get _value => super._value as _MatchedSubstring;

  @override
  $Res call({
    Object? length = freezed,
    Object? offset = freezed,
  }) {
    return _then(_MatchedSubstring(
      length: length == freezed
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int?,
      offset: offset == freezed
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MatchedSubstring implements _MatchedSubstring {
  const _$_MatchedSubstring({this.length, this.offset});

  factory _$_MatchedSubstring.fromJson(Map<String, dynamic> json) =>
      _$$_MatchedSubstringFromJson(json);

  @override
  final int? length;
  @override
  final int? offset;

  @override
  String toString() {
    return 'MatchedSubstring(length: $length, offset: $offset)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MatchedSubstring &&
            (identical(other.length, length) ||
                const DeepCollectionEquality().equals(other.length, length)) &&
            (identical(other.offset, offset) ||
                const DeepCollectionEquality().equals(other.offset, offset)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(length) ^
      const DeepCollectionEquality().hash(offset);

  @JsonKey(ignore: true)
  @override
  _$MatchedSubstringCopyWith<_MatchedSubstring> get copyWith =>
      __$MatchedSubstringCopyWithImpl<_MatchedSubstring>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MatchedSubstringToJson(this);
  }
}

abstract class _MatchedSubstring implements MatchedSubstring {
  const factory _MatchedSubstring({int? length, int? offset}) =
      _$_MatchedSubstring;

  factory _MatchedSubstring.fromJson(Map<String, dynamic> json) =
      _$_MatchedSubstring.fromJson;

  @override
  int? get length => throw _privateConstructorUsedError;
  @override
  int? get offset => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MatchedSubstringCopyWith<_MatchedSubstring> get copyWith =>
      throw _privateConstructorUsedError;
}
