// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'privacy_policy.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PrivacyPolicy _$PrivacyPolicyFromJson(Map<String, dynamic> json) {
  return _PrivacyPolicy.fromJson(json);
}

/// @nodoc
class _$PrivacyPolicyTearOff {
  const _$PrivacyPolicyTearOff();

  _PrivacyPolicy call(
      {String? body, String? handle, String? id, String? title, String? url}) {
    return _PrivacyPolicy(
      body: body,
      handle: handle,
      id: id,
      title: title,
      url: url,
    );
  }

  PrivacyPolicy fromJson(Map<String, Object> json) {
    return PrivacyPolicy.fromJson(json);
  }
}

/// @nodoc
const $PrivacyPolicy = _$PrivacyPolicyTearOff();

/// @nodoc
mixin _$PrivacyPolicy {
  String? get body => throw _privateConstructorUsedError;
  String? get handle => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PrivacyPolicyCopyWith<PrivacyPolicy> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrivacyPolicyCopyWith<$Res> {
  factory $PrivacyPolicyCopyWith(
          PrivacyPolicy value, $Res Function(PrivacyPolicy) then) =
      _$PrivacyPolicyCopyWithImpl<$Res>;
  $Res call(
      {String? body, String? handle, String? id, String? title, String? url});
}

/// @nodoc
class _$PrivacyPolicyCopyWithImpl<$Res>
    implements $PrivacyPolicyCopyWith<$Res> {
  _$PrivacyPolicyCopyWithImpl(this._value, this._then);

  final PrivacyPolicy _value;
  // ignore: unused_field
  final $Res Function(PrivacyPolicy) _then;

  @override
  $Res call({
    Object? body = freezed,
    Object? handle = freezed,
    Object? id = freezed,
    Object? title = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      handle: handle == freezed
          ? _value.handle
          : handle // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$PrivacyPolicyCopyWith<$Res>
    implements $PrivacyPolicyCopyWith<$Res> {
  factory _$PrivacyPolicyCopyWith(
          _PrivacyPolicy value, $Res Function(_PrivacyPolicy) then) =
      __$PrivacyPolicyCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? body, String? handle, String? id, String? title, String? url});
}

/// @nodoc
class __$PrivacyPolicyCopyWithImpl<$Res>
    extends _$PrivacyPolicyCopyWithImpl<$Res>
    implements _$PrivacyPolicyCopyWith<$Res> {
  __$PrivacyPolicyCopyWithImpl(
      _PrivacyPolicy _value, $Res Function(_PrivacyPolicy) _then)
      : super(_value, (v) => _then(v as _PrivacyPolicy));

  @override
  _PrivacyPolicy get _value => super._value as _PrivacyPolicy;

  @override
  $Res call({
    Object? body = freezed,
    Object? handle = freezed,
    Object? id = freezed,
    Object? title = freezed,
    Object? url = freezed,
  }) {
    return _then(_PrivacyPolicy(
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      handle: handle == freezed
          ? _value.handle
          : handle // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PrivacyPolicy implements _PrivacyPolicy {
  _$_PrivacyPolicy({this.body, this.handle, this.id, this.title, this.url});

  factory _$_PrivacyPolicy.fromJson(Map<String, dynamic> json) =>
      _$$_PrivacyPolicyFromJson(json);

  @override
  final String? body;
  @override
  final String? handle;
  @override
  final String? id;
  @override
  final String? title;
  @override
  final String? url;

  @override
  String toString() {
    return 'PrivacyPolicy(body: $body, handle: $handle, id: $id, title: $title, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PrivacyPolicy &&
            (identical(other.body, body) ||
                const DeepCollectionEquality().equals(other.body, body)) &&
            (identical(other.handle, handle) ||
                const DeepCollectionEquality().equals(other.handle, handle)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(body) ^
      const DeepCollectionEquality().hash(handle) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(url);

  @JsonKey(ignore: true)
  @override
  _$PrivacyPolicyCopyWith<_PrivacyPolicy> get copyWith =>
      __$PrivacyPolicyCopyWithImpl<_PrivacyPolicy>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PrivacyPolicyToJson(this);
  }
}

abstract class _PrivacyPolicy implements PrivacyPolicy {
  factory _PrivacyPolicy(
      {String? body,
      String? handle,
      String? id,
      String? title,
      String? url}) = _$_PrivacyPolicy;

  factory _PrivacyPolicy.fromJson(Map<String, dynamic> json) =
      _$_PrivacyPolicy.fromJson;

  @override
  String? get body => throw _privateConstructorUsedError;
  @override
  String? get handle => throw _privateConstructorUsedError;
  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  String? get title => throw _privateConstructorUsedError;
  @override
  String? get url => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PrivacyPolicyCopyWith<_PrivacyPolicy> get copyWith =>
      throw _privateConstructorUsedError;
}
