import 'package:enum_to_string/enum_to_string.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_simple_shopify/graphql_operations/queries/get_all_products_from_collection_by_id.dart';
import 'package:flutter_simple_shopify/graphql_operations/queries/get_all_products_on_query.dart';
import 'package:flutter_simple_shopify/graphql_operations/queries/get_products_by_ids.dart';
import 'package:flutter_simple_shopify/graphql_operations/queries/get_shop.dart';
import 'package:flutter_simple_shopify/graphql_operations/queries/get_x_products_after_cursor.dart';
import 'package:flutter_simple_shopify/graphql_operations/queries/get_x_products_after_cursor_within_collection.dart';
import 'package:flutter_simple_shopify/graphql_operations/queries/get_x_products_on_query_after_cursor.dart';
import 'package:flutter_simple_shopify/mixins/src/shopfiy_error.dart';
import 'package:flutter_simple_shopify/models/src/product.dart';
import 'package:flutter_simple_shopify/enums/src/sort_key_product.dart';
import 'package:flutter_simple_shopify/models/src/shop.dart';
import 'package:graphql/client.dart';
import '../../graphql_operations/queries/get_collections.dart';
import '../../graphql_operations/queries/get_featured_collections.dart';
import '../../graphql_operations/queries/get_n_products.dart';
import '../../graphql_operations/queries/get_products.dart';
import '../../models/src/collection.dart';
import '../../shopify_config.dart';

/// ShopifyStore provides various methods related to the shopify store.
class ShopifyStore with ShopifyError{
  ShopifyStore._();

  static final ShopifyStore instance = ShopifyStore._();

  GraphQLClient _graphQLClient = ShopifyConfig.graphQLClient;

  /// Returns a List of [Product].
  ///
  /// Simply returns all Products from your Store.
  Future<List<Product>> getAllProducts({bool deleteThisPartOfCache = false}) async {
    List<Product> productList = [];
    Products tempProduct;
    String cursor;
    WatchQueryOptions _options;
    do {
      _options = WatchQueryOptions(
          documentNode: gql(getProductsQuery), variables: {'cursor': cursor});
      final QueryResult result = await _graphQLClient.query(_options);
      checkForError(result);
      tempProduct = (Products.fromJson(
          (result?.data ??
              const {})["products"] ??
              {}));

      productList += tempProduct?.productList ?? const [];
      cursor = productList.last.cursor;
    } while ((tempProduct?.hasNextPage == true));
    if(deleteThisPartOfCache) {
      _graphQLClient.cache.write(_options.toKey(), null);
    }
    return productList;
  }

  /// Returns a List of [Product].
  ///
  /// Returns the first [limit] Products after the given [startCursor].
  /// [limit] has to be in the range of 0 and 250.
  Future<List<Product>> getXProductsAfterCursor(
      int limit, String startCursor, {bool deleteThisPartOfCache = false}) async {
    List<Product> productList = [];
    Products tempProduct;
    String cursor = startCursor;
    final WatchQueryOptions _options = WatchQueryOptions(
        documentNode: gql(getXProductsAfterCursorQuery),
        variables: {'x': limit ?? 50, 'cursor': cursor});
    final QueryResult result = await _graphQLClient.query(_options);
    checkForError(result);
    tempProduct = (Products.fromJson(
        (result?.data ??
            const {})["products"] ??
            {}));
    productList += tempProduct?.productList ?? const [];
    if(deleteThisPartOfCache) {
      _graphQLClient.cache.write(_options.toKey(), null);
    }
    return productList;
  }

