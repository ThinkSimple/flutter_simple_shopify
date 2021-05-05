import 'package:flutter_simple_shopify/models/src/product/products/products.dart';
import 'package:flutter_simple_shopify/models/src/product/shopify_image/shopify_image.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'collection.freezed.dart';
part 'collection.g.dart';

@freezed
class Collection with _$Collection {
  const Collection._();
  factory Collection({
    required String title,
    required String id,
    required Products products,
    required String cursor,
    @Default('') String description,
    @Default('') String descriptionHtml,
    @Default('') String handle,
    @Default('') String updatedAt,
    ShopifyImage? image,
  }) = _Collection;

  static Collection fromGraphJson(Map<String, dynamic> json) {
    return Collection(
      title: (json['node'] ?? const {})['title'],
      description: (json['node'] ?? const {})['description'],
      descriptionHtml: (json['node'] ?? const {})['descriptionHtml'],
      handle: (json['node'] ?? const {})['handle'],
      id: (json['node'] ?? const {})['id'],
      updatedAt: (json['node'] ?? const {})['updatedAt'],
      image: (json['node'] ?? const {}['image']) != null
          ? ShopifyImage.fromJson(
              (json['node'] ?? const {})['image'] ?? const {})
          : null,
      products: Products.fromGraphJson(
          (json['node'] ?? const {})['products'] ?? const {}),
      cursor: json['cursor'],
    );
  }

  factory Collection.fromJson(Map<String, dynamic> json) =>
      _$CollectionFromJson(json);
}
