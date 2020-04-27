import 'package:enum_to_string/enum_to_string.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_simple_shopify/graphql_operations/queries/get_products_by_ids.dart';
import 'package:flutter_simple_shopify/graphql_operations/queries/get_x_products_after_cursor.dart';
import 'package:flutter_simple_shopify/models/src/product.dart';
import 'package:flutter_simple_shopify/enums/src/sort_key.dart';
import 'package:graphql/client.dart';
import '../../graphql_operations/queries/get_collections.dart';
import '../../graphql_operations/queries/get_featured_collections.dart';
import '../../graphql_operations/queries/get_n_products.dart';
import '../../graphql_operations/queries/get_products.dart';
import '../../graphql_operations/queries/get_shop_name.dart';
import '../../models/src/collection.dart';
import '../../shopify_config.dart';

class ShopifyStore {

  ShopifyStore._();

  static final ShopifyStore instance = ShopifyStore._();

  GraphQLClient _graphQLClient = ShopifyConfig.graphQLClient;

  Future<List<Product>> getAllProducts() async{
      List<Product> productList = [];
      Products tempProduct;
      String cursor;
      do{
        final WatchQueryOptions _options = WatchQueryOptions(
            documentNode: gql(getProductsQuery),
            variables: {
              'cursor' : cursor
            }
        );
       tempProduct = (Products.fromJson(((await _graphQLClient.query(_options))?.data ?? const {})["products"] ?? {}));

       productList += tempProduct?.productList ?? const [];
       cursor = productList.last.cursor;
      }while((tempProduct?.hasNextPage == true));

      return productList;
  }

  /// Returns a List of [Product].
  ///
  /// Returns the first [limit] Products after the given [startCursor].
  /// [limit] has to be in the range of 0 and 250.
  Future<List<Product>> getXProductsAfterCursor(int limit,String startCursor) async{
    List<Product> productList = [];
    Products tempProduct;
    String cursor = startCursor;
    final WatchQueryOptions _options = WatchQueryOptions(
        documentNode: gql(getXProductsAfterCursorQuery),
        variables: {
          'x' : limit ?? 50,
          'cursor' : cursor
        }
    );
    tempProduct = (Products.fromJson(((await ShopifyConfig.graphQLClient.query(_options))?.data ?? const {})["products"] ?? {}));
    productList += tempProduct?.productList ?? const [];
    cursor = productList.last.cursor;
    return productList;
  }

  Future<List<Product>> getProductsByIds() async {
    List<Product> productList = [];
    final QueryOptions _options = WatchQueryOptions(
      documentNode: gql(getProductsByIdsQuery),
    );
    var response = (await ShopifyConfig.graphQLClient.query(_options))?.data;
    var newResponse = {'edges' : List.generate(response['nodes'].length, (index) => {'node' : response['nodes'][index]})};
    productList = Products.fromJson(newResponse).productList;
    return productList;
  }

  Future<List<Product>> getNProducts({@required int n, @required SortKey sortKey}) async {
    assert(n != null);
    assert(sortKey != null);
    List<Product> productList = [];

    final WatchQueryOptions _options = WatchQueryOptions(
        documentNode: gql(getNProductsQuery),
        variables: {
          'n': n,
          'sortKey': EnumToString.parse(sortKey)
        }
    );
    productList = (Products.fromJson(((await _graphQLClient.query(_options))?.data ??
        const {})["products"] ?? {})).productList;
    return productList;
  }


  Future<String> getShopName() async {
    final WatchQueryOptions _options = WatchQueryOptions(
        documentNode: gql(getShopNameQuery),
    );
    final Map<String,dynamic> _queryMap = (await _graphQLClient.query(_options))?.data;
    return _queryMap['shop']['name'];
  }

  Future<Collection> getFeaturedCollection() async {
    final WatchQueryOptions _options = WatchQueryOptions(
        documentNode: gql(getFeaturedCollectionQuery),
    );
    return Collections.fromJson((await _graphQLClient.query(_options)).data['collections']).collectionList[0];
  }

  Future<List<Collection>> getAllCollections() async {
    List<Collection> collectionList = [];
    Collections tempCollection;
    String cursor;
    do{
      final WatchQueryOptions _options = WatchQueryOptions(
          documentNode: gql(getAllCollectionsQuery),
          variables: {
            'cursor' : cursor
          }
      );
      tempCollection = (Collections.fromJson(((await _graphQLClient.query(_options))?.data ?? const {})['collections'] ?? {}));
      collectionList += tempCollection.collectionList;
      cursor = collectionList.last.cursor;
    }while((tempCollection?.hasNextPage == true));

    return collectionList;
  }


}