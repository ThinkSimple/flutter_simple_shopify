// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'available_shipping_rates.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AvailableShippingRates _$AvailableShippingRatesFromJson(
    Map<String, dynamic> json) {
  return _AvailableShippingRates.fromJson(json);
}

/// @nodoc
mixin _$AvailableShippingRates {
  bool get ready => throw _privateConstructorUsedError;
  List<ShippingRates>? get shippingRates => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AvailableShippingRatesCopyWith<AvailableShippingRates> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AvailableShippingRatesCopyWith<$Res> {
  factory $AvailableShippingRatesCopyWith(AvailableShippingRates value,
          $Res Function(AvailableShippingRates) then) =
      _$AvailableShippingRatesCopyWithImpl<$Res>;
  $Res call({bool ready, List<ShippingRates>? shippingRates});
}

/// @nodoc
class _$AvailableShippingRatesCopyWithImpl<$Res>
    implements $AvailableShippingRatesCopyWith<$Res> {
  _$AvailableShippingRatesCopyWithImpl(this._value, this._then);

  final AvailableShippingRates _value;
  // ignore: unused_field
  final $Res Function(AvailableShippingRates) _then;

  @override
  $Res call({
    Object? ready = freezed,
    Object? shippingRates = freezed,
  }) {
    return _then(_value.copyWith(
      ready: ready == freezed
          ? _value.ready
          : ready // ignore: cast_nullable_to_non_nullable
              as bool,
      shippingRates: shippingRates == freezed
          ? _value.shippingRates
          : shippingRates // ignore: cast_nullable_to_non_nullable
              as List<ShippingRates>?,
    ));
  }
}

/// @nodoc
abstract class _$$_AvailableShippingRatesCopyWith<$Res>
    implements $AvailableShippingRatesCopyWith<$Res> {
  factory _$$_AvailableShippingRatesCopyWith(_$_AvailableShippingRates value,
          $Res Function(_$_AvailableShippingRates) then) =
      __$$_AvailableShippingRatesCopyWithImpl<$Res>;
  @override
  $Res call({bool ready, List<ShippingRates>? shippingRates});
}

/// @nodoc
class __$$_AvailableShippingRatesCopyWithImpl<$Res>
    extends _$AvailableShippingRatesCopyWithImpl<$Res>
    implements _$$_AvailableShippingRatesCopyWith<$Res> {
  __$$_AvailableShippingRatesCopyWithImpl(_$_AvailableShippingRates _value,
      $Res Function(_$_AvailableShippingRates) _then)
      : super(_value, (v) => _then(v as _$_AvailableShippingRates));

  @override
  _$_AvailableShippingRates get _value =>
      super._value as _$_AvailableShippingRates;

  @override
  $Res call({
    Object? ready = freezed,
    Object? shippingRates = freezed,
  }) {
    return _then(_$_AvailableShippingRates(
      ready: ready == freezed
          ? _value.ready
          : ready // ignore: cast_nullable_to_non_nullable
              as bool,
      shippingRates: shippingRates == freezed
          ? _value._shippingRates
          : shippingRates // ignore: cast_nullable_to_non_nullable
              as List<ShippingRates>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AvailableShippingRates extends _AvailableShippingRates {
  _$_AvailableShippingRates(
      {required this.ready, required final List<ShippingRates>? shippingRates})
      : _shippingRates = shippingRates,
        super._();

  factory _$_AvailableShippingRates.fromJson(Map<String, dynamic> json) =>
      _$$_AvailableShippingRatesFromJson(json);

  @override
  final bool ready;
  final List<ShippingRates>? _shippingRates;
  @override
  List<ShippingRates>? get shippingRates {
    final value = _shippingRates;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'AvailableShippingRates(ready: $ready, shippingRates: $shippingRates)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AvailableShippingRates &&
            const DeepCollectionEquality().equals(other.ready, ready) &&
            const DeepCollectionEquality()
                .equals(other._shippingRates, _shippingRates));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(ready),
      const DeepCollectionEquality().hash(_shippingRates));

  @JsonKey(ignore: true)
  @override
  _$$_AvailableShippingRatesCopyWith<_$_AvailableShippingRates> get copyWith =>
      __$$_AvailableShippingRatesCopyWithImpl<_$_AvailableShippingRates>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AvailableShippingRatesToJson(this);
  }
}

abstract class _AvailableShippingRates extends AvailableShippingRates {
  factory _AvailableShippingRates(
          {required final bool ready,
          required final List<ShippingRates>? shippingRates}) =
      _$_AvailableShippingRates;
  _AvailableShippingRates._() : super._();

  factory _AvailableShippingRates.fromJson(Map<String, dynamic> json) =
      _$_AvailableShippingRates.fromJson;

  @override
  bool get ready => throw _privateConstructorUsedError;
  @override
  List<ShippingRates>? get shippingRates => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_AvailableShippingRatesCopyWith<_$_AvailableShippingRates> get copyWith =>
      throw _privateConstructorUsedError;
}
