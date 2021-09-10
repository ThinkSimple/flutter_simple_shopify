// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'discount_allocations.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DiscountAllocations _$DiscountAllocationsFromJson(Map<String, dynamic> json) {
  return _DiscountAllocations.fromJson(json);
}

/// @nodoc
class _$DiscountAllocationsTearOff {
  const _$DiscountAllocationsTearOff();

  _DiscountAllocations call({required PriceV2? allocatedAmount}) {
    return _DiscountAllocations(
      allocatedAmount: allocatedAmount,
    );
  }

  DiscountAllocations fromJson(Map<String, Object> json) {
    return DiscountAllocations.fromJson(json);
  }
}

/// @nodoc
const $DiscountAllocations = _$DiscountAllocationsTearOff();

/// @nodoc
mixin _$DiscountAllocations {
  PriceV2? get allocatedAmount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DiscountAllocationsCopyWith<DiscountAllocations> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiscountAllocationsCopyWith<$Res> {
  factory $DiscountAllocationsCopyWith(
          DiscountAllocations value, $Res Function(DiscountAllocations) then) =
      _$DiscountAllocationsCopyWithImpl<$Res>;
  $Res call({PriceV2? allocatedAmount});

  $PriceV2CopyWith<$Res>? get allocatedAmount;
}

/// @nodoc
class _$DiscountAllocationsCopyWithImpl<$Res>
    implements $DiscountAllocationsCopyWith<$Res> {
  _$DiscountAllocationsCopyWithImpl(this._value, this._then);

  final DiscountAllocations _value;
  // ignore: unused_field
  final $Res Function(DiscountAllocations) _then;

  @override
  $Res call({
    Object? allocatedAmount = freezed,
  }) {
    return _then(_value.copyWith(
      allocatedAmount: allocatedAmount == freezed
          ? _value.allocatedAmount
          : allocatedAmount // ignore: cast_nullable_to_non_nullable
              as PriceV2?,
    ));
  }

  @override
  $PriceV2CopyWith<$Res>? get allocatedAmount {
    if (_value.allocatedAmount == null) {
      return null;
    }

    return $PriceV2CopyWith<$Res>(_value.allocatedAmount!, (value) {
      return _then(_value.copyWith(allocatedAmount: value));
    });
  }
}

/// @nodoc
abstract class _$DiscountAllocationsCopyWith<$Res>
    implements $DiscountAllocationsCopyWith<$Res> {
  factory _$DiscountAllocationsCopyWith(_DiscountAllocations value,
          $Res Function(_DiscountAllocations) then) =
      __$DiscountAllocationsCopyWithImpl<$Res>;
  @override
  $Res call({PriceV2? allocatedAmount});

  @override
  $PriceV2CopyWith<$Res>? get allocatedAmount;
}

/// @nodoc
class __$DiscountAllocationsCopyWithImpl<$Res>
    extends _$DiscountAllocationsCopyWithImpl<$Res>
    implements _$DiscountAllocationsCopyWith<$Res> {
  __$DiscountAllocationsCopyWithImpl(
      _DiscountAllocations _value, $Res Function(_DiscountAllocations) _then)
      : super(_value, (v) => _then(v as _DiscountAllocations));

  @override
  _DiscountAllocations get _value => super._value as _DiscountAllocations;

  @override
  $Res call({
    Object? allocatedAmount = freezed,
  }) {
    return _then(_DiscountAllocations(
      allocatedAmount: allocatedAmount == freezed
          ? _value.allocatedAmount
          : allocatedAmount // ignore: cast_nullable_to_non_nullable
              as PriceV2?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DiscountAllocations extends _DiscountAllocations {
  _$_DiscountAllocations({required this.allocatedAmount}) : super._();

  factory _$_DiscountAllocations.fromJson(Map<String, dynamic> json) =>
      _$$_DiscountAllocationsFromJson(json);

  @override
  final PriceV2? allocatedAmount;

  @override
  String toString() {
    return 'DiscountAllocations(allocatedAmount: $allocatedAmount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DiscountAllocations &&
            (identical(other.allocatedAmount, allocatedAmount) ||
                const DeepCollectionEquality()
                    .equals(other.allocatedAmount, allocatedAmount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(allocatedAmount);

  @JsonKey(ignore: true)
  @override
  _$DiscountAllocationsCopyWith<_DiscountAllocations> get copyWith =>
      __$DiscountAllocationsCopyWithImpl<_DiscountAllocations>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DiscountAllocationsToJson(this);
  }
}

abstract class _DiscountAllocations extends DiscountAllocations {
  factory _DiscountAllocations({required PriceV2? allocatedAmount}) =
      _$_DiscountAllocations;
  _DiscountAllocations._() : super._();

  factory _DiscountAllocations.fromJson(Map<String, dynamic> json) =
      _$_DiscountAllocations.fromJson;

  @override
  PriceV2? get allocatedAmount => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DiscountAllocationsCopyWith<_DiscountAllocations> get copyWith =>
      throw _privateConstructorUsedError;
}
