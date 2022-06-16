import 'package:flutter_simple_shopify/enums/enums.dart';
import 'package:flutter_simple_shopify/enums/src/sort_key_collection.dart';
import 'package:flutter_simple_shopify/flutter_simple_shopify.dart';
import 'package:flutter_simple_shopify/graphql_operations/queries/get_all_collections_optimized.dart';
import 'package:flutter_simple_shopify/graphql_operations/queries/get_all_products_from_collection_by_id.dart';
import 'package:flutter_simple_shopify/graphql_operations/queries/get_all_products_on_query.dart';
import 'package:flutter_simple_shopify/graphql_operations/queries/get_collection_by_handle.dart';
import 'package:flutter_simple_shopify/graphql_operations/queries/get_collection_by_handle_with_products.dart';
import 'package:flutter_simple_shopify/graphql_operations/queries/get_collections_by_ids.dart';
import 'package:flutter_simple_shopify/graphql_operations/queries/get_page_by_handle.dart';
import 'package:flutter_simple_shopify/graphql_operations/queries/get_product_by_handle.dart';
import 'package:flutter_simple_shopify/graphql_operations/queries/get_product_by_handle_minimum_data.dart';
import 'package:flutter_simple_shopify/graphql_operations/queries/get_product_recommendations.dart';
import 'package:flutter_simple_shopify/graphql_operations/queries/get_products_by_ids.dart';
import 'package:flutter_simple_shopify/graphql_operations/queries/get_metafileds_from_product.dart';
import 'package:flutter_simple_shopify/graphql_operations/queries/get_products_by_ids_minimum_data.dart';
import 'package:flutter_simple_shopify/graphql_operations/queries/get_shop.dart';
import 'package:flutter_simple_shopify/graphql_operations/queries/get_x_collections_and_n_products_sorted.dart';
import 'package:flutter_simple_shopify/graphql_operations/queries/get_x_products_after_cursor.dart';
import 'package:flutter_simple_shopify/graphql_operations/queries/get_x_products_after_cursor_by_collection_handle.dart';
import 'package:flutter_simple_shopify/graphql_operations/queries/get_x_products_after_cursor_within_collection.dart';
import 'package:flutter_simple_shopify/graphql_operations/queries/get_x_products_on_query_after_cursor.dart';
import 'package:flutter_simple_shopify/mixins/src/shopfiy_error.dart';
import 'package:flutter_simple_shopify/models/src/product.dart';
import 'package:flutter_simple_shopify/enums/src/sort_key_product.dart';
import 'package:flutter_simple_shopify/models/src/shop.dart';
import 'package:graphql/client.dart';
import '../../graphql_operations/queries/get_n_products.dart';
import '../../graphql_operations/queries/get_product_recommendations.dart';
import '../../graphql_operations/queries/get_products.dart';
import '../../models/src/collection.dart';
import '../../shopify_config.dart';

/// ShopifyStore provides various methods related to the shopify store.
class ShopifyStore with ShopifyError {
  ShopifyStore._();

  static final ShopifyStore instance = ShopifyStore._();

  GraphQLClient? get _graphQLClient => ShopifyConfig.graphQLClient;

  /// Returns a List of [Product].
  ///
  /// Simply returns all Products from your Store.
  Future<List<Product>> getAllProducts(
      {String? metafieldsNamespace, bool deleteThisPartOfCache = false}) async {
    List<Product> productList = [];
    Products tempProduct;
    String? cursor;
    WatchQueryOptions _options;
    do {
      _options = WatchQueryOptions(document: gql(getProductsQuery), variables: {
        'cursor': cursor,
        'shouldFetchMetafields': metafieldsNamespace != null,
        'metafieldsNamespace': metafieldsNamespace
      });
      final QueryResult result = await _graphQLClient!.query(_options);
      checkForError(result);
      tempProduct =
          (Products.fromJson((result.data ?? const {})["products"] ?? {}));

      productList += tempProduct.productList;
      cursor = productList.isNotEmpty ? productList.last.cursor : null;
    } while ((tempProduct.hasNextPage == true));
    if (deleteThisPartOfCache) {
      //_graphQLClient!.cache.writeQuery(_options.asRequest, data: {});
    }
    return productList;
  }

