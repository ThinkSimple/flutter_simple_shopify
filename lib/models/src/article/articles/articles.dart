import 'package:freezed_annotation/freezed_annotation.dart';

import '../article.dart';

part 'articles.freezed.dart';
part 'articles.g.dart';

@freezed
class Articles with _$Articles {
  factory Articles({required List<Article> articleList}) = _Articles;
  factory Articles.fromJson(Map<String, dynamic> json) =>
      _$ArticlesFromJson(json);

  static Articles fromGraphJson(Map<String, dynamic> json) {
    return Articles(articleList: _getArticleList(json));
  }

  static _getArticleList(Map<String, dynamic> json) {
    List<Article> articleList = [];
    json['edges']?.forEach((article) =>
        articleList.add(Article.fromGraphJson(article ?? const {})));
    return articleList;
  }
}
