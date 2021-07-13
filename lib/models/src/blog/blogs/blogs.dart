import 'package:freezed_annotation/freezed_annotation.dart';

import '../blog.dart';

part 'blogs.freezed.dart';
part 'blogs.g.dart';

@freezed
class Blogs with _$Blogs {
  factory Blogs({required List<Blog> blogList}) = _Blogs;
  factory Blogs.fromJson(Map<String, dynamic> json) => _$BlogsFromJson(json);

  static Blogs fromGraphJson(Map<String, dynamic> json) {
    return Blogs(blogList: _getBlogList(json));
  }

  static List<Blog> _getBlogList(Map<String, dynamic> json) {
    List<Blog> blogList = [];
    json['edges']
        ?.forEach((blog) => blogList.add(Blog.fromGraphJson(blog ?? const {})));
    return blogList;
  }
}