  Future<Product> getProductByHandle(String handle,
      {bool deleteThisPartOfCache = false, minimumData = true}) async {
    try {
      final WatchQueryOptions _options = WatchQueryOptions(
          document: minimumData
              ? gql(getProductByHandleMinimumDataQuery)
              : gql(getProductByHandleQuery),
          variables: {'handle': handle});
      final QueryResult result = await _graphQLClient!.query(_options);
      checkForError(result);
      if (deleteThisPartOfCache) {
        //_graphQLClient!.cache.writeQuery(_options.asRequest, data: {});
      }
      // Map<String, dynamic> a = (result?.data ?? const {})['productByHandle'] ?? {};
      return Product.fromProductHandleJson(
          (result.data ?? const {})['productByHandle'] ?? {});
    } catch (e) {
      print(e);
    }
    return Product.fromJson({});
  }

  /// Returns [Products].
  ///
  /// Returns the first [limit] Products after the given [startCursor].
  /// [limit] has to be in the range of 0 and 250.
  Future<Products> getXProductsAfterCursor(int limit, String startCursor,
      {bool deleteThisPartOfCache = false,
      bool reverse = false,
      SortKeyProduct sortKeyProduct = SortKeyProduct.TITLE}) async {
    String cursor = startCursor;
    final WatchQueryOptions _options = WatchQueryOptions(
        document: gql(getXProductsAfterCursorQuery),
        variables: {
          'x': limit,
          'cursor': cursor,
          'reverse': reverse,
          'sortKey': sortKeyProduct.parseToString()
        });
    final QueryResult result = await _graphQLClient!.query(_options);
    checkForError(result);

    if (deleteThisPartOfCache) {
      //_graphQLClient!.cache.writeQuery(_options.asRequest, data: {});
    }
    return (Products.fromJson((result.data ?? const {})["products"] ?? {}));
  }

  /// Returns a List of [Product].
  ///
  /// Returns the Products associated to the given id's in [idList]
  Future<List<Product>> getProductsByIds(List<String> idList,
      {bool deleteThisPartOfCache = false, minimumData = true, int variantsCount = 1}) async {
    List<Product> productList = [];
    final QueryOptions _options = WatchQueryOptions(
        document: minimumData
            ? gql(getProductsByIdsMinimumDataQuery(variantsCount))
            : gql(getProductsByIdsQuery),
        variables: {'ids': idList});
    final QueryResult result = await _graphQLClient!.query(_options);
    checkForError(result);
    var response = result.data!;
    var newResponse = {
      'edges': List.generate(response['nodes'].length,
          (index) => {'node': response['nodes'][index]})
    };
    productList = Products.fromJson(newResponse).productList;
    if (deleteThisPartOfCache) {
      //_graphQLClient!.cache.writeQuery(_options.asRequest, data: {});
    }
    return productList;
  }

  /// Returns [n] Products.
  ///
  /// Returns the first [n] sorted by the [sortKey].
  /// [reverse] reverses the returned products if set on true.
  /// [SortKey] is an enum, example use cases:
  ///
  ///  SortKey.TITLE,
  ///  SortKey.PRODUCT_TYPE,
  ///  SortKey.VENDOR,
  ///  SortKey.UPDATED_AT,
  ///  SortKey.CREATED_AT,
  ///  SortKey.BEST_SELLING,
  ///  SortKey.PRICE,
  ///  SortKey.ID,
  ///  SortKey.RELEVANCE,
  Future<List<Product>> getNProducts(int n,
      {bool deleteThisPartOfCache = false,
      bool? reverse,
      SortKeyProduct sortKey = SortKeyProduct.PRODUCT_TYPE}) async {
    List<Product> productList = [];
    final WatchQueryOptions _options =
        WatchQueryOptions(document: gql(getNProductsQuery), variables: {
      'n': n,
      'sortKey': sortKey.parseToString(),
      'reverse': reverse,
    });
    final QueryResult result = await _graphQLClient!.query(_options);
    checkForError(result);
    productList =
        (Products.fromJson((result.data ?? const {})["products"] ?? {}))
            .productList;
    if (deleteThisPartOfCache) {
      //_graphQLClient!.cache.writeQuery(_options.asRequest, data: {});
    }
    return productList;
  }

