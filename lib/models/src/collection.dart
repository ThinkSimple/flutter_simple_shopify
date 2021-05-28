import 'package:flutter_simple_shopify/models/src/product.dart';

class Collections {
  final List<Collection> collectionList;
  final bool hasNextPage;

  Collections({required this.collectionList, required this.hasNextPage});

  static Collections fromJson(Map<String, dynamic> json) {
    return Collections(
        collectionList: _getCollectionList(json),
        hasNextPage: (json['pageInfo'] ?? const {})['hasNextPage']);
  }

  static List<Collection> _getCollectionList(Map<String, dynamic> json) {
    List<Collection> collectionList = [];
    json['edges']?.forEach(
        (e) => collectionList.add(Collection.fromJson(e ?? const {})));
    return collectionList;
  }
}

class Collection {
  final String? title;
  final String? description;
  final String? descriptionHtml;
  final String? handle;
  final String? id;
  final String? updatedAt;
  final ShopifyImage? image;
  final Products? products;
  final String? cursor;

  Collection(
      {this.title,
      this.description,
      this.descriptionHtml,
      this.handle,
      this.id,
      this.updatedAt,
      this.image,
      this.products,
      this.cursor});

  static Collection fromJson(Map<String, dynamic> json) {
    return Collection(
      title: (json['node'] ?? const {})['title'],
      description: (json['node'] ?? const {})['description'],
      descriptionHtml: (json['node'] ?? const {})['descriptionHtml'],
      handle: (json['node'] ?? const {})['handle'],
      id: (json['node'] ?? const {})['id'],
      updatedAt: (json['node'] ?? const {})['updatedAt'],
      image: ShopifyImage.fromJson(
          (json['node'] ?? const {})['image'] ?? const {}),
      products:
          Products.fromJson((json['node'] ?? const {})['products'] ?? const {}),
      cursor: json['cursor'],
    );
  }
  static Collection fromCollectionHandleJson(Map<String, dynamic> json) {
    return Collection(
      title: json['title'],
      description: json['description'],
      descriptionHtml: json['descriptionHtml'],
      handle: json['handle'],
      id: json['id'],
      updatedAt: json['updatedAt'],
      image: ShopifyImage.fromJson(
          json['image'] ?? const {}),
      products:
          Products.fromJson(json['products'] ?? const {}),
      cursor: json['cursor'],
    );
  }
}
