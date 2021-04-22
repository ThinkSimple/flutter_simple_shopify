import '../article.dart';

class Articles {
  final List<Article>? articleList;

  Articles({this.articleList});

  static Articles fromJson(Map<String, dynamic> json) {
    return Articles(articleList: _getArticleList(json));
  }

  static _getArticleList(Map<String, dynamic> json) {
    List<Article> articleList = [];
    json['edges']?.forEach(
        (article) => articleList.add(Article.fromJson(article ?? const {})));
    return articleList;
  }
}