  /// Returns a list of recommended [Product] by given id.
  Future<List<Product>> getProductRecommendations(String productId,
      {bool deleteThisPartOfCache = false, int variantsCount = 1}) async {
    try {
      final WatchQueryOptions _options = WatchQueryOptions(
          document: gql(getProductRecommendationsQuery(variantsCount)),
          variables: {'id': productId});
      final QueryResult result = await _graphQLClient!.query(_options);
      checkForError(result);
      if (deleteThisPartOfCache) {
        //_graphQLClient!.cache.writeQuery(_options.asRequest, data: {});
      }
      var newResponse = List.generate(
          result.data!['productRecommendations']?.length ?? 0,
          (index) => {
                "node":
                    (result.data!['productRecommendations'] ?? const {})[index]
              });
      var tempProducts = {"edges": newResponse};
      return Products.fromJson(tempProducts).productList;
    } catch (e) {
      print(e);
    }
    return [Product.fromJson({})];
  }

  /// Returns a List of [Collection]
  Future<List<Collection>> getCollectionsByIds(List<String> idList,
      {bool deleteThisPartOfCache = false}) async {
    try {
      final WatchQueryOptions _options = WatchQueryOptions(
          document: gql(getCollectionsByIdsQuery), variables: {'ids': idList});
      final QueryResult result = await _graphQLClient!.query(_options);
      checkForError(result);
      if (deleteThisPartOfCache) {
        //_graphQLClient!.cache.writeQuery(_options.asRequest, data: {});
      }

      var newResponse = List.generate(result.data!['nodes']?.length ?? 0,
          (index) => {"node": (result.data!['nodes'] ?? const {})[index]});
      var tempCollection = {"edges": newResponse};
      return Collections.fromJson(tempCollection).collectionList;
    } catch (e) {
      print(e);
    }
    return [Collection.fromJson({})];
  }

  /// Returns the Shop.
  Future<Shop> getShop({bool deleteThisPartOfCache = false}) async {
    final WatchQueryOptions _options = WatchQueryOptions(
      document: gql(getShopQuery),
    );
    final QueryResult result = await _graphQLClient!.query(_options);
    checkForError(result);
    if (deleteThisPartOfCache) {
      //_graphQLClient!.cache.writeQuery(_options.asRequest, data: {});
    }
    return Shop.fromJson(result.data!);
  }

  /// Returns a collection by handle.
  Future<Collection> getCollectionByHandle(String handle,
      {bool deleteThisPartOfCache = false, int? productsCount, int variantsCount = 1}) async {
    Collection collection = Collection.fromJson({});
    try {
      final WatchQueryOptions _options = WatchQueryOptions(
          document: productsCount != null
              ? gql(getCollectionByHandleWithProductsQuery(productsCount, variantsCount))
              : gql(getCollectionByHandleQuery),
          variables: {'handle': handle});
      final QueryResult result = await _graphQLClient!.query(_options);
      checkForError(result);
      if (deleteThisPartOfCache) {
        //_graphQLClient!.cache.writeQuery(_options.asRequest, data: {});
      }
      collection = Collection.fromCollectionHandleJson(
          (result.data ?? const {})['collectionByHandle'] ?? {});
    } catch (e) {
      print(e);
    }
    return collection;
  }

  Future<Collection> getXProductsAfterCursorByCollectionHandle(
      String handle, int limit, String? startCursor,
      {bool deleteThisPartOfCache = false,
      bool reverse = false,
      SortKeyProductCollection sortKeyProductCollection =
          SortKeyProductCollection.RELEVANCE}) async {
    String? cursor = startCursor;
    try {
      final WatchQueryOptions _options = WatchQueryOptions(
          document: gql(getXProductAfterCursorByCollectionHandleQuery),
          variables: {
            'handle': handle,
            'x': limit,
            'cursor': cursor,
            'reverse': reverse,
            'sortKey': sortKeyProductCollection.parseToString()
          });
      final QueryResult result = await _graphQLClient!.query(_options);
      checkForError(result);
      if (deleteThisPartOfCache) {
        //_graphQLClient!.cache.writeQuery(_options.asRequest, data: {});
      }
      return Collection.fromCollectionHandleJson(
          (result.data ?? const {})['collectionByHandle'] ?? {});
    } catch (e) {
      print(e);
    }
    return Collection.fromJson({});
  }

