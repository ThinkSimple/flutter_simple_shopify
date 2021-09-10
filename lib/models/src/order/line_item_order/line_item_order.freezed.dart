// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'line_item_order.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LineItemOrder _$LineItemOrderFromJson(Map<String, dynamic> json) {
  return _LineItemOrder.fromJson(json);
}

/// @nodoc
class _$LineItemOrderTearOff {
  const _$LineItemOrderTearOff();

  _LineItemOrder call(
      {required int currentQuantity,
      required PriceV2 discountedTotalPrice,
      required PriceV2 originalTotalPrice,
      required int quantity,
      required String title,
      List<DiscountAllocations> discountAllocations = const [],
      ProductVariantCheckout? variant = null}) {
    return _LineItemOrder(
      currentQuantity: currentQuantity,
      discountedTotalPrice: discountedTotalPrice,
      originalTotalPrice: originalTotalPrice,
      quantity: quantity,
      title: title,
      discountAllocations: discountAllocations,
      variant: variant,
    );
  }

  LineItemOrder fromJson(Map<String, Object> json) {
    return LineItemOrder.fromJson(json);
  }
}

/// @nodoc
const $LineItemOrder = _$LineItemOrderTearOff();

/// @nodoc
mixin _$LineItemOrder {
  int get currentQuantity => throw _privateConstructorUsedError;
  PriceV2 get discountedTotalPrice => throw _privateConstructorUsedError;
  PriceV2 get originalTotalPrice => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  List<DiscountAllocations> get discountAllocations =>
      throw _privateConstructorUsedError;
  ProductVariantCheckout? get variant => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
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
      {int currentQuantity,
      PriceV2 discountedTotalPrice,
      PriceV2 originalTotalPrice,
      int quantity,
      String title,
      List<DiscountAllocations> discountAllocations,
      ProductVariantCheckout? variant});

  $PriceV2CopyWith<$Res> get discountedTotalPrice;
  $PriceV2CopyWith<$Res> get originalTotalPrice;
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
    Object? discountedTotalPrice = freezed,
    Object? originalTotalPrice = freezed,
    Object? quantity = freezed,
    Object? title = freezed,
    Object? discountAllocations = freezed,
    Object? variant = freezed,
  }) {
    return _then(_value.copyWith(
      currentQuantity: currentQuantity == freezed
          ? _value.currentQuantity
          : currentQuantity // ignore: cast_nullable_to_non_nullable
              as int,
      discountedTotalPrice: discountedTotalPrice == freezed
          ? _value.discountedTotalPrice
          : discountedTotalPrice // ignore: cast_nullable_to_non_nullable
              as PriceV2,
      originalTotalPrice: originalTotalPrice == freezed
          ? _value.originalTotalPrice
          : originalTotalPrice // ignore: cast_nullable_to_non_nullable
              as PriceV2,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      discountAllocations: discountAllocations == freezed
          ? _value.discountAllocations
          : discountAllocations // ignore: cast_nullable_to_non_nullable
              as List<DiscountAllocations>,
      variant: variant == freezed
          ? _value.variant
          : variant // ignore: cast_nullable_to_non_nullable
              as ProductVariantCheckout?,
    ));
  }

  @override
  $PriceV2CopyWith<$Res> get discountedTotalPrice {
    return $PriceV2CopyWith<$Res>(_value.discountedTotalPrice, (value) {
      return _then(_value.copyWith(discountedTotalPrice: value));
    });
  }

  @override
  $PriceV2CopyWith<$Res> get originalTotalPrice {
    return $PriceV2CopyWith<$Res>(_value.originalTotalPrice, (value) {
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
      {int currentQuantity,
      PriceV2 discountedTotalPrice,
      PriceV2 originalTotalPrice,
      int quantity,
      String title,
      List<DiscountAllocations> discountAllocations,
      ProductVariantCheckout? variant});

  @override
  $PriceV2CopyWith<$Res> get discountedTotalPrice;
  @override
  $PriceV2CopyWith<$Res> get originalTotalPrice;
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
    Object? discountedTotalPrice = freezed,
    Object? originalTotalPrice = freezed,
    Object? quantity = freezed,
    Object? title = freezed,
    Object? discountAllocations = freezed,
    Object? variant = freezed,
  }) {
    return _then(_LineItemOrder(
      currentQuantity: currentQuantity == freezed
          ? _value.currentQuantity
          : currentQuantity // ignore: cast_nullable_to_non_nullable
              as int,
      discountedTotalPrice: discountedTotalPrice == freezed
          ? _value.discountedTotalPrice
          : discountedTotalPrice // ignore: cast_nullable_to_non_nullable
              as PriceV2,
      originalTotalPrice: originalTotalPrice == freezed
          ? _value.originalTotalPrice
          : originalTotalPrice // ignore: cast_nullable_to_non_nullable
              as PriceV2,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      discountAllocations: discountAllocations == freezed
          ? _value.discountAllocations
          : discountAllocations // ignore: cast_nullable_to_non_nullable
              as List<DiscountAllocations>,
      variant: variant == freezed
          ? _value.variant
          : variant // ignore: cast_nullable_to_non_nullable
              as ProductVariantCheckout?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LineItemOrder extends _LineItemOrder {
  _$_LineItemOrder(
      {required this.currentQuantity,
      required this.discountedTotalPrice,
      required this.originalTotalPrice,
      required this.quantity,
      required this.title,
      this.discountAllocations = const [],
      this.variant = null})
      : super._();

  factory _$_LineItemOrder.fromJson(Map<String, dynamic> json) =>
      _$$_LineItemOrderFromJson(json);

  @override
  final int currentQuantity;
  @override
  final PriceV2 discountedTotalPrice;
  @override
  final PriceV2 originalTotalPrice;
  @override
  final int quantity;
  @override
  final String title;
  @JsonKey(defaultValue: const [])
  @override
  final List<DiscountAllocations> discountAllocations;
  @JsonKey(defaultValue: null)
  @override
  final ProductVariantCheckout? variant;

  @override
  String toString() {
    return 'LineItemOrder(currentQuantity: $currentQuantity, discountedTotalPrice: $discountedTotalPrice, originalTotalPrice: $originalTotalPrice, quantity: $quantity, title: $title, discountAllocations: $discountAllocations, variant: $variant)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LineItemOrder &&
            (identical(other.currentQuantity, currentQuantity) ||
                const DeepCollectionEquality()
                    .equals(other.currentQuantity, currentQuantity)) &&
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
            (identical(other.discountAllocations, discountAllocations) ||
                const DeepCollectionEquality()
                    .equals(other.discountAllocations, discountAllocations)) &&
            (identical(other.variant, variant) ||
                const DeepCollectionEquality().equals(other.variant, variant)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(currentQuantity) ^
      const DeepCollectionEquality().hash(discountedTotalPrice) ^
      const DeepCollectionEquality().hash(originalTotalPrice) ^
      const DeepCollectionEquality().hash(quantity) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(discountAllocations) ^
      const DeepCollectionEquality().hash(variant);

  @JsonKey(ignore: true)
  @override
  _$LineItemOrderCopyWith<_LineItemOrder> get copyWith =>
      __$LineItemOrderCopyWithImpl<_LineItemOrder>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LineItemOrderToJson(this);
  }
}

abstract class _LineItemOrder extends LineItemOrder {
  factory _LineItemOrder(
      {required int currentQuantity,
      required PriceV2 discountedTotalPrice,
      required PriceV2 originalTotalPrice,
      required int quantity,
      required String title,
      List<DiscountAllocations> discountAllocations,
      ProductVariantCheckout? variant}) = _$_LineItemOrder;
  _LineItemOrder._() : super._();

  factory _LineItemOrder.fromJson(Map<String, dynamic> json) =
      _$_LineItemOrder.fromJson;

  @override
  int get currentQuantity => throw _privateConstructorUsedError;
  @override
  PriceV2 get discountedTotalPrice => throw _privateConstructorUsedError;
  @override
  PriceV2 get originalTotalPrice => throw _privateConstructorUsedError;
  @override
  int get quantity => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  List<DiscountAllocations> get discountAllocations =>
      throw _privateConstructorUsedError;
  @override
  ProductVariantCheckout? get variant => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LineItemOrderCopyWith<_LineItemOrder> get copyWith =>
      throw _privateConstructorUsedError;
}
