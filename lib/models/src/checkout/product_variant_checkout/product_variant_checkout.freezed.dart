// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'product_variant_checkout.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductVariantCheckout _$ProductVariantCheckoutFromJson(
    Map<String, dynamic> json) {
  return _ProductVariantCheckout.fromJson(json);
}

/// @nodoc
class _$ProductVariantCheckoutTearOff {
  const _$ProductVariantCheckoutTearOff();

  _ProductVariantCheckout call(
      {required PriceV2 priceV2,
      required String title,
      required bool availableForSale,
      required String sku,
      required bool requiresShipping,
      required String id,
      ShopifyImage? image,
      PriceV2? compareAtPrice,
      double? weight,
      String? weightUnit}) {
    return _ProductVariantCheckout(
      priceV2: priceV2,
      title: title,
      availableForSale: availableForSale,
      sku: sku,
      requiresShipping: requiresShipping,
      id: id,
      image: image,
      compareAtPrice: compareAtPrice,
      weight: weight,
      weightUnit: weightUnit,
    );
  }

  ProductVariantCheckout fromJson(Map<String, Object> json) {
    return ProductVariantCheckout.fromJson(json);
  }
}

/// @nodoc
const $ProductVariantCheckout = _$ProductVariantCheckoutTearOff();

/// @nodoc
mixin _$ProductVariantCheckout {
  PriceV2 get priceV2 => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  bool get availableForSale => throw _privateConstructorUsedError;
  String get sku => throw _privateConstructorUsedError;
  bool get requiresShipping => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  ShopifyImage? get image => throw _privateConstructorUsedError;
  PriceV2? get compareAtPrice => throw _privateConstructorUsedError;
  double? get weight => throw _privateConstructorUsedError;
  String? get weightUnit => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductVariantCheckoutCopyWith<ProductVariantCheckout> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductVariantCheckoutCopyWith<$Res> {
  factory $ProductVariantCheckoutCopyWith(ProductVariantCheckout value,
          $Res Function(ProductVariantCheckout) then) =
      _$ProductVariantCheckoutCopyWithImpl<$Res>;
  $Res call(
      {PriceV2 priceV2,
      String title,
      bool availableForSale,
      String sku,
      bool requiresShipping,
      String id,
      ShopifyImage? image,
      PriceV2? compareAtPrice,
      double? weight,
      String? weightUnit});

  $PriceV2CopyWith<$Res> get priceV2;
  $ShopifyImageCopyWith<$Res>? get image;
  $PriceV2CopyWith<$Res>? get compareAtPrice;
}

/// @nodoc
class _$ProductVariantCheckoutCopyWithImpl<$Res>
    implements $ProductVariantCheckoutCopyWith<$Res> {
  _$ProductVariantCheckoutCopyWithImpl(this._value, this._then);

  final ProductVariantCheckout _value;
  // ignore: unused_field
  final $Res Function(ProductVariantCheckout) _then;

  @override
  $Res call({
    Object? priceV2 = freezed,
    Object? title = freezed,
    Object? availableForSale = freezed,
    Object? sku = freezed,
    Object? requiresShipping = freezed,
    Object? id = freezed,
    Object? image = freezed,
    Object? compareAtPrice = freezed,
    Object? weight = freezed,
    Object? weightUnit = freezed,
  }) {
    return _then(_value.copyWith(
      priceV2: priceV2 == freezed
          ? _value.priceV2
          : priceV2 // ignore: cast_nullable_to_non_nullable
              as PriceV2,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      availableForSale: availableForSale == freezed
          ? _value.availableForSale
          : availableForSale // ignore: cast_nullable_to_non_nullable
              as bool,
      sku: sku == freezed
          ? _value.sku
          : sku // ignore: cast_nullable_to_non_nullable
              as String,
      requiresShipping: requiresShipping == freezed
          ? _value.requiresShipping
          : requiresShipping // ignore: cast_nullable_to_non_nullable
              as bool,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as ShopifyImage?,
      compareAtPrice: compareAtPrice == freezed
          ? _value.compareAtPrice
          : compareAtPrice // ignore: cast_nullable_to_non_nullable
              as PriceV2?,
      weight: weight == freezed
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double?,
      weightUnit: weightUnit == freezed
          ? _value.weightUnit
          : weightUnit // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $PriceV2CopyWith<$Res> get priceV2 {
    return $PriceV2CopyWith<$Res>(_value.priceV2, (value) {
      return _then(_value.copyWith(priceV2: value));
    });
  }

  @override
  $ShopifyImageCopyWith<$Res>? get image {
    if (_value.image == null) {
      return null;
    }

    return $ShopifyImageCopyWith<$Res>(_value.image!, (value) {
      return _then(_value.copyWith(image: value));
    });
  }

  @override
  $PriceV2CopyWith<$Res>? get compareAtPrice {
    if (_value.compareAtPrice == null) {
      return null;
    }

    return $PriceV2CopyWith<$Res>(_value.compareAtPrice!, (value) {
      return _then(_value.copyWith(compareAtPrice: value));
    });
  }
}

/// @nodoc
abstract class _$ProductVariantCheckoutCopyWith<$Res>
    implements $ProductVariantCheckoutCopyWith<$Res> {
  factory _$ProductVariantCheckoutCopyWith(_ProductVariantCheckout value,
          $Res Function(_ProductVariantCheckout) then) =
      __$ProductVariantCheckoutCopyWithImpl<$Res>;
  @override
  $Res call(
      {PriceV2 priceV2,
      String title,
      bool availableForSale,
      String sku,
      bool requiresShipping,
      String id,
      ShopifyImage? image,
      PriceV2? compareAtPrice,
      double? weight,
      String? weightUnit});

  @override
  $PriceV2CopyWith<$Res> get priceV2;
  @override
  $ShopifyImageCopyWith<$Res>? get image;
  @override
  $PriceV2CopyWith<$Res>? get compareAtPrice;
}

/// @nodoc
class __$ProductVariantCheckoutCopyWithImpl<$Res>
    extends _$ProductVariantCheckoutCopyWithImpl<$Res>
    implements _$ProductVariantCheckoutCopyWith<$Res> {
  __$ProductVariantCheckoutCopyWithImpl(_ProductVariantCheckout _value,
      $Res Function(_ProductVariantCheckout) _then)
      : super(_value, (v) => _then(v as _ProductVariantCheckout));

  @override
  _ProductVariantCheckout get _value => super._value as _ProductVariantCheckout;

  @override
  $Res call({
    Object? priceV2 = freezed,
    Object? title = freezed,
    Object? availableForSale = freezed,
    Object? sku = freezed,
    Object? requiresShipping = freezed,
    Object? id = freezed,
    Object? image = freezed,
    Object? compareAtPrice = freezed,
    Object? weight = freezed,
    Object? weightUnit = freezed,
  }) {
    return _then(_ProductVariantCheckout(
      priceV2: priceV2 == freezed
          ? _value.priceV2
          : priceV2 // ignore: cast_nullable_to_non_nullable
              as PriceV2,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      availableForSale: availableForSale == freezed
          ? _value.availableForSale
          : availableForSale // ignore: cast_nullable_to_non_nullable
              as bool,
      sku: sku == freezed
          ? _value.sku
          : sku // ignore: cast_nullable_to_non_nullable
              as String,
      requiresShipping: requiresShipping == freezed
          ? _value.requiresShipping
          : requiresShipping // ignore: cast_nullable_to_non_nullable
              as bool,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as ShopifyImage?,
      compareAtPrice: compareAtPrice == freezed
          ? _value.compareAtPrice
          : compareAtPrice // ignore: cast_nullable_to_non_nullable
              as PriceV2?,
      weight: weight == freezed
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double?,
      weightUnit: weightUnit == freezed
          ? _value.weightUnit
          : weightUnit // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductVariantCheckout extends _ProductVariantCheckout {
  _$_ProductVariantCheckout(
      {required this.priceV2,
      required this.title,
      required this.availableForSale,
      required this.sku,
      required this.requiresShipping,
      required this.id,
      this.image,
      this.compareAtPrice,
      this.weight,
      this.weightUnit})
      : super._();

  factory _$_ProductVariantCheckout.fromJson(Map<String, dynamic> json) =>
      _$$_ProductVariantCheckoutFromJson(json);

  @override
  final PriceV2 priceV2;
  @override
  final String title;
  @override
  final bool availableForSale;
  @override
  final String sku;
  @override
  final bool requiresShipping;
  @override
  final String id;
  @override
  final ShopifyImage? image;
  @override
  final PriceV2? compareAtPrice;
  @override
  final double? weight;
  @override
  final String? weightUnit;

  @override
  String toString() {
    return 'ProductVariantCheckout(priceV2: $priceV2, title: $title, availableForSale: $availableForSale, sku: $sku, requiresShipping: $requiresShipping, id: $id, image: $image, compareAtPrice: $compareAtPrice, weight: $weight, weightUnit: $weightUnit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProductVariantCheckout &&
            (identical(other.priceV2, priceV2) ||
                const DeepCollectionEquality()
                    .equals(other.priceV2, priceV2)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.availableForSale, availableForSale) ||
                const DeepCollectionEquality()
                    .equals(other.availableForSale, availableForSale)) &&
            (identical(other.sku, sku) ||
                const DeepCollectionEquality().equals(other.sku, sku)) &&
            (identical(other.requiresShipping, requiresShipping) ||
                const DeepCollectionEquality()
                    .equals(other.requiresShipping, requiresShipping)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.compareAtPrice, compareAtPrice) ||
                const DeepCollectionEquality()
                    .equals(other.compareAtPrice, compareAtPrice)) &&
            (identical(other.weight, weight) ||
                const DeepCollectionEquality().equals(other.weight, weight)) &&
            (identical(other.weightUnit, weightUnit) ||
                const DeepCollectionEquality()
                    .equals(other.weightUnit, weightUnit)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(priceV2) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(availableForSale) ^
      const DeepCollectionEquality().hash(sku) ^
      const DeepCollectionEquality().hash(requiresShipping) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(compareAtPrice) ^
      const DeepCollectionEquality().hash(weight) ^
      const DeepCollectionEquality().hash(weightUnit);

  @JsonKey(ignore: true)
  @override
  _$ProductVariantCheckoutCopyWith<_ProductVariantCheckout> get copyWith =>
      __$ProductVariantCheckoutCopyWithImpl<_ProductVariantCheckout>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductVariantCheckoutToJson(this);
  }
}

abstract class _ProductVariantCheckout extends ProductVariantCheckout {
  factory _ProductVariantCheckout(
      {required PriceV2 priceV2,
      required String title,
      required bool availableForSale,
      required String sku,
      required bool requiresShipping,
      required String id,
      ShopifyImage? image,
      PriceV2? compareAtPrice,
      double? weight,
      String? weightUnit}) = _$_ProductVariantCheckout;
  _ProductVariantCheckout._() : super._();

  factory _ProductVariantCheckout.fromJson(Map<String, dynamic> json) =
      _$_ProductVariantCheckout.fromJson;

  @override
  PriceV2 get priceV2 => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  bool get availableForSale => throw _privateConstructorUsedError;
  @override
  String get sku => throw _privateConstructorUsedError;
  @override
  bool get requiresShipping => throw _privateConstructorUsedError;
  @override
  String get id => throw _privateConstructorUsedError;
  @override
  ShopifyImage? get image => throw _privateConstructorUsedError;
  @override
  PriceV2? get compareAtPrice => throw _privateConstructorUsedError;
  @override
  double? get weight => throw _privateConstructorUsedError;
  @override
  String? get weightUnit => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ProductVariantCheckoutCopyWith<_ProductVariantCheckout> get copyWith =>
      throw _privateConstructorUsedError;
}
