// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'checkout_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CheckoutResponse _$CheckoutResponseFromJson(Map<String, dynamic> json) {
  return _CheckoutResponse.fromJson(json);
}

/// @nodoc
class _$CheckoutResponseTearOff {
  const _$CheckoutResponseTearOff();

  _CheckoutResponse call(
      {required String id,
      required String webUrl,
      @JsonKey(fromJson: JsonHelper.lineItemsFromEdges)
          required List<LineItem> lineItems}) {
    return _CheckoutResponse(
      id: id,
      webUrl: webUrl,
      lineItems: lineItems,
    );
  }

  CheckoutResponse fromJson(Map<String, Object> json) {
    return CheckoutResponse.fromJson(json);
  }
}

/// @nodoc
const $CheckoutResponse = _$CheckoutResponseTearOff();

/// @nodoc
mixin _$CheckoutResponse {
  String get id => throw _privateConstructorUsedError;
  String get webUrl => throw _privateConstructorUsedError;
  @JsonKey(fromJson: JsonHelper.lineItemsFromEdges)
  List<LineItem> get lineItems => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CheckoutResponseCopyWith<CheckoutResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckoutResponseCopyWith<$Res> {
  factory $CheckoutResponseCopyWith(
          CheckoutResponse value, $Res Function(CheckoutResponse) then) =
      _$CheckoutResponseCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String webUrl,
      @JsonKey(fromJson: JsonHelper.lineItemsFromEdges)
          List<LineItem> lineItems});
}

/// @nodoc
class _$CheckoutResponseCopyWithImpl<$Res>
    implements $CheckoutResponseCopyWith<$Res> {
  _$CheckoutResponseCopyWithImpl(this._value, this._then);

  final CheckoutResponse _value;
  // ignore: unused_field
  final $Res Function(CheckoutResponse) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? webUrl = freezed,
    Object? lineItems = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      webUrl: webUrl == freezed
          ? _value.webUrl
          : webUrl // ignore: cast_nullable_to_non_nullable
              as String,
      lineItems: lineItems == freezed
          ? _value.lineItems
          : lineItems // ignore: cast_nullable_to_non_nullable
              as List<LineItem>,
    ));
  }
}

/// @nodoc
abstract class _$CheckoutResponseCopyWith<$Res>
    implements $CheckoutResponseCopyWith<$Res> {
  factory _$CheckoutResponseCopyWith(
          _CheckoutResponse value, $Res Function(_CheckoutResponse) then) =
      __$CheckoutResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String webUrl,
      @JsonKey(fromJson: JsonHelper.lineItemsFromEdges)
          List<LineItem> lineItems});
}

/// @nodoc
class __$CheckoutResponseCopyWithImpl<$Res>
    extends _$CheckoutResponseCopyWithImpl<$Res>
    implements _$CheckoutResponseCopyWith<$Res> {
  __$CheckoutResponseCopyWithImpl(
      _CheckoutResponse _value, $Res Function(_CheckoutResponse) _then)
      : super(_value, (v) => _then(v as _CheckoutResponse));

  @override
  _CheckoutResponse get _value => super._value as _CheckoutResponse;

  @override
  $Res call({
    Object? id = freezed,
    Object? webUrl = freezed,
    Object? lineItems = freezed,
  }) {
    return _then(_CheckoutResponse(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      webUrl: webUrl == freezed
          ? _value.webUrl
          : webUrl // ignore: cast_nullable_to_non_nullable
              as String,
      lineItems: lineItems == freezed
          ? _value.lineItems
          : lineItems // ignore: cast_nullable_to_non_nullable
              as List<LineItem>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CheckoutResponse extends _CheckoutResponse {
  _$_CheckoutResponse(
      {required this.id,
      required this.webUrl,
      @JsonKey(fromJson: JsonHelper.lineItemsFromEdges)
          required this.lineItems})
      : super._();

  factory _$_CheckoutResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_CheckoutResponseFromJson(json);

  @override
  final String id;
  @override
  final String webUrl;
  @override
  @JsonKey(fromJson: JsonHelper.lineItemsFromEdges)
  final List<LineItem> lineItems;

  @override
  String toString() {
    return 'CheckoutResponse(id: $id, webUrl: $webUrl, lineItems: $lineItems)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CheckoutResponse &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.webUrl, webUrl) ||
                const DeepCollectionEquality().equals(other.webUrl, webUrl)) &&
            (identical(other.lineItems, lineItems) ||
                const DeepCollectionEquality()
                    .equals(other.lineItems, lineItems)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(webUrl) ^
      const DeepCollectionEquality().hash(lineItems);

  @JsonKey(ignore: true)
  @override
  _$CheckoutResponseCopyWith<_CheckoutResponse> get copyWith =>
      __$CheckoutResponseCopyWithImpl<_CheckoutResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CheckoutResponseToJson(this);
  }
}

abstract class _CheckoutResponse extends CheckoutResponse {
  factory _CheckoutResponse(
      {required String id,
      required String webUrl,
      @JsonKey(fromJson: JsonHelper.lineItemsFromEdges)
          required List<LineItem> lineItems}) = _$_CheckoutResponse;
  _CheckoutResponse._() : super._();

  factory _CheckoutResponse.fromJson(Map<String, dynamic> json) =
      _$_CheckoutResponse.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get webUrl => throw _privateConstructorUsedError;
  @override
  @JsonKey(fromJson: JsonHelper.lineItemsFromEdges)
  List<LineItem> get lineItems => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CheckoutResponseCopyWith<_CheckoutResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