  /// Returns a List of [Product].
  ///
  /// Returns the Products associated to the given id's in [idList]
  Future<List<Product>> getProductsByIds(List<String> idList, {bool deleteThisPartOfCache = false}) async {
    List<Product> productList = [];
    final QueryOptions _options = WatchQueryOptions(
        documentNode: gql(getProductsByIdsQuery), variables: {'ids': idList});
    final QueryResult result = await _graphQLClient.query(_options);
    checkForError(result);
    var response = result?.data;
    var newResponse = {
      'edges': List.generate(response['nodes'].length,
              (index) => {'node': response['nodes'][index]})
    };
    productList = Products.fromJson(newResponse).productList;
    if(deleteThisPartOfCache) {
      _graphQLClient.cache.write(_options.toKey(), null);
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
  Future<List<Product>> getNProducts(
      bool reverse, {@required int n, @required SortKeyProduct sortKey, bool deleteThisPartOfCache = false}) async {
    assert(n != null);
    assert(sortKey != null);
    List<Product> productList = [];
    final WatchQueryOptions _options = WatchQueryOptions(
        documentNode: gql(getNProductsQuery),
        variables: {'n': n,
          'sortKey': EnumToString.parse(sortKey),
          'reverse': reverse,
        });
    final QueryResult result = await _graphQLClient.query(_options);
    checkForError(result);
    productList = (Products.fromJson(
        (result?.data ??
            const {})["products"] ??
            {}))
        .productList;
    if(deleteThisPartOfCache) {
      _graphQLClient.cache.write(_options.toKey(), null);
    }
    return productList;
  }

  /// Returns the Shop.
  Future<Shop> getShop({bool deleteThisPartOfCache = false}) async {
    final WatchQueryOptions _options = WatchQueryOptions(
      documentNode: gql(getShopQuery),
    );
    final QueryResult result = await _graphQLClient.query(_options);
    checkForError(result);
    if(deleteThisPartOfCache) {
      _graphQLClient.cache.write(_options.toKey(), null);
    }
    return Shop.fromJson(result?.data);
  }

  /// Returns a collection by handle.
  Future<Collection> getFeaturedCollection(String collectionName, {bool deleteThisPartOfCache = false}) async {
    final WatchQueryOptions _options = WatchQueryOptions(
        documentNode: gql(getFeaturedCollectionQuery),
        variables: {
          'query' : collectionName
        }
    );
    final QueryResult result = await _graphQLClient.query(_options);
    checkForError(result);
    if(deleteThisPartOfCache) {
      _graphQLClient.cache.write(_options.toKey(), null);
    }
    return Collections.fromJson(
        result?.data['collections'])
        .collectionList[0];
  }

  /// Returns all available collections.
  ///
  /// Tip: When editing Collections you can choose on which channel or app you want to make them available.
  Future<List<Collection>> getAllCollections({bool deleteThisPartOfCache = false}) async {
    List<Collection> collectionList = [];
    Collections tempCollection;
    String cursor;
    WatchQueryOptions _options;
    do {
      _options = WatchQueryOptions(
          documentNode: gql(getAllCollectionsQuery),
          variables: {'cursor': cursor});
      final QueryResult result = await _graphQLClient.query(_options);
      checkForError(result);
      tempCollection = (Collections.fromJson(
          (result?.data ??
              const {})['collections'] ??
              {}));
      collectionList += tempCollection.collectionList;
      cursor = collectionList.last.cursor;
    } while ((tempCollection?.hasNextPage == true));
    if(deleteThisPartOfCache) {
      _graphQLClient.cache.write(_options.toKey(), null);
    }
    return collectionList;
  }

  /// Returns a List of [Product].
  ///
  /// Returns all Products from the [Collection] with the [id].
  Future<List<Product>> getAllProductsFromCollectionById(String id, {bool deleteThisPartOfCache = false}) async {
    String cursor;
    List<Product> productList = [];
    Collection collection;
    QueryOptions _options;
    do {
     _options = WatchQueryOptions(
          documentNode: gql(getCollectionByIdQuery),
          variables: {'id': id, 'cursor': cursor});
      final QueryResult result = await _graphQLClient.query(_options);
      checkForError(result);
      productList.addAll((Collection.fromJson(
          result?.data)
          .products)
          .productList);
      collection = (Collection.fromJson(
          result?.data));
      cursor = productList.last.cursor;
    } while (collection?.products?.hasNextPage == true);
    if(deleteThisPartOfCache) {
      _graphQLClient.cache.write(_options.toKey(), null);
    }
    return productList;
  }

  /// Returns a List of [Product].
  ///
  /// Returns the first [limit] Products after the given [startCursor].
  /// [limit] has to be in the range of 0 and 250.
  Future<List<Product>> getXProductsAfterCursorWithinCollection(
      String id, int limit, String startCursor, SortKeyProduct sortKey, {bool deleteThisPartOfCache = false}) async {
    String cursor = startCursor;
    final WatchQueryOptions _options = WatchQueryOptions(
        documentNode: gql(getXProductsAfterCursorWithinCollectionQuery),
        variables: {
          'id': id,
          'cursor': cursor,
          'limit': limit,
          'sortKey': EnumToString.parse(sortKey),
        });
    final QueryResult result = await _graphQLClient.query(_options);
    checkForError(result);
    if(deleteThisPartOfCache) {
      _graphQLClient.cache.write(_options.toKey(), null);
    }
    return (Collection.fromJson(
        result?.data))
        .products
        .productList;
  }

  /// Returns a List of [Product].
  ///
  /// Gets all [Product] from a [query] search sorted by [sortKey].
  Future<List<Product>> getAllProductsOnQuery(
      String cursor, SortKeyProduct sortKey, String query, {bool deleteThisPartOfCache = false}) async {
    String cursor;
    List<Product> productList = [];
    Products products;
    WatchQueryOptions _options;
    do {
       _options = WatchQueryOptions(
          documentNode: gql(getAllProductsOnQueryQuery),
          variables: {
            'cursor': cursor,
            'sortKey': EnumToString.parse(sortKey),
            'query': query,
          });
      final QueryResult result = await _graphQLClient.query(_options);
      checkForError(result);
      productList.addAll((Products.fromJson(
          (result?.data ??
              const {})['products']))
          ?.productList);
      products = (Products.fromJson(
          (result?.data ??
              const {})['products']));
      cursor = productList.last.cursor;
    } while (products?.hasNextPage == true);
    if(deleteThisPartOfCache) {
      _graphQLClient.cache.write(_options.toKey(), null);
    }
    return productList;
  }

  /// Returns a List of [Product].
  ///
  /// Gets [limit] amount of [Product] from the [query] search, sorted by [sortKey].
  Future<List<Product>> getXProductsOnQueryAfterCursor(
      String cursor, int limit, SortKeyProduct sortKey, String query, {bool deleteThisPartOfCache = false}) async {
    final WatchQueryOptions _options = WatchQueryOptions(
        documentNode: gql(getXProductsOnQueryAfterCursorQuery),
        variables: {
          'cursor': cursor,
          'limit': limit,
          'sortKey': EnumToString.parse(sortKey),
          'query': query,
        });
    final QueryResult result = await ShopifyConfig.graphQLClient.query(_options);
    checkForError(result);
    if(deleteThisPartOfCache) {
      _graphQLClient.cache.write(_options.toKey(), null);
    }
    return Products.fromJson(
        (result?.data ??
            const {})['products'])
        ?.productList;
  }
}
