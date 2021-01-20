class Pages {
  Pages({this.pageList});

  final List<Page> pageList;

  static Pages fromJson(Map<String, dynamic> json) {
    return Pages(pageList: _getPageList(json ?? const {}));
  }

  static List<Page> _getPageList(Map<String, dynamic> json) {
    List<Page> pageList = [];
    json['edges']
        ?.forEach((blog) => pageList.add(Page.fromJson(blog ?? const {})));
    return pageList;
  }
}

class Page {
  final String body;
  final String bodySummary;
  final DateTime createdAt;
  final String handle;
  final String id;
  final String title;
  final DateTime updatedAt;
  final String url;

  Page({
    this.id,
    this.handle,
    this.title,
    this.url,
    this.body,
    this.bodySummary,
    this.createdAt,
    this.updatedAt,
  });

  static Page fromJson(Map<String, dynamic> json) {
    return Page(
      id: (json['node'] ?? {})['id'],
      handle: (json['node'] ?? {})['handle'],
      title: (json['node'] ?? {})['title'],
      url: (json['node'] ?? {})['url'],
      body: (json['node'] ?? {})['body'],
      bodySummary: (json['node'] ?? {})['bodySummary'],
      createdAt: DateTime.tryParse(((json['node'] ?? const {})['createdAt'])),
      updatedAt: DateTime.tryParse(((json['node'] ?? const {})['updatedAt'])),
    );
  }
}
