import 'package:flutter_simple_shopify/enums/enums.dart';
import 'package:flutter_simple_shopify/enums/src/sort_key_article.dart';
import 'package:flutter_simple_shopify/graphql_operations/queries/get_all_blogs.dart';
import 'package:flutter_simple_shopify/graphql_operations/queries/get_blog_by_handle.dart';
import 'package:flutter_simple_shopify/graphql_operations/queries/get_n_articles_sorted.dart';
import 'package:flutter_simple_shopify/mixins/src/shopfiy_error.dart';
import 'package:flutter_simple_shopify/models/src/article/article.dart';
import 'package:flutter_simple_shopify/models/src/article/articles/articles.dart';
import 'package:flutter_simple_shopify/models/src/blog/blog.dart';
import 'package:flutter_simple_shopify/models/src/blog/blogs/blogs.dart';
import 'package:graphql/client.dart';

import '../../shopify_config.dart';

/// ShopifyBlog class handles all Blog related things.
class ShopifyBlog with ShopifyError {
  ShopifyBlog._();

  GraphQLClient? get _graphQLClient => ShopifyConfig.graphQLClient;
  static final ShopifyBlog instance = ShopifyBlog._();

  /// Returns a List of [Blog].
  ///
  /// Returns All [Blog] of the Shop.
  Future<List<Blog>?> getAllBlogs(
      {bool deleteThisPartOfCache = false,
      SortKeyBlog sortKeyBlog = SortKeyBlog.HANDLE,
      bool reverseBlogs = false,
      bool reverseArticles = false}) async {
    final WatchQueryOptions _options =
        WatchQueryOptions(document: gql(getAllBlogsQuery), variables: {
      'reverseBlogs': reverseBlogs,
      'reverseArticles': reverseArticles,
      'sortKey': sortKeyBlog.parseToString(),
    });
    final QueryResult result = await _graphQLClient!.query(_options);
    checkForError(result);
    if (deleteThisPartOfCache) {
      _graphQLClient!.cache.writeQuery(_options.asRequest, data: {});
    }
    return (Blogs.fromGraphJson((result.data ?? const {})["blogs"] ?? const {}))
        .blogList;
  }

  /// Returns a [Blog].
  ///
  /// Returns the [Blog] that is associated to the [handle].
  /// [sortKeyArticle] is meant for the List of [Article] in the [Blog].
  Future<Blog> getBlogByHandle(String handle,
      {SortKeyArticle sortKeyArticle = SortKeyArticle.RELEVANCE,
      bool deleteThisPartOfCache = false,
      bool reverse = false}) async {
    final QueryOptions _options =
        WatchQueryOptions(document: gql(getBlogByHandleQuery), variables: {
      'handle': handle,
      'sortKey': sortKeyArticle.parseToString(),
      'reverseArticles': reverse
    });
    final QueryResult result = await _graphQLClient!.query(_options);
    checkForError(result);
    var response = result.data!['blogByHandle'];
    var newResponse = {'node': response};
    if (deleteThisPartOfCache) {
      _graphQLClient!.cache.writeQuery(_options.asRequest, data: {});
    }
    return Blog.fromGraphJson(newResponse);
  }

  /// Returns a List of [Article].
  ///
  /// Returns a the first [articleAmount] of [Article] sorted by [sortKeyArticle].
  Future<List<Article>?> getXArticlesSorted(int articleAmount,
      {SortKeyArticle sortKeyArticle = SortKeyArticle.RELEVANCE,
      bool deleteThisPartOfCache = false}) async {
    final QueryOptions _options =
        WatchQueryOptions(document: gql(getNArticlesSortedQuery), variables: {
      'x': articleAmount,
      'sortKey': sortKeyArticle.parseToString(),
    });
    final QueryResult result = await _graphQLClient!.query(_options);
    checkForError(result);
    if (deleteThisPartOfCache) {
      _graphQLClient!.cache.writeQuery(_options.asRequest, data: {});
    }
    return (Articles.fromJson(
            (result.data ?? const {})['articles'] ?? const {}))
        .articleList;
  }
}
