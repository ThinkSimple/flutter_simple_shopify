import 'package:flutter_simple_shopify/models/src/article.dart';


class Blogs {

  Blogs({required this.blogList});

  final List<Blog> blogList;

  static Blogs fromJson(Map<String, dynamic> json){
    return Blogs(
        blogList: _getBlogList(json)
    );
  }

  static List<Blog> _getBlogList(Map<String, dynamic> json) {
    List<Blog> blogList = [];
    json['edges']?.forEach((blog) => blogList.add(Blog.fromJson(blog ?? const {})));
    return blogList;
  }
}

class Blog {

  final String? id;
  final String? handle;
  final String? title;
  final String? url;
  final Articles? articles;

  Blog({this.id, this.handle, this.title, this.url, this.articles});

  static Blog fromJson(Map<String, dynamic> json){
    return Blog(
        id: (json['node'] ?? {})['id'],
        handle: (json['node'] ?? {})['handle'],
        title: (json['node'] ?? {})['title'],
        url: (json['node'] ?? {})['url'],
        articles: Articles.fromJson(((json['node'] ?? const {})['articles']) ?? const {} )
    );
  }

}