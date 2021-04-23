// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_variant_checkout.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductVariantCheckout _$_$_ProductVariantCheckoutFromJson(
    Map<String, dynamic> json) {
  return _$_ProductVariantCheckout(
    price: priceV2FromJson(json['price'] as Map<String, dynamic>),
    title: json['title'] as String?,
    image: json['image'] == null
        ? null
        : ShopifyImage.fromJson(json['image'] as Map<String, dynamic>),
    compareAtPrice:
        priceV2FromJson(json['compareAtPrice'] as Map<String, dynamic>),
    weight: (json['weight'] as num?)?.toDouble(),
    weightUnit: json['weightUnit'] as String?,
    availableForSale: json['availableForSale'] as bool?,
    sku: json['sku'] as String?,
    requiresShipping: json['requiresShipping'] as bool?,
    id: json['id'] as String?,
  );
}

Map<String, dynamic> _$_$_ProductVariantCheckoutToJson(
        _$_ProductVariantCheckout instance) =>
    <String, dynamic>{
      'price': instance.price,
      'title': instance.title,
      'image': instance.image,
      'compareAtPrice': instance.compareAtPrice,
      'weight': instance.weight,
      'weightUnit': instance.weightUnit,
      'availableForSale': instance.availableForSale,
      'sku': instance.sku,
      'requiresShipping': instance.requiresShipping,
      'id': instance.id,
    };
