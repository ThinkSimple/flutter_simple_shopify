// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'primary_domain.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PrimaryDomain _$PrimaryDomainFromJson(Map<String, dynamic> json) {
  return _PrimaryDomain.fromJson(json);
}

/// @nodoc
mixin _$PrimaryDomain {
  String? get host => throw _privateConstructorUsedError;
  bool? get sslEnabled => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PrimaryDomainCopyWith<PrimaryDomain> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrimaryDomainCopyWith<$Res> {
  factory $PrimaryDomainCopyWith(
          PrimaryDomain value, $Res Function(PrimaryDomain) then) =
      _$PrimaryDomainCopyWithImpl<$Res>;
  $Res call({String? host, bool? sslEnabled, String? url});
}

/// @nodoc
class _$PrimaryDomainCopyWithImpl<$Res>
    implements $PrimaryDomainCopyWith<$Res> {
  _$PrimaryDomainCopyWithImpl(this._value, this._then);

  final PrimaryDomain _value;
  // ignore: unused_field
  final $Res Function(PrimaryDomain) _then;

  @override
  $Res call({
    Object? host = freezed,
    Object? sslEnabled = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      host: host == freezed
          ? _value.host
          : host // ignore: cast_nullable_to_non_nullable
              as String?,
      sslEnabled: sslEnabled == freezed
          ? _value.sslEnabled
          : sslEnabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_PrimaryDomainCopyWith<$Res>
    implements $PrimaryDomainCopyWith<$Res> {
  factory _$$_PrimaryDomainCopyWith(
          _$_PrimaryDomain value, $Res Function(_$_PrimaryDomain) then) =
      __$$_PrimaryDomainCopyWithImpl<$Res>;
  @override
  $Res call({String? host, bool? sslEnabled, String? url});
}

/// @nodoc
class __$$_PrimaryDomainCopyWithImpl<$Res>
    extends _$PrimaryDomainCopyWithImpl<$Res>
    implements _$$_PrimaryDomainCopyWith<$Res> {
  __$$_PrimaryDomainCopyWithImpl(
      _$_PrimaryDomain _value, $Res Function(_$_PrimaryDomain) _then)
      : super(_value, (v) => _then(v as _$_PrimaryDomain));

  @override
  _$_PrimaryDomain get _value => super._value as _$_PrimaryDomain;

  @override
  $Res call({
    Object? host = freezed,
    Object? sslEnabled = freezed,
    Object? url = freezed,
  }) {
    return _then(_$_PrimaryDomain(
      host: host == freezed
          ? _value.host
          : host // ignore: cast_nullable_to_non_nullable
              as String?,
      sslEnabled: sslEnabled == freezed
          ? _value.sslEnabled
          : sslEnabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PrimaryDomain implements _PrimaryDomain {
  _$_PrimaryDomain({this.host, this.sslEnabled, this.url});

  factory _$_PrimaryDomain.fromJson(Map<String, dynamic> json) =>
      _$$_PrimaryDomainFromJson(json);

  @override
  final String? host;
  @override
  final bool? sslEnabled;
  @override
  final String? url;

  @override
  String toString() {
    return 'PrimaryDomain(host: $host, sslEnabled: $sslEnabled, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PrimaryDomain &&
            const DeepCollectionEquality().equals(other.host, host) &&
            const DeepCollectionEquality()
                .equals(other.sslEnabled, sslEnabled) &&
            const DeepCollectionEquality().equals(other.url, url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(host),
      const DeepCollectionEquality().hash(sslEnabled),
      const DeepCollectionEquality().hash(url));

  @JsonKey(ignore: true)
  @override
  _$$_PrimaryDomainCopyWith<_$_PrimaryDomain> get copyWith =>
      __$$_PrimaryDomainCopyWithImpl<_$_PrimaryDomain>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PrimaryDomainToJson(this);
  }
}

abstract class _PrimaryDomain implements PrimaryDomain {
  factory _PrimaryDomain(
      {final String? host,
      final bool? sslEnabled,
      final String? url}) = _$_PrimaryDomain;

  factory _PrimaryDomain.fromJson(Map<String, dynamic> json) =
      _$_PrimaryDomain.fromJson;

  @override
  String? get host => throw _privateConstructorUsedError;
  @override
  bool? get sslEnabled => throw _privateConstructorUsedError;
  @override
  String? get url => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_PrimaryDomainCopyWith<_$_PrimaryDomain> get copyWith =>
      throw _privateConstructorUsedError;
}
