import 'package:freezed_annotation/freezed_annotation.dart';

part 'page.freezed.dart';
part 'page.g.dart';

@freezed
class Page with _$Page {
  const Page._();
  factory Page({
    required String body,
    required String bodySummary,
    required DateTime createdAt,
    required String handle,
    required String id,
    required String title,
    required DateTime updatedAt,
    required String url,
  }) = _Page;

  static Page fromGraphJson(Map<String, dynamic> json) {
    return Page(
      id: (json['node'] ?? {})['id'],
      handle: (json['node'] ?? {})['handle'],
      title: (json['node'] ?? {})['title'],
      url: (json['node'] ?? {})['url'],
      body: (json['node'] ?? {})['body'],
      bodySummary: (json['node'] ?? {})['bodySummary'],
      createdAt: DateTime.parse(((json['node'] ?? const {})['createdAt'])),
      updatedAt: DateTime.parse(((json['node'] ?? const {})['updatedAt'])),
    );
  }

  factory Page.fromJson(Map<String, dynamic> json) => _$PageFromJson(json);
}
