

class ShopifyPage {

  final String? id;
  final String? handle;
  final String? title;
  final String? body;
  final String? url;

  ShopifyPage({this.id, this.handle, this.title, this.body, this.url});

  static ShopifyPage fromJson(Map<String, dynamic> json){
    return ShopifyPage(
        id: json['id'],
        handle: json['handle'],
        title: json['title'],
        body: json['body'],
        url: json['url'],
    );
  }

}