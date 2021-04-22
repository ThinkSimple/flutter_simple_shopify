import 'package:freezed_annotation/freezed_annotation.dart';

part 'comment.freezed.dart';

@freezed
class Comment with _$Comment {
  const Comment._();
  factory Comment({
    String? email,
    String? name,
    String? content,
    String? contentHtml,
    String? id,
  }) = _Comment;

  static Comment fromJson(Map<String, dynamic> json) {
    return Comment(
        email: ((json['node'] ?? const {})['author'] ?? const {})['email'],
        name: ((json['node'] ?? const {})['author'] ?? const {})['name'],
        content: (json['node'] ?? const {})['content'],
        contentHtml: (json['node'] ?? const {})['contentHtml'],
        id: (json['node'] ?? const {})['id']);
  }
}
