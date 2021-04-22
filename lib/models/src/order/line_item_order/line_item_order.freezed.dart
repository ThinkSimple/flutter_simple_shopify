// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'line_item_order.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LineItemOrderTearOff {
  const _$LineItemOrderTearOff();

  _LineItemOrder call(
      {int? currentQuantity,
      List<DiscountAllocations>? discountAllocations,
      PriceV2? discountedTotalPrice,
      PriceV2? originalTotalPrice,
      int? quantity,
      String? title,
      ProductVariantCheckout? variant}) {
    return _LineItemOrder(
      currentQuantity: currentQuantity,
      discountAllocations: discountAllocations,
      discountedTotalPrice: discountedTotalPrice,
      originalTotalPrice: originalTotalPrice,
      quantity: quantity,
      title: title,
      variant: variant,
    );
  }
}

/// @nodoc
const $LineItemOrder = _$LineItemOrderTearOff();

/// @nodoc
mixin _$LineItemOrder {
  int? get currentQuantity => throw _privateConstructorUsedError;
  List<DiscountAllocations>? get discountAllocations =>
      throw _privateConstructorUsedError;
  PriceV2? get discountedTotalPrice => throw _privateConstructorUsedError;
  PriceV2? get originalTotalPrice => throw _privateConstructorUsedError;
  int? get quantity => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  ProductVariantCheckout? get variant => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LineItemOrderCopyWith<LineItemOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LineItemOrderCopyWith<$Res> {
  factory $LineItemOrderCopyWith(
          LineItemOrder value, $Res Function(LineItemOrder) then) =
      _$LineItemOrderCopyWithImpl<$Res>;
  $Res call(
      {int? currentQuantity,
      List<DiscountAllocations>? discountAllocations,
      PriceV2? discountedTotalPrice,
      PriceV2? originalTotalPrice,
      int? quantity,
      String? title,
      ProductVariantCheckout? variant});

  $PriceV2CopyWith<$Res>? get discountedTotalPrice;
  $PriceV2CopyWith<$Res>? get originalTotalPrice;
  $ProductVariantCheckoutCopyWith<$Res>? get variant;
}

/// @nodoc
class _$LineItemOrderCopyWithImpl<$Res>
    implements $LineItemOrderCopyWith<$Res> {
  _$LineItemOrderCopyWithImpl(this._value, this._then);

  final LineItemOrder _value;
  // ignore: unused_field
  final $Res Function(LineItemOrder) _then;

  @override
  $Res call({
    Object? currentQuantity = freezed,
    Object? discountAllocations = freezed,
    Object? discountedTotalPrice = freezed,
    Object? originalTotalPrice = freezed,
    Object? quantity = freezed,
    Object? title = freezed,
    Object? variant = freezed,
  }) {
    return _then(_value.copyWith(
      currentQuantity: currentQuantity == freezed
          ? _value.currentQuantity
          : currentQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      discountAllocations: discountAllocations == freezed
          ? _value.discountAllocations
          : discountAllocations // ignore: cast_nullable_to_non_nullable
              as List<DiscountAllocations>?,
      discountedTotalPrice: discountedTotalPrice == freezed
          ? _value.discountedTotalPrice
          : discountedTotalPrice // ignore: cast_nullable_to_non_nullable
              as PriceV2?,
      originalTotalPrice: originalTotalPrice == freezed
          ? _value.originalTotalPrice
          : originalTotalPrice // ignore: cast_nullable_to_non_nullable
              as PriceV2?,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      variant: variant == freezed
          ? _value.variant
          : variant // ignore: cast_nullable_to_non_nullable
              as ProductVariantCheckout?,
    ));
  }

  @override
  $PriceV2CopyWith<$Res>? get discountedTotalPrice {
    if (_value.discountedTotalPrice == null) {
      return null;
    }

    return $PriceV2CopyWith<$Res>(_value.discountedTotalPrice!, (value) {
      return _then(_value.copyWith(discountedTotalPrice: value));
    });
  }

  @override
  $PriceV2CopyWith<$Res>? get originalTotalPrice {
    if (_value.originalTotalPrice == null) {
      return null;
    }

    return $PriceV2CopyWith<$Res>(_value.originalTotalPrice!, (value) {
      return _then(_value.copyWith(originalTotalPrice: value));
    });
  }

  @override
  $ProductVariantCheckoutCopyWith<$Res>? get variant {
    if (_value.variant == null) {
      return null;
    }

    return $ProductVariantCheckoutCopyWith<$Res>(_value.variant!, (value) {
      return _then(_value.copyWith(variant: value));
    });
  }
}

/// @nodoc
abstract class _$LineItemOrderCopyWith<$Res>
    implements $LineItemOrderCopyWith<$Res> {
  factory _$LineItemOrderCopyWith(
          _LineItemOrder value, $Res Function(_LineItemOrder) then) =
      __$LineItemOrderCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? currentQuantity,
      List<DiscountAllocations>? discountAllocations,
      PriceV2? discountedTotalPrice,
      PriceV2? originalTotalPrice,
      int? quantity,
      String? title,
      ProductVariantCheckout? variant});

  @override
  $PriceV2CopyWith<$Res>? get discountedTotalPrice;
  @override
  $PriceV2CopyWith<$Res>? get originalTotalPrice;
  @override
  $ProductVariantCheckoutCopyWith<$Res>? get variant;
}

