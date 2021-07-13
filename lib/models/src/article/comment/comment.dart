import 'package:freezed_annotation/freezed_annotation.dart';

part 'comment.freezed.dart';
part 'comment.g.dart';

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

  factory Comment.fromJson(Map<String, dynamic> json) =>
      _$CommentFromJson(json);

  static Comment fromGraphJson(Map<String, dynamic> json) {
    return Comment(
        email: ((json['node'] ?? const {})['author'] ?? const {})['email'],
        name: ((json['node'] ?? const {})['author'] ?? const {})['name'],
        content: (json['node'] ?? const {})['content'],
        contentHtml: (json['node'] ?? const {})['contentHtml'],
        id: (json['node'] ?? const {})['id']);
  }
}
