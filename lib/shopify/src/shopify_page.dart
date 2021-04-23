import 'package:flutter_simple_shopify/enums/src/sort_key_page.dart';
import 'package:flutter_simple_shopify/graphql_operations/queries/get_all_pages.dart';
import 'package:flutter_simple_shopify/graphql_operations/queries/get_page_by_handle.dart';
import 'package:flutter_simple_shopify/mixins/src/shopfiy_error.dart';
import 'package:flutter_simple_shopify/models/src/page/page.dart';
import 'package:flutter_simple_shopify/models/src/page/pages/pages.dart';
import 'package:graphql/client.dart';

import '../../shopify_config.dart';

/// ShopifyPage class handles all Page related things.
class ShopifyPage with ShopifyError {
  ShopifyPage._();

  GraphQLClient? get _graphQLClient => ShopifyConfig.graphQLClient;
  static final ShopifyPage instance = ShopifyPage._();

  /// Returns a List of [Page].
  ///
  /// Returns All [Page] of the Shop.
  Future<List<Page>?> getAllPages({
    bool deleteThisPartOfCache = false,
    SortKeyPage sortKeyPage = SortKeyPage.ID,
    bool reversePages = false,
    String? pagesQuery,
  }) async {
    final WatchQueryOptions _options = WatchQueryOptions(
      document: gql(getAllPagesQuery),
      variables: {
        'reversePages': reversePages,
        'sortKey': sortKeyPage.parseToString(),
        'pagesQuery': pagesQuery,
      },
    );
    final QueryResult result = await _graphQLClient!.query(_options);
    checkForError(result);
    if (deleteThisPartOfCache) {
      _graphQLClient!.cache.writeQuery(_options.asRequest, data: {});
    }
    return (Pages.fromGraphJson((result.data ?? const {})["pages"] ?? const {}))
        .pageList;
  }

  /// Returns a [Page].
  ///
  /// Returns the [Page] that is associated to the [handle].
  Future<Page> getPageByHandle(
    String handle, {
    bool deleteThisPartOfCache = false,
  }) async {
    final QueryOptions _options = WatchQueryOptions(
      document: gql(getPageByHandleQuery),
      variables: {
        'handle': handle,
      },
    );
    final QueryResult result = await _graphQLClient!.query(_options);
    checkForError(result);
    var response = result.data!['pageByHandle'];
    var newResponse = {'node': response};
    if (deleteThisPartOfCache) {
      _graphQLClient!.cache.writeQuery(_options.asRequest, data: {});
    }
    return Page.fromJson(newResponse);
  }
}
