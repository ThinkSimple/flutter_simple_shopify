// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'attribute.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Attribute _$AttributeFromJson(Map<String, dynamic> json) {
  return _Attribute.fromJson(json);
}

/// @nodoc
class _$AttributeTearOff {
  const _$AttributeTearOff();

  _Attribute call({required String key, String? value}) {
    return _Attribute(
      key: key,
      value: value,
    );
  }

  Attribute fromJson(Map<String, Object?> json) {
    return Attribute.fromJson(json);
  }
}

/// @nodoc
const $Attribute = _$AttributeTearOff();

/// @nodoc
mixin _$Attribute {
  String get key => throw _privateConstructorUsedError;
  String? get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AttributeCopyWith<Attribute> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttributeCopyWith<$Res> {
  factory $AttributeCopyWith(Attribute value, $Res Function(Attribute) then) =
      _$AttributeCopyWithImpl<$Res>;
  $Res call({String key, String? value});
}

/// @nodoc
class _$AttributeCopyWithImpl<$Res> implements $AttributeCopyWith<$Res> {
  _$AttributeCopyWithImpl(this._value, this._then);

  final Attribute _value;
  // ignore: unused_field
  final $Res Function(Attribute) _then;

  @override
  $Res call({
    Object? key = freezed,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$AttributeCopyWith<$Res> implements $AttributeCopyWith<$Res> {
  factory _$AttributeCopyWith(
          _Attribute value, $Res Function(_Attribute) then) =
      __$AttributeCopyWithImpl<$Res>;
  @override
  $Res call({String key, String? value});
}

/// @nodoc
class __$AttributeCopyWithImpl<$Res> extends _$AttributeCopyWithImpl<$Res>
    implements _$AttributeCopyWith<$Res> {
  __$AttributeCopyWithImpl(_Attribute _value, $Res Function(_Attribute) _then)
      : super(_value, (v) => _then(v as _Attribute));

  @override
  _Attribute get _value => super._value as _Attribute;

  @override
  $Res call({
    Object? key = freezed,
    Object? value = freezed,
  }) {
    return _then(_Attribute(
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Attribute extends _Attribute {
  _$_Attribute({required this.key, this.value}) : super._();

  factory _$_Attribute.fromJson(Map<String, dynamic> json) =>
      _$$_AttributeFromJson(json);

  @override
  final String key;
  @override
  final String? value;

  @override
  String toString() {
    return 'Attribute(key: $key, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Attribute &&
            const DeepCollectionEquality().equals(other.key, key) &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(key),
      const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$AttributeCopyWith<_Attribute> get copyWith =>
      __$AttributeCopyWithImpl<_Attribute>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AttributeToJson(this);
  }
}

abstract class _Attribute extends Attribute {
  factory _Attribute({required String key, String? value}) = _$_Attribute;
  _Attribute._() : super._();

  factory _Attribute.fromJson(Map<String, dynamic> json) =
      _$_Attribute.fromJson;

  @override
  String get key;
  @override
  String? get value;
  @override
  @JsonKey(ignore: true)
  _$AttributeCopyWith<_Attribute> get copyWith =>
      throw _privateConstructorUsedError;
}
