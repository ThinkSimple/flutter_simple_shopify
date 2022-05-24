// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'line_item_order.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LineItemOrder _$LineItemOrderFromJson(Map<String, dynamic> json) {
  return _LineItemOrder.fromJson(json);
}

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
abstract class _$$_LineItemOrderCopyWith<$Res>
    implements $LineItemOrderCopyWith<$Res> {
  factory _$$_LineItemOrderCopyWith(
          _$_LineItemOrder value, $Res Function(_$_LineItemOrder) then) =
      __$$_LineItemOrderCopyWithImpl<$Res>;
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
class __$$_LineItemOrderCopyWithImpl<$Res>
    extends _$LineItemOrderCopyWithImpl<$Res>
    implements _$$_LineItemOrderCopyWith<$Res> {
  __$$_LineItemOrderCopyWithImpl(
      _$_LineItemOrder _value, $Res Function(_$_LineItemOrder) _then)
      : super(_value, (v) => _then(v as _$_LineItemOrder));

  @override
  _$_LineItemOrder get _value => super._value as _$_LineItemOrder;

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
    return _then(_$_LineItemOrder(
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
          ? _value._discountAllocations
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
      final List<DiscountAllocations> discountAllocations = const [],
      this.variant = null})
      : _discountAllocations = discountAllocations,
        super._();

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
  final List<DiscountAllocations> _discountAllocations;
  @override
  @JsonKey()
  List<DiscountAllocations> get discountAllocations {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_discountAllocations);
  }

  @override
  @JsonKey()
  final ProductVariantCheckout? variant;

  @override
  String toString() {
    return 'LineItemOrder(currentQuantity: $currentQuantity, discountedTotalPrice: $discountedTotalPrice, originalTotalPrice: $originalTotalPrice, quantity: $quantity, title: $title, discountAllocations: $discountAllocations, variant: $variant)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LineItemOrder &&
            const DeepCollectionEquality()
                .equals(other.currentQuantity, currentQuantity) &&
            const DeepCollectionEquality()
                .equals(other.discountedTotalPrice, discountedTotalPrice) &&
            const DeepCollectionEquality()
                .equals(other.originalTotalPrice, originalTotalPrice) &&
            const DeepCollectionEquality().equals(other.quantity, quantity) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other._discountAllocations, _discountAllocations) &&
            const DeepCollectionEquality().equals(other.variant, variant));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(currentQuantity),
      const DeepCollectionEquality().hash(discountedTotalPrice),
      const DeepCollectionEquality().hash(originalTotalPrice),
      const DeepCollectionEquality().hash(quantity),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(_discountAllocations),
      const DeepCollectionEquality().hash(variant));

  @JsonKey(ignore: true)
  @override
  _$$_LineItemOrderCopyWith<_$_LineItemOrder> get copyWith =>
      __$$_LineItemOrderCopyWithImpl<_$_LineItemOrder>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LineItemOrderToJson(this);
  }
}

abstract class _LineItemOrder extends LineItemOrder {
  factory _LineItemOrder(
      {required final int currentQuantity,
      required final PriceV2 discountedTotalPrice,
      required final PriceV2 originalTotalPrice,
      required final int quantity,
      required final String title,
      final List<DiscountAllocations> discountAllocations,
      final ProductVariantCheckout? variant}) = _$_LineItemOrder;
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
  _$$_LineItemOrderCopyWith<_$_LineItemOrder> get copyWith =>
      throw _privateConstructorUsedError;
}
