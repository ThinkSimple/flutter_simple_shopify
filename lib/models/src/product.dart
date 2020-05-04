class Products {
  final List<Product> productList;
  final bool hasNextPage;

  Products({this.productList, this.hasNextPage});

  static Products fromJson(Map<String, dynamic> json) {
    return Products(
        productList: _getProductList(json ?? const {}),
        hasNextPage: (json['pageInfo'] ?? const {})['hasNextPage']);
  }

  static List<Product> _getProductList(Map<String, dynamic> json) {
    List<Product> productList = [];
    json['edges']
        ?.forEach((e) => productList.add(Product.fromJson(e ?? const {})));
    return productList;
  }
}

class Product {
  final List<AssociatedCollections> collectionList;
  final String title;
  final String id;
  final bool availableForSale;
  final String createdAt;
  final String description;
  final List<ProductVariant> productVariants;
  final String descriptionHtml;
  final String handle;
  final String onlineStoreUrl;
  final String productType;
  final String publishedAt;
  final List<String> tags;
  final String updatedAt;
  final String cursor;

  const Product(
      {this.collectionList,
      this.title,
      this.id,
      this.availableForSale,
      this.createdAt,
      this.description,
      this.productVariants,
      this.descriptionHtml,
      this.handle,
      this.onlineStoreUrl,
      this.productType,
      this.publishedAt,
      this.tags,
      this.updatedAt,
      this.cursor});

  static Product fromJson(Map<String, dynamic> json) {
    return Product(
        collectionList: _getCollectionList(json ?? const {}),
        id: (json['node'] ?? const {})['id'],
        title: (json['node'] ?? const {})['title'],
        availableForSale: (json['node'] ?? const {})['availableForSale'],
        createdAt: (json['node'] ?? const {})['createdAt'],
        description: (json['node'] ?? const {})['description'],
        productVariants: _getProductVariants(json ?? const {}),
        descriptionHtml: (json['node'] ?? const {})['descriptionHtml'],
        handle: (json['node'] ?? const {})['handle'],
        onlineStoreUrl: (json['node'] ?? const {})['onlineStoreUrl'],
        productType: (json['node'] ?? const {})['productType'],
        publishedAt: (json['node'] ?? const {})['publishedAt'],
        tags: _getTags(json ?? const {}),
        updatedAt: (json['node'] ?? const {})['updatedAt'],
        cursor: json['cursor']);
  }

  static List<ProductVariant> _getProductVariants(Map<String, dynamic> json) {
    List<ProductVariant> productVariants = [];
    (((json['node'] ?? const {})['variants'] ?? const {})['edges'] ?? const [])
        ?.forEach((v) {
      if (v?.data != null)
        productVariants.add(ProductVariant.fromJson(v?.data ?? const {}));
    });
    return productVariants;
  }

  static List<String> _getTags(Map<String, dynamic> json) {
    List<String> tags = [];
    (json['node'] ?? const {})['tags']?.forEach((e) => tags.add(e ?? const {}));
    return tags;
  }

  static List<AssociatedCollections> _getCollectionList(
      Map<String, dynamic> json) {
    List<AssociatedCollections> collectionList = [];
    (((json['node'] ?? const {})['collections'] ?? const {})['edges'] ??
            const [])
        ?.forEach((v) {
      if (v?.data != null)
        collectionList.add(AssociatedCollections.fromJson(v?.data ?? const {}));
    });
    return collectionList;
  }
}

class AssociatedCollections {
  final String description;
  final String descriptionHtml;
  final String id;
  final String handle;
  final String updatedAt;
  final String title;

  AssociatedCollections(
      {this.description,
      this.descriptionHtml,
      this.id,
      this.handle,
      this.updatedAt,
      this.title});

  static AssociatedCollections fromJson(Map<String, dynamic> json) {
    return AssociatedCollections(
        description: (json['node'] ?? const {})['description'],
        descriptionHtml: (json['node'] ?? const {})['descriptionHtml'],
        id: (json['node'] ?? const {})['id'],
        handle: (json['node'] ?? const {})['handle'],
        updatedAt: (json['node'] ?? const {})['updatedAt'],
        title: (json['node'] ?? const {})['title']);
  }
}

class ShopifyImage {
  final String altText;
  final String originalSource;
  final String id;

  const ShopifyImage({this.altText, this.originalSource, this.id});

  static ShopifyImage fromJson(Map<String, dynamic> json) {
    return ShopifyImage(
        altText: json['altText'],
        originalSource: json['originalSrc'],
        id: json['id']);
  }
}

class ProductVariant {
  final PriceV2 price;
  final String title;
  final ShopifyImage image;
  final PriceV2 compareAtPrice;
  final double weight;
  final String weightUnit;
  final bool availableForSale;
  final String sku;
  final bool requiresShipping;
  final String id;

  const ProductVariant(
      {this.price,
      this.title,
      this.image,
      this.compareAtPrice,
      this.weight,
      this.weightUnit,
      this.availableForSale,
      this.sku,
      this.requiresShipping,
      this.id});

  static ProductVariant fromJson(Map<String, dynamic> json) {
    return ProductVariant(
      price:
          PriceV2.fromJson((json['node'] ?? const {})['priceV2'] ?? const {}),
      title: (json['node'] ?? const {})['title'],
      image: ShopifyImage.fromJson(
          (json['node'] ?? const {})['image'] ?? const {}),
      compareAtPrice: PriceV2.fromJson(
          (json['node'] ?? const {})['compareAtPriceV2'] ?? const {}),
      weight: (json['node'] ?? const {})['weight'],
      weightUnit: (json['node'] ?? const {})['weightUnit'],
      availableForSale: (json['node'] ?? const {})['availableForSale'],
      sku: (json['node'] ?? const {})['sku'],
      requiresShipping: (json['node'] ?? const {})['requiresShipping'],
      id: (json['node'] ?? const {})['id'],
    );
  }
}

class PriceV2 {
  final String amount;
  final String currencyCode;

  const PriceV2({this.amount, this.currencyCode});

  static PriceV2 fromJson(Map<String, dynamic> json) {
    return PriceV2(amount: json['amount'], currencyCode: json['currencyCode']);
  }
}
