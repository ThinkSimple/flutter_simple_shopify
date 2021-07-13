import 'package:flutter_simple_shopify/models/src/product/shopify_image/shopify_image.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'author_v_2/author_v_2.dart';
import 'comment/comment.dart';

part 'article.freezed.dart';
part 'article.g.dart';

@freezed
class Article with _$Article {
  const Article._();

  factory Article({
    final AuthorV2? author,
    final List<Comment>? commentList,
    final String? content,
    final String? contentHtml,
    final String? excerpt,
    final String? excerptHtml,
    final String? handle,
    final String? id,
    final ShopifyImage? image,
    final String? publishedAt,
    final List<String>? tags,
    final String? title,
    final String? url,
  }) = _Article;

  factory Article.fromJson(Map<String, dynamic> json) =>
      _$ArticleFromJson(json);

  static Article fromGraphJson(Map<String, dynamic> json) {
    return Article(
      author: AuthorV2.fromJson(
          ((json['node'] ?? const {})['authorV2']) ?? const {}),
      commentList:
          _getCommentList((json['node'] ?? const {})['comments'] ?? const {}),
      content: (json['node'] ?? const {})['content'],
      contentHtml: (json['node'] ?? const {})['contentHtml'],
      excerpt: (json['node'] ?? const {})['excerpt'],
      excerptHtml: (json['node'] ?? const {})['excerptHtml'],
      handle: (json['node'] ?? const {})['handle'],
      id: (json['node'] ?? const {})['id'],
      image: ShopifyImage.fromJson(
          (json['node'] ?? const {})['image'] ?? const {}),
      publishedAt: (json['node'] ?? const {})['publishedAt'],
      tags: _getTagsList(json),
      title: (json['node'] ?? const {})['title'],
      url: (json['node'] ?? const {})['url'],
    );
  }

  static _getCommentList(Map<String, dynamic> json) {
    List<Comment> commentList = [];
    json['edges']?.forEach(
        (comment) => commentList.add(Comment.fromGraphJson(comment ?? const {})));
    return commentList;
  }

  static _getTagsList(Map<String, dynamic> json) {
    List<String> tagsList = [];
    (json['node'] ?? const {})['tags']?.forEach((tag) => tagsList.add(tag));
    return tagsList;
  }
}