/// @nodoc
class __$LineItemOrderCopyWithImpl<$Res>
    extends _$LineItemOrderCopyWithImpl<$Res>
    implements _$LineItemOrderCopyWith<$Res> {
  __$LineItemOrderCopyWithImpl(
      _LineItemOrder _value, $Res Function(_LineItemOrder) _then)
      : super(_value, (v) => _then(v as _LineItemOrder));

  @override
  _LineItemOrder get _value => super._value as _LineItemOrder;

  @override
  $Res call({
    Object? currentQuantity = freezed,
    Object? discountAllocations = freezed,
    Object? discountedTotalPrice = freezed,
    Object? originalTotalPrice = freezed,
    Object? quantity = freezed,
    Object? title = freezed,
    Object? variant = freezed,
  }) {
    return _then(_LineItemOrder(
      currentQuantity: currentQuantity == freezed
          ? _value.currentQuantity
          : currentQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      discountAllocations: discountAllocations == freezed
          ? _value.discountAllocations
          : discountAllocations // ignore: cast_nullable_to_non_nullable
              as List<DiscountAllocations>?,
      discountedTotalPrice: discountedTotalPrice == freezed
          ? _value.discountedTotalPrice
          : discountedTotalPrice // ignore: cast_nullable_to_non_nullable
              as PriceV2?,
      originalTotalPrice: originalTotalPrice == freezed
          ? _value.originalTotalPrice
          : originalTotalPrice // ignore: cast_nullable_to_non_nullable
              as PriceV2?,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      variant: variant == freezed
          ? _value.variant
          : variant // ignore: cast_nullable_to_non_nullable
              as ProductVariantCheckout?,
    ));
  }
}

/// @nodoc
class _$_LineItemOrder extends _LineItemOrder {
  _$_LineItemOrder(
      {this.currentQuantity,
      this.discountAllocations,
      this.discountedTotalPrice,
      this.originalTotalPrice,
      this.quantity,
      this.title,
      this.variant})
      : super._();

  @override
  final int? currentQuantity;
  @override
  final List<DiscountAllocations>? discountAllocations;
  @override
  final PriceV2? discountedTotalPrice;
  @override
  final PriceV2? originalTotalPrice;
  @override
  final int? quantity;
  @override
  final String? title;
  @override
  final ProductVariantCheckout? variant;

  @override
  String toString() {
    return 'LineItemOrder(currentQuantity: $currentQuantity, discountAllocations: $discountAllocations, discountedTotalPrice: $discountedTotalPrice, originalTotalPrice: $originalTotalPrice, quantity: $quantity, title: $title, variant: $variant)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LineItemOrder &&
            (identical(other.currentQuantity, currentQuantity) ||
                const DeepCollectionEquality()
                    .equals(other.currentQuantity, currentQuantity)) &&
            (identical(other.discountAllocations, discountAllocations) ||
                const DeepCollectionEquality()
                    .equals(other.discountAllocations, discountAllocations)) &&
            (identical(other.discountedTotalPrice, discountedTotalPrice) ||
                const DeepCollectionEquality().equals(
                    other.discountedTotalPrice, discountedTotalPrice)) &&
            (identical(other.originalTotalPrice, originalTotalPrice) ||
                const DeepCollectionEquality()
                    .equals(other.originalTotalPrice, originalTotalPrice)) &&
            (identical(other.quantity, quantity) ||
                const DeepCollectionEquality()
                    .equals(other.quantity, quantity)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.variant, variant) ||
                const DeepCollectionEquality().equals(other.variant, variant)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(currentQuantity) ^
      const DeepCollectionEquality().hash(discountAllocations) ^
      const DeepCollectionEquality().hash(discountedTotalPrice) ^
      const DeepCollectionEquality().hash(originalTotalPrice) ^
      const DeepCollectionEquality().hash(quantity) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(variant);

  @JsonKey(ignore: true)
  @override
  _$LineItemOrderCopyWith<_LineItemOrder> get copyWith =>
      __$LineItemOrderCopyWithImpl<_LineItemOrder>(this, _$identity);
}

abstract class _LineItemOrder extends LineItemOrder {
  factory _LineItemOrder(
      {int? currentQuantity,
      List<DiscountAllocations>? discountAllocations,
      PriceV2? discountedTotalPrice,
      PriceV2? originalTotalPrice,
      int? quantity,
      String? title,
      ProductVariantCheckout? variant}) = _$_LineItemOrder;
  _LineItemOrder._() : super._();

  @override
  int? get currentQuantity => throw _privateConstructorUsedError;
  @override
  List<DiscountAllocations>? get discountAllocations =>
      throw _privateConstructorUsedError;
  @override
  PriceV2? get discountedTotalPrice => throw _privateConstructorUsedError;
  @override
  PriceV2? get originalTotalPrice => throw _privateConstructorUsedError;
  @override
  int? get quantity => throw _privateConstructorUsedError;
  @override
  String? get title => throw _privateConstructorUsedError;
  @override
  ProductVariantCheckout? get variant => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LineItemOrderCopyWith<_LineItemOrder> get copyWith =>
      throw _privateConstructorUsedError;
}