  /// Returns all available collections.
  ///
  /// Tip: When editing Collections you can choose on which channel or app you want to make them available.
  Future<List<Collection>> getAllCollections(
      {bool deleteThisPartOfCache = false,
      SortKeyCollection sortKeyCollection = SortKeyCollection.UPDATED_AT,
      bool reverse = false}) async {
    List<Collection> collectionList = [];
    Collections tempCollection;
    String? cursor;
    WatchQueryOptions _options;
    do {
      _options = WatchQueryOptions(
          document: gql(getAllCollectionsOptimizedQuery),
          variables: {
            'cursor': cursor,
            'sortKey': sortKeyCollection.parseToString(),
            'reverse': reverse
          });
      final QueryResult result = await _graphQLClient!.query(_options);
      checkForError(result);
      tempCollection = (Collections.fromJson(
          (result.data ?? const {})['collections'] ?? {}));
      collectionList = tempCollection.collectionList + collectionList;
      cursor = collectionList.isNotEmpty ? collectionList.last.cursor : null;
    } while ((tempCollection.hasNextPage == true));
    if (deleteThisPartOfCache) {
      //_graphQLClient!.cache.writeQuery(_options.asRequest, data: {});
    }
    return collectionList;
  }

  /// Returns N products from each X collections.
  ///
  /// Tip: When editing Collections you can choose on which channel or app you want to make them available.
  Future<List<Collection>> getXCollectionsAndNProductsSorted(
    int n,
    int x, {
    bool deleteThisPartOfCache = false,
    SortKeyProductCollection sortKeyProductCollection =
        SortKeyProductCollection.CREATED,
    SortKeyCollection sortKeyCollection = SortKeyCollection.UPDATED_AT,
    bool reverse = false,
  }) async {
    List<Collection> collectionList;
    String? cursor;
    WatchQueryOptions _options;
    _options = WatchQueryOptions(
        document: gql(getXCollectionsAndNProductsSortedQuery),
        variables: {
          'cursor': cursor,
          'sortKey': sortKeyCollection.parseToString(),
          'reverse': reverse,
          'sortKeyProduct': sortKeyProductCollection.parseToString(),
          'x': x,
          'n': n
        });
    final QueryResult result = await _graphQLClient!.query(_options);
    checkForError(result);
    collectionList =
        (Collections.fromJson((result.data ?? const {})['collections'] ?? {}))
            .collectionList;
    if (deleteThisPartOfCache) {
      //_graphQLClient!.cache.writeQuery(_options.asRequest, data: {});
    }
    return collectionList;
  }

  /// Returns a List of [Product].
  ///
  /// Returns all Products from the [Collection] with the [id].
  Future<List<Product>> getAllProductsFromCollectionById(String id,
      {bool deleteThisPartOfCache = false,
      SortKeyProductCollection sortKeyProductCollection =
          SortKeyProductCollection.CREATED}) async {
    String? cursor;
    List<Product> productList = [];
    Collection collection;
    QueryOptions _options;
    do {
      _options = WatchQueryOptions(
          document: gql(getCollectionByIdQuery),
          variables: {
            'id': id,
            'cursor': cursor,
            'sortKey': sortKeyProductCollection.parseToString()
          });
      final QueryResult result = await _graphQLClient!.query(_options);
      checkForError(result);
      productList
          .addAll(Collection.fromJson(result.data!).products!.productList);
      collection = (Collection.fromJson(result.data!));
      cursor = productList.isNotEmpty ? productList.last.cursor : null;
    } while (collection.products?.hasNextPage == true);
    if (deleteThisPartOfCache) {
      //_graphQLClient!.cache.writeQuery(_options.asRequest, data: {});
    }
    return productList;
  }

  /// Returns [Products].
  ///
  /// Returns the first [limit] Products after the given [startCursor].
  /// [limit] has to be in the range of 0 and 250.
  Future<Products?> getXProductsAfterCursorWithinCollection(
      String id, int limit, String startCursor,
      {SortKeyProductCollection sortKey = SortKeyProductCollection.BEST_SELLING,
      bool deleteThisPartOfCache = false,
      bool reverse = false}) async {
    String cursor = startCursor;
    final WatchQueryOptions _options = WatchQueryOptions(
        document: gql(getXProductsAfterCursorWithinCollectionQuery),
        variables: {
          'id': id,
          'cursor': cursor,
          'limit': limit,
          'sortKey': sortKey.parseToString(),
          'reverse': reverse,
        });
    final QueryResult result = await _graphQLClient!.query(_options);
    checkForError(result);
    if (deleteThisPartOfCache) {
      //_graphQLClient!.cache.writeQuery(_options.asRequest, data: {});
    }
    return (Collection.fromJson(result.data!)).products;
  }

