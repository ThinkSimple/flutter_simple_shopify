// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Product _$$_ProductFromJson(Map<String, dynamic> json) => _$_Product(
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
      collectionList: (json['collectionList'] as List<dynamic>?)
          ?.map(
              (e) => AssociatedCollections.fromJson(e as Map<String, dynamic>))
          .toList(),
      cursor: json['cursor'] as String?,
      onlineStoreUrl: json['onlineStoreUrl'] as String?,
      description: json['description'] as String?,
      descriptionHtml: json['descriptionHtml'] as String?,
      handle: json['handle'] as String?,
    );

Map<String, dynamic> _$$_ProductToJson(_$_Product instance) =>
    <String, dynamic>{
      'title': instance.title,
      'id': instance.id,
      'availableForSale': instance.availableForSale,
      'createdAt': instance.createdAt,
      'productVariants': instance.productVariants,
      'productType': instance.productType,
      'publishedAt': instance.publishedAt,
      'tags': instance.tags,
      'updatedAt': instance.updatedAt,
      'images': instance.images,
      'option': instance.option,
      'vendor': instance.vendor,
      'metafields': instance.metafields,
      'collectionList': instance.collectionList,
      'cursor': instance.cursor,
      'onlineStoreUrl': instance.onlineStoreUrl,
      'description': instance.description,
      'descriptionHtml': instance.descriptionHtml,
      'handle': instance.handle,
    };
