import 'package:enum_to_string/enum_to_string.dart';
import 'package:flutter_simple_shopify/enums/src/sort_key_article.dart';
import 'package:flutter_simple_shopify/graphql_operations/queries/get_blog_by_handle.dart';
import 'package:flutter_simple_shopify/graphql_operations/queries/get_n_articles_sorted.dart';
import 'package:flutter_simple_shopify/graphql_operations/queries/get_x_products_after_cursor.dart';
import 'package:flutter_simple_shopify/mixins/src/shopfiy_error.dart';
import 'package:flutter_simple_shopify/models/src/article.dart';
import 'package:flutter_simple_shopify/models/src/blog.dart';
import 'package:graphql/client.dart';

import '../../shopify_config.dart';

/// ShopifyBlog class handles all Blog related things.
class ShopifyBlog with ShopifyError{
  ShopifyBlog._();

  final GraphQLClient _graphQLClient = ShopifyConfig.graphQLClient;
  static final ShopifyBlog instance = ShopifyBlog._();

  /// Returns a List of [Blog].
  ///
  /// Returns All [Blog] of the Shop.
  Future<List<Blog>> getAllBlogs({bool deleteThisPartOfCache = false}) async {
    final WatchQueryOptions _options = WatchQueryOptions(
      documentNode: gql(getXProductsAfterCursorQuery),
    );
    final QueryResult result = await _graphQLClient.query(_options);
    checkForError(result);
    if(deleteThisPartOfCache) {
      _graphQLClient.cache.write(_options.toKey(), null);
    }
    return (Blogs.fromJson((result?.data ??
        const {})["blogs"] ??
        const {}))
        .blogList;
  }

  /// Returns a [Blog].
  ///
  /// Returns the [Blog] that is associated to the [handle].
  /// [sortKeyArticle] is meant for the List of [Article] in the [Blog].
  Future<Blog> getBlogByHandle(
      String handle, SortKeyArticle sortKeyArticle, {bool deleteThisPartOfCache = false}) async {
    final QueryOptions _options = WatchQueryOptions(
        documentNode: gql(getBlogByHandleQuery),
        variables: {
          'handle': handle,
          'sortKey': EnumToString.parse(sortKeyArticle)
        });
    final QueryResult result = await _graphQLClient.query(_options);
    checkForError(result);
    var response = (result?.data['blogByHandle']
    as LazyCacheMap)
        ?.data;
    var newResponse = {'node': response};
    if(deleteThisPartOfCache) {
      _graphQLClient.cache.write(_options.toKey(), null);
    }
    return Blog.fromJson(newResponse);
  }

  /// Returns a List of [Article].
  ///
  /// Returns a the first [articleAmount] of [Article] sorted by [sortKeyArticle].
  Future<List<Article>> getXArticlesSorted(
      int articleAmount, SortKeyArticle sortKeyArticle, {bool deleteThisPartOfCache = false}) async {
    final QueryOptions _options = WatchQueryOptions(
        documentNode: gql(getNArticlesSortedQuery),
        variables: {
          'x': articleAmount,
          'sortKey': EnumToString.parse(sortKeyArticle)
        });
    final QueryResult result = await _graphQLClient.query(_options);
    checkForError(result);
    if(deleteThisPartOfCache) {
      _graphQLClient.cache.write(_options.toKey(), null);
    }
    return (Articles.fromJson(((result?.data ??
        const {}))['articles'] ??
        const {}))
        .articleList;
  }
}
