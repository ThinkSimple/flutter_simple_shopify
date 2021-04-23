// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_variant.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductVariant _$_$_ProductVariantFromJson(Map<String, dynamic> json) {
  return _$_ProductVariant(
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
    quantityAvailable: json['quantityAvailable'] as int?,
    unitPrice: priceV2FromJson(json['unitPrice'] as Map<String, dynamic>),
    unitPriceMeasurement: json['unitPriceMeasurement'] == null
        ? null
        : UnitPriceMeasurement.fromJson(
            json['unitPriceMeasurement'] as Map<String, dynamic>),
    selectedOptions: (json['selectedOptions'] as List<dynamic>?)
        ?.map((e) => SelectedOption.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_ProductVariantToJson(_$_ProductVariant instance) =>
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
      'quantityAvailable': instance.quantityAvailable,
      'unitPrice': instance.unitPrice,
      'unitPriceMeasurement': instance.unitPriceMeasurement,
      'selectedOptions': instance.selectedOptions,
    };
