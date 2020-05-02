import 'package:enum_to_string/enum_to_string.dart';
import 'package:flutter_simple_shopify/enums/src/sort_key_article.dart';
import 'package:flutter_simple_shopify/graphql_operations/queries/get_blog_by_handle.dart';
import 'package:flutter_simple_shopify/graphql_operations/queries/get_n_articles_sorted.dart';
import 'package:flutter_simple_shopify/graphql_operations/queries/get_x_products_after_cursor.dart';
import 'package:flutter_simple_shopify/models/src/article.dart';
import 'package:flutter_simple_shopify/models/src/blog.dart';
import 'package:graphql/client.dart';

import '../../shopify_config.dart';

class ShopifyBlog {
  ShopifyBlog._();

  final GraphQLClient _graphQLClient = ShopifyConfig.graphQLClient;
  static final ShopifyBlog instance = ShopifyBlog._();

  /// Returns a List of [Blog].
  ///
  /// Returns All [Blog] of the Shop.
  Future<List<Blog>> getAllBlogs() async {
    final WatchQueryOptions _options = WatchQueryOptions(
      documentNode: gql(getXProductsAfterCursorQuery),
    );
    return (Blogs.fromJson(((await _graphQLClient.query(_options))?.data ??
                const {})["blogs"] ??
            const {}))
        .blogList;
  }

  /// Returns a [Blog].
  ///
  /// Returns the [Blog] that is associated to the [handle].
  /// [sortKeyArticle] is meant for the List of [Article] in the [Blog].
  Future<Blog> getBlogByHandle(
      String handle, SortKeyArticle sortKeyArticle) async {
    final QueryOptions _options = WatchQueryOptions(
        documentNode: gql(getBlogByHandleQuery),
        variables: {
          'handle': handle,
          'sortKey': EnumToString.parse(sortKeyArticle)
        });
    var response = ((await _graphQLClient.query(_options))?.data['blogByHandle']
            as LazyCacheMap)
        ?.data;
    var newResponse = {'node': response};
    return Blog.fromJson(newResponse);
  }

  /// Returns a List of [Article].
  ///
  /// Returns a the first [articleAmount] of [Article] sorted by [sortKeyArticle].
  Future<List<Article>> getXArticlesSorted(
      {int articleAmount, SortKeyArticle sortKeyArticle}) async {
    final QueryOptions _options = WatchQueryOptions(
        documentNode: gql(getNArticlesSortedQuery),
        variables: {
          'x': articleAmount,
          'sortKey': EnumToString.parse(sortKeyArticle)
        });
    return (Articles.fromJson((((await _graphQLClient.query(_options))?.data ??
                const {}))['articles'] ??
            const {}))
        .articleList;
  }
}
