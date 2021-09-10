// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'selected_option.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SelectedOption _$SelectedOptionFromJson(Map<String, dynamic> json) {
  return _SelectedOption.fromJson(json);
}

/// @nodoc
class _$SelectedOptionTearOff {
  const _$SelectedOptionTearOff();

  _SelectedOption call({required String name, required String value}) {
    return _SelectedOption(
      name: name,
      value: value,
    );
  }

  SelectedOption fromJson(Map<String, Object> json) {
    return SelectedOption.fromJson(json);
  }
}

/// @nodoc
const $SelectedOption = _$SelectedOptionTearOff();

/// @nodoc
mixin _$SelectedOption {
  String get name => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SelectedOptionCopyWith<SelectedOption> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectedOptionCopyWith<$Res> {
  factory $SelectedOptionCopyWith(
          SelectedOption value, $Res Function(SelectedOption) then) =
      _$SelectedOptionCopyWithImpl<$Res>;
  $Res call({String name, String value});
}

/// @nodoc
class _$SelectedOptionCopyWithImpl<$Res>
    implements $SelectedOptionCopyWith<$Res> {
  _$SelectedOptionCopyWithImpl(this._value, this._then);

  final SelectedOption _value;
  // ignore: unused_field
  final $Res Function(SelectedOption) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$SelectedOptionCopyWith<$Res>
    implements $SelectedOptionCopyWith<$Res> {
  factory _$SelectedOptionCopyWith(
          _SelectedOption value, $Res Function(_SelectedOption) then) =
      __$SelectedOptionCopyWithImpl<$Res>;
  @override
  $Res call({String name, String value});
}

/// @nodoc
class __$SelectedOptionCopyWithImpl<$Res>
    extends _$SelectedOptionCopyWithImpl<$Res>
    implements _$SelectedOptionCopyWith<$Res> {
  __$SelectedOptionCopyWithImpl(
      _SelectedOption _value, $Res Function(_SelectedOption) _then)
      : super(_value, (v) => _then(v as _SelectedOption));

  @override
  _SelectedOption get _value => super._value as _SelectedOption;

  @override
  $Res call({
    Object? name = freezed,
    Object? value = freezed,
  }) {
    return _then(_SelectedOption(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SelectedOption extends _SelectedOption {
  _$_SelectedOption({required this.name, required this.value}) : super._();

  factory _$_SelectedOption.fromJson(Map<String, dynamic> json) =>
      _$$_SelectedOptionFromJson(json);

  @override
  final String name;
  @override
  final String value;

  @override
  String toString() {
    return 'SelectedOption(name: $name, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SelectedOption &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(value);

  @JsonKey(ignore: true)
  @override
  _$SelectedOptionCopyWith<_SelectedOption> get copyWith =>
      __$SelectedOptionCopyWithImpl<_SelectedOption>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SelectedOptionToJson(this);
  }
}

abstract class _SelectedOption extends SelectedOption {
  factory _SelectedOption({required String name, required String value}) =
      _$_SelectedOption;
  _SelectedOption._() : super._();

  factory _SelectedOption.fromJson(Map<String, dynamic> json) =
      _$_SelectedOption.fromJson;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get value => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SelectedOptionCopyWith<_SelectedOption> get copyWith =>
      throw _privateConstructorUsedError;
}
