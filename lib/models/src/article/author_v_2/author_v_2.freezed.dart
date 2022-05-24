// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'author_v_2.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuthorV2 _$AuthorV2FromJson(Map<String, dynamic> json) {
  return _AuthorV2.fromJson(json);
}

/// @nodoc
mixin _$AuthorV2 {
  String? get bio => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get firstName => throw _privateConstructorUsedError;
  String? get lastName => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthorV2CopyWith<AuthorV2> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthorV2CopyWith<$Res> {
  factory $AuthorV2CopyWith(AuthorV2 value, $Res Function(AuthorV2) then) =
      _$AuthorV2CopyWithImpl<$Res>;
  $Res call(
      {String? bio,
      String? email,
      String? firstName,
      String? lastName,
      String? name});
}

/// @nodoc
class _$AuthorV2CopyWithImpl<$Res> implements $AuthorV2CopyWith<$Res> {
  _$AuthorV2CopyWithImpl(this._value, this._then);

  final AuthorV2 _value;
  // ignore: unused_field
  final $Res Function(AuthorV2) _then;

  @override
  $Res call({
    Object? bio = freezed,
    Object? email = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      bio: bio == freezed
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_AuthorV2CopyWith<$Res> implements $AuthorV2CopyWith<$Res> {
  factory _$$_AuthorV2CopyWith(
          _$_AuthorV2 value, $Res Function(_$_AuthorV2) then) =
      __$$_AuthorV2CopyWithImpl<$Res>;
  @override
  $Res call(
      {String? bio,
      String? email,
      String? firstName,
      String? lastName,
      String? name});
}

/// @nodoc
class __$$_AuthorV2CopyWithImpl<$Res> extends _$AuthorV2CopyWithImpl<$Res>
    implements _$$_AuthorV2CopyWith<$Res> {
  __$$_AuthorV2CopyWithImpl(
      _$_AuthorV2 _value, $Res Function(_$_AuthorV2) _then)
      : super(_value, (v) => _then(v as _$_AuthorV2));

  @override
  _$_AuthorV2 get _value => super._value as _$_AuthorV2;

  @override
  $Res call({
    Object? bio = freezed,
    Object? email = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_AuthorV2(
      bio: bio == freezed
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AuthorV2 implements _AuthorV2 {
  _$_AuthorV2({this.bio, this.email, this.firstName, this.lastName, this.name});

  factory _$_AuthorV2.fromJson(Map<String, dynamic> json) =>
      _$$_AuthorV2FromJson(json);

  @override
  final String? bio;
  @override
  final String? email;
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final String? name;

  @override
  String toString() {
    return 'AuthorV2(bio: $bio, email: $email, firstName: $firstName, lastName: $lastName, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthorV2 &&
            const DeepCollectionEquality().equals(other.bio, bio) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.firstName, firstName) &&
            const DeepCollectionEquality().equals(other.lastName, lastName) &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(bio),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(firstName),
      const DeepCollectionEquality().hash(lastName),
      const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$$_AuthorV2CopyWith<_$_AuthorV2> get copyWith =>
      __$$_AuthorV2CopyWithImpl<_$_AuthorV2>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthorV2ToJson(this);
  }
}

abstract class _AuthorV2 implements AuthorV2 {
  factory _AuthorV2(
      {final String? bio,
      final String? email,
      final String? firstName,
      final String? lastName,
      final String? name}) = _$_AuthorV2;

  factory _AuthorV2.fromJson(Map<String, dynamic> json) = _$_AuthorV2.fromJson;

  @override
  String? get bio => throw _privateConstructorUsedError;
  @override
  String? get email => throw _privateConstructorUsedError;
  @override
  String? get firstName => throw _privateConstructorUsedError;
  @override
  String? get lastName => throw _privateConstructorUsedError;
  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_AuthorV2CopyWith<_$_AuthorV2> get copyWith =>
      throw _privateConstructorUsedError;
}
