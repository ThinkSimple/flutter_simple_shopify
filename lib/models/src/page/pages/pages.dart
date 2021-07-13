import 'package:freezed_annotation/freezed_annotation.dart';

import '../page.dart';

part 'pages.freezed.dart';
part 'pages.g.dart';

@freezed
class Pages with _$Pages {
  factory Pages({required List<Page> pageList}) = _Pages;
  factory Pages.fromJson(Map<String, dynamic> json) => _$PagesFromJson(json);

  static Pages fromGraphJson(Map<String, dynamic> json) {
    return Pages(pageList: _getPageList(json));
  }

  static List<Page> _getPageList(Map<String, dynamic> json) {
    List<Page> pageList = [];
    json['edges']
        ?.forEach((blog) => pageList.add(Page.fromGraphJson(blog ?? const {})));
    return pageList;
  }
}
