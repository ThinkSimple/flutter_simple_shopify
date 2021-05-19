// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Product _$_$_ProductFromJson(Map<String, dynamic> json) {
  return _$_Product(
    collectionList: (json['collectionList'] as List<dynamic>)
        .map((e) => AssociatedCollections.fromJson(e as Map<String, dynamic>))
        .toList(),
    title: json['title'] as String,
    id: json['id'] as String,
    availableForSale: json['availableForSale'] as bool,
    createdAt: json['createdAt'] as String,
    productVariants: (json['productVariants'] as List<dynamic>)
        .map((e) => ProductVariant.fromJson(e as Map<String, dynamic>))
        .toList(),
    productType: json['productType'] as String,
    publishedAt: json['publishedAt'] as String,
    tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
    updatedAt: json['updatedAt'] as String,
    cursor: json['cursor'] as String,
    images: (json['images'] as List<dynamic>)
        .map((e) => ShopifyImage.fromJson(e as Map<String, dynamic>))
        .toList(),
    option: (json['option'] as List<dynamic>)
        .map((e) => Option.fromJson(e as Map<String, dynamic>))
        .toList(),
    vendor: json['vendor'] as String,
    metafields: (json['metafields'] as List<dynamic>)
        .map((e) => Metafield.fromJson(e as Map<String, dynamic>))
        .toList(),
    onlineStoreUrl: json['onlineStoreUrl'] as String?,
    description: json['description'] as String?,
    descriptionHtml: json['descriptionHtml'] as String?,
    handle: json['handle'] as String?,
  );
}

Map<String, dynamic> _$_$_ProductToJson(_$_Product instance) =>
    <String, dynamic>{
      'collectionList': instance.collectionList,
      'title': instance.title,
      'id': instance.id,
      'availableForSale': instance.availableForSale,
      'createdAt': instance.createdAt,
      'productVariants': instance.productVariants,
      'productType': instance.productType,
      'publishedAt': instance.publishedAt,
      'tags': instance.tags,
      'updatedAt': instance.updatedAt,
      'cursor': instance.cursor,
      'images': instance.images,
      'option': instance.option,
      'vendor': instance.vendor,
      'metafields': instance.metafields,
      'onlineStoreUrl': instance.onlineStoreUrl,
      'description': instance.description,
      'descriptionHtml': instance.descriptionHtml,
      'handle': instance.handle,
    };
