import 'package:flutter_simple_shopify/models/src/article/articles/articles.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'blog.freezed.dart';
part 'blog.g.dart';

@freezed
class Blog with _$Blog {
  const Blog._();
  factory Blog({
    String? id,
    String? handle,
    String? title,
    String? url,
    Articles? articles,
  }) = _Blog;

  static Blog fromGraphJson(Map<String, dynamic> json) {
    return Blog(
        id: (json['node'] ?? {})['id'],
        handle: (json['node'] ?? {})['handle'],
        title: (json['node'] ?? {})['title'],
        url: (json['node'] ?? {})['url'],
        articles: Articles.fromGraphJson(
            ((json['node'] ?? const {})['articles']) ?? const {}));
  }

  factory Blog.fromJson(Map<String, dynamic> json) => _$BlogFromJson(json);
}
