import '../blog.dart';

class Blogs {
  Blogs({this.blogList});

  final List<Blog>? blogList;

  static Blogs fromJson(Map<String, dynamic> json) {
    return Blogs(blogList: _getBlogList(json));
  }

  static List<Blog> _getBlogList(Map<String, dynamic> json) {
    List<Blog> blogList = [];
    json['edges']
        ?.forEach((blog) => blogList.add(Blog.fromJson(blog ?? const {})));
    return blogList;
  }
}
