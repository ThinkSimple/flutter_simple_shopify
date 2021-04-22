import '../page.dart';

class Pages {
  Pages({this.pageList});

  final List<Page>? pageList;

  static Pages fromJson(Map<String, dynamic> json) {
    return Pages(pageList: _getPageList(json));
  }

  static List<Page> _getPageList(Map<String, dynamic> json) {
    List<Page> pageList = [];
    json['edges']
        ?.forEach((blog) => pageList.add(Page.fromJson(blog ?? const {})));
    return pageList;
  }
}
