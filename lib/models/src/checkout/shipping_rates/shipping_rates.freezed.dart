// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'shipping_rates.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ShippingRates _$ShippingRatesFromJson(Map<String, dynamic> json) {
  return _ShippingRates.fromJson(json);
}

/// @nodoc
class _$ShippingRatesTearOff {
  const _$ShippingRatesTearOff();

  _ShippingRates call(
      {required String handle,
      required String title,
      required PriceV2 priceV2}) {
    return _ShippingRates(
      handle: handle,
      title: title,
      priceV2: priceV2,
    );
  }

  ShippingRates fromJson(Map<String, Object> json) {
    return ShippingRates.fromJson(json);
  }
}

/// @nodoc
const $ShippingRates = _$ShippingRatesTearOff();

/// @nodoc
mixin _$ShippingRates {
  String get handle => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  PriceV2 get priceV2 => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShippingRatesCopyWith<ShippingRates> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShippingRatesCopyWith<$Res> {
  factory $ShippingRatesCopyWith(
          ShippingRates value, $Res Function(ShippingRates) then) =
      _$ShippingRatesCopyWithImpl<$Res>;
  $Res call({String handle, String title, PriceV2 priceV2});

  $PriceV2CopyWith<$Res> get priceV2;
}

/// @nodoc
class _$ShippingRatesCopyWithImpl<$Res>
    implements $ShippingRatesCopyWith<$Res> {
  _$ShippingRatesCopyWithImpl(this._value, this._then);

  final ShippingRates _value;
  // ignore: unused_field
  final $Res Function(ShippingRates) _then;

  @override
  $Res call({
    Object? handle = freezed,
    Object? title = freezed,
    Object? priceV2 = freezed,
  }) {
    return _then(_value.copyWith(
      handle: handle == freezed
          ? _value.handle
          : handle // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      priceV2: priceV2 == freezed
          ? _value.priceV2
          : priceV2 // ignore: cast_nullable_to_non_nullable
              as PriceV2,
    ));
  }

  @override
  $PriceV2CopyWith<$Res> get priceV2 {
    return $PriceV2CopyWith<$Res>(_value.priceV2, (value) {
      return _then(_value.copyWith(priceV2: value));
    });
  }
}

/// @nodoc
abstract class _$ShippingRatesCopyWith<$Res>
    implements $ShippingRatesCopyWith<$Res> {
  factory _$ShippingRatesCopyWith(
          _ShippingRates value, $Res Function(_ShippingRates) then) =
      __$ShippingRatesCopyWithImpl<$Res>;
  @override
  $Res call({String handle, String title, PriceV2 priceV2});

  @override
  $PriceV2CopyWith<$Res> get priceV2;
}

/// @nodoc
class __$ShippingRatesCopyWithImpl<$Res>
    extends _$ShippingRatesCopyWithImpl<$Res>
    implements _$ShippingRatesCopyWith<$Res> {
  __$ShippingRatesCopyWithImpl(
      _ShippingRates _value, $Res Function(_ShippingRates) _then)
      : super(_value, (v) => _then(v as _ShippingRates));

  @override
  _ShippingRates get _value => super._value as _ShippingRates;

  @override
  $Res call({
    Object? handle = freezed,
    Object? title = freezed,
    Object? priceV2 = freezed,
  }) {
    return _then(_ShippingRates(
      handle: handle == freezed
          ? _value.handle
          : handle // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      priceV2: priceV2 == freezed
          ? _value.priceV2
          : priceV2 // ignore: cast_nullable_to_non_nullable
              as PriceV2,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ShippingRates extends _ShippingRates {
  _$_ShippingRates(
      {required this.handle, required this.title, required this.priceV2})
      : super._();

  factory _$_ShippingRates.fromJson(Map<String, dynamic> json) =>
      _$$_ShippingRatesFromJson(json);

  @override
  final String handle;
  @override
  final String title;
  @override
  final PriceV2 priceV2;

  @override
  String toString() {
    return 'ShippingRates(handle: $handle, title: $title, priceV2: $priceV2)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ShippingRates &&
            (identical(other.handle, handle) ||
                const DeepCollectionEquality().equals(other.handle, handle)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.priceV2, priceV2) ||
                const DeepCollectionEquality().equals(other.priceV2, priceV2)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(handle) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(priceV2);

  @JsonKey(ignore: true)
  @override
  _$ShippingRatesCopyWith<_ShippingRates> get copyWith =>
      __$ShippingRatesCopyWithImpl<_ShippingRates>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ShippingRatesToJson(this);
  }
}

abstract class _ShippingRates extends ShippingRates {
  factory _ShippingRates(
      {required String handle,
      required String title,
      required PriceV2 priceV2}) = _$_ShippingRates;
  _ShippingRates._() : super._();

  factory _ShippingRates.fromJson(Map<String, dynamic> json) =
      _$_ShippingRates.fromJson;

  @override
  String get handle => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  PriceV2 get priceV2 => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ShippingRatesCopyWith<_ShippingRates> get copyWith =>
      throw _privateConstructorUsedError;
}
