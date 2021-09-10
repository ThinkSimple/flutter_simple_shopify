// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'terms_of_service.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TermsOfService _$TermsOfServiceFromJson(Map<String, dynamic> json) {
  return _TermsOfService.fromJson(json);
}

/// @nodoc
class _$TermsOfServiceTearOff {
  const _$TermsOfServiceTearOff();

  _TermsOfService call(
      {String? body, String? handle, String? id, String? title, String? url}) {
    return _TermsOfService(
      body: body,
      handle: handle,
      id: id,
      title: title,
      url: url,
    );
  }

  TermsOfService fromJson(Map<String, Object> json) {
    return TermsOfService.fromJson(json);
  }
}

/// @nodoc
const $TermsOfService = _$TermsOfServiceTearOff();

/// @nodoc
mixin _$TermsOfService {
  String? get body => throw _privateConstructorUsedError;
  String? get handle => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TermsOfServiceCopyWith<TermsOfService> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TermsOfServiceCopyWith<$Res> {
  factory $TermsOfServiceCopyWith(
          TermsOfService value, $Res Function(TermsOfService) then) =
      _$TermsOfServiceCopyWithImpl<$Res>;
  $Res call(
      {String? body, String? handle, String? id, String? title, String? url});
}

/// @nodoc
class _$TermsOfServiceCopyWithImpl<$Res>
    implements $TermsOfServiceCopyWith<$Res> {
  _$TermsOfServiceCopyWithImpl(this._value, this._then);

  final TermsOfService _value;
  // ignore: unused_field
  final $Res Function(TermsOfService) _then;

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
abstract class _$TermsOfServiceCopyWith<$Res>
    implements $TermsOfServiceCopyWith<$Res> {
  factory _$TermsOfServiceCopyWith(
          _TermsOfService value, $Res Function(_TermsOfService) then) =
      __$TermsOfServiceCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? body, String? handle, String? id, String? title, String? url});
}

/// @nodoc
class __$TermsOfServiceCopyWithImpl<$Res>
    extends _$TermsOfServiceCopyWithImpl<$Res>
    implements _$TermsOfServiceCopyWith<$Res> {
  __$TermsOfServiceCopyWithImpl(
      _TermsOfService _value, $Res Function(_TermsOfService) _then)
      : super(_value, (v) => _then(v as _TermsOfService));

  @override
  _TermsOfService get _value => super._value as _TermsOfService;

  @override
  $Res call({
    Object? body = freezed,
    Object? handle = freezed,
    Object? id = freezed,
    Object? title = freezed,
    Object? url = freezed,
  }) {
    return _then(_TermsOfService(
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
class _$_TermsOfService implements _TermsOfService {
  _$_TermsOfService({this.body, this.handle, this.id, this.title, this.url});

  factory _$_TermsOfService.fromJson(Map<String, dynamic> json) =>
      _$$_TermsOfServiceFromJson(json);

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
    return 'TermsOfService(body: $body, handle: $handle, id: $id, title: $title, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TermsOfService &&
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
  _$TermsOfServiceCopyWith<_TermsOfService> get copyWith =>
      __$TermsOfServiceCopyWithImpl<_TermsOfService>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TermsOfServiceToJson(this);
  }
}

abstract class _TermsOfService implements TermsOfService {
  factory _TermsOfService(
      {String? body,
      String? handle,
      String? id,
      String? title,
      String? url}) = _$_TermsOfService;

  factory _TermsOfService.fromJson(Map<String, dynamic> json) =
      _$_TermsOfService.fromJson;

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
  _$TermsOfServiceCopyWith<_TermsOfService> get copyWith =>
      throw _privateConstructorUsedError;
}
