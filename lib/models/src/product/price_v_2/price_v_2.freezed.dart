// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'price_v_2.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PriceV2 _$PriceV2FromJson(Map<String, dynamic> json) {
  return _PriceV2.fromJson(json);
}

/// @nodoc
class _$PriceV2TearOff {
  const _$PriceV2TearOff();

  _PriceV2 call(
      {@JsonKey(fromJson: JsonHelper.amountFromJson) required double amount,
      required String currencyCode}) {
    return _PriceV2(
      amount: amount,
      currencyCode: currencyCode,
    );
  }

  PriceV2 fromJson(Map<String, Object> json) {
    return PriceV2.fromJson(json);
  }
}

/// @nodoc
const $PriceV2 = _$PriceV2TearOff();

/// @nodoc
mixin _$PriceV2 {
  @JsonKey(fromJson: JsonHelper.amountFromJson)
  double get amount => throw _privateConstructorUsedError;
  String get currencyCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PriceV2CopyWith<PriceV2> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PriceV2CopyWith<$Res> {
  factory $PriceV2CopyWith(PriceV2 value, $Res Function(PriceV2) then) =
      _$PriceV2CopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(fromJson: JsonHelper.amountFromJson) double amount,
      String currencyCode});
}

/// @nodoc
class _$PriceV2CopyWithImpl<$Res> implements $PriceV2CopyWith<$Res> {
  _$PriceV2CopyWithImpl(this._value, this._then);

  final PriceV2 _value;
  // ignore: unused_field
  final $Res Function(PriceV2) _then;

  @override
  $Res call({
    Object? amount = freezed,
    Object? currencyCode = freezed,
  }) {
    return _then(_value.copyWith(
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      currencyCode: currencyCode == freezed
          ? _value.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$PriceV2CopyWith<$Res> implements $PriceV2CopyWith<$Res> {
  factory _$PriceV2CopyWith(_PriceV2 value, $Res Function(_PriceV2) then) =
      __$PriceV2CopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(fromJson: JsonHelper.amountFromJson) double amount,
      String currencyCode});
}

/// @nodoc
class __$PriceV2CopyWithImpl<$Res> extends _$PriceV2CopyWithImpl<$Res>
    implements _$PriceV2CopyWith<$Res> {
  __$PriceV2CopyWithImpl(_PriceV2 _value, $Res Function(_PriceV2) _then)
      : super(_value, (v) => _then(v as _PriceV2));

  @override
  _PriceV2 get _value => super._value as _PriceV2;

  @override
  $Res call({
    Object? amount = freezed,
    Object? currencyCode = freezed,
  }) {
    return _then(_PriceV2(
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      currencyCode: currencyCode == freezed
          ? _value.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PriceV2 extends _PriceV2 {
  _$_PriceV2(
      {@JsonKey(fromJson: JsonHelper.amountFromJson) required this.amount,
      required this.currencyCode})
      : super._();

  factory _$_PriceV2.fromJson(Map<String, dynamic> json) =>
      _$$_PriceV2FromJson(json);

  @override
  @JsonKey(fromJson: JsonHelper.amountFromJson)
  final double amount;
  @override
  final String currencyCode;

  @override
  String toString() {
    return 'PriceV2(amount: $amount, currencyCode: $currencyCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PriceV2 &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.currencyCode, currencyCode) ||
                const DeepCollectionEquality()
                    .equals(other.currencyCode, currencyCode)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(amount) ^
      const DeepCollectionEquality().hash(currencyCode);

  @JsonKey(ignore: true)
  @override
  _$PriceV2CopyWith<_PriceV2> get copyWith =>
      __$PriceV2CopyWithImpl<_PriceV2>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PriceV2ToJson(this);
  }
}

abstract class _PriceV2 extends PriceV2 {
  factory _PriceV2(
      {@JsonKey(fromJson: JsonHelper.amountFromJson) required double amount,
      required String currencyCode}) = _$_PriceV2;
  _PriceV2._() : super._();

  factory _PriceV2.fromJson(Map<String, dynamic> json) = _$_PriceV2.fromJson;

  @override
  @JsonKey(fromJson: JsonHelper.amountFromJson)
  double get amount => throw _privateConstructorUsedError;
  @override
  String get currencyCode => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PriceV2CopyWith<_PriceV2> get copyWith =>
      throw _privateConstructorUsedError;
}