  /// Returns a List of [Product].
  ///
  /// Gets all [Product] from a [query] search sorted by [sortKey].
  Future<List<Product>> getAllProductsOnQuery(String cursor, String query,
      {SortKeyProduct? sortKey,
      bool deleteThisPartOfCache = false,
      bool reverse = false}) async {
    String? cursor;
    List<Product> productList = [];
    Products products;
    WatchQueryOptions _options;
    do {
      _options = WatchQueryOptions(
          document: gql(getAllProductsOnQueryQuery),
          variables: {
            'cursor': cursor,
            'sortKey': sortKey.parseToString(),
            'query': query,
            'reverse': reverse
          });
      final QueryResult result = await _graphQLClient!.query(_options);
      checkForError(result);
      productList.addAll(
          (Products.fromJson((result.data ?? const {})['products']))
              .productList);
      products = (Products.fromJson((result.data ?? const {})['products']));
      cursor = productList.isNotEmpty ? productList.last.cursor : null;
    } while (products.hasNextPage == true);
    if (deleteThisPartOfCache) {
      //_graphQLClient!.cache.writeQuery(_options.asRequest, data: {});
    }
    return productList;
  }

  /// Returns [Products].
  ///
  /// Gets [limit] amount of [Product] from the [query] search, sorted by [sortKey].
  Future<Products> getXProductsOnQueryAfterCursor(
      String query, int limit, String cursor,
      {SortKeyProduct? sortKey,
      bool deleteThisPartOfCache = false,
      bool reverse = false}) async {
    final WatchQueryOptions _options = WatchQueryOptions(
        document: gql(getXProductsOnQueryAfterCursorQuery),
        variables: {
          'cursor': cursor,
          'limit': limit,
          'sortKey': sortKey.parseToString(),
          'query': query,
          'reverse': reverse
        });
    final QueryResult result =
        await ShopifyConfig.graphQLClient!.query(_options);
    checkForError(result);
    if (deleteThisPartOfCache) {
      //_graphQLClient!.cache.writeQuery(_options.asRequest, data: {});
    }

    return Products.fromJson((result.data ?? const {})['products']);
  }

  /// Returns a List of [Metafield].
  ///
  /// Gets [Metafield]s of [Product] optionally filtered by namespace.
  Future<List<Metafield>> getMetafieldsFromProduct(
      String productHandle, String namespace,
      {bool deleteThisPartOfCache = false}) async {
    final WatchQueryOptions _options = WatchQueryOptions(
        document: gql(getMetafieldsFromProductQuery),
        variables: {'handle': productHandle, 'namespace': namespace});
    final QueryResult result =
        await ShopifyConfig.graphQLClient!.query(_options);
    checkForError(result);
    if (deleteThisPartOfCache) {
      //_graphQLClient!.cache.writeQuery(_options.asRequest, data: {});
    }
    return (result.data!['productByHandle']['metafields']['edges']
            as List<Object>)
        .map((e) => Metafield.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  /// Returns a [ShopifyPage].
  ///
  /// Returns the [ShopifyPage] that is associated to the [handle].
  Future<ShopifyPage> getPageByHandle(String handle,
      {bool deleteThisPartOfCache = false}) async {
    final QueryOptions _options =
        WatchQueryOptions(document: gql(getPageByHandleQuery), variables: {
      'handle': handle,
    });
    // final QueryResult result = await _graphQLClient.query(_options);
    final QueryResult result =
        await ShopifyConfig.graphQLClient!.query(_options);
    checkForError(result);
    var response = (result.data!['pageByHandle']);
    // var newResponse = {'node': response};
    if (deleteThisPartOfCache) {
      // _graphQLClient.cache.write(_options.toKey(), null);
    }
    return ShopifyPage.fromJson(response);
  }
}
