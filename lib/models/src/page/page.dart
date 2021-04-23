import 'package:freezed_annotation/freezed_annotation.dart';

part 'page.freezed.dart';
part 'page.g.dart';

@freezed
class Page with _$Page {
  const Page._();
  factory Page({
    String? body,
    String? bodySummary,
    DateTime? createdAt,
    String? handle,
    String? id,
    String? title,
    DateTime? updatedAt,
    String? url,
  }) = _Page;

  static Page fromGraphJson(Map<String, dynamic> json) {
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

  factory Page.fromJson(Map<String, dynamic> json) => _$PageFromJson(json);
}
