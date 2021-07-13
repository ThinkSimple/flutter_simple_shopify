import 'package:freezed_annotation/freezed_annotation.dart';

part 'associated_collections.freezed.dart';
part 'associated_collections.g.dart';

@freezed
class AssociatedCollections with _$AssociatedCollections {
  const AssociatedCollections._();

  factory AssociatedCollections({
    required String id,
    required String title,
    required String description,
    required String updatedAt,
    String? descriptionHtml,
    String? handle,
  }) = _AssociatedCollections;

  static AssociatedCollections fromGraphJson(Map<String, dynamic> json) {
    return AssociatedCollections(
        description: (json['node'] ?? const {})['description'],
        descriptionHtml: (json['node'] ?? const {})['descriptionHtml'],
        id: (json['node'] ?? const {})['id'],
        handle: (json['node'] ?? const {})['handle'],
        updatedAt: (json['node'] ?? const {})['updatedAt'],
        title: (json['node'] ?? const {})['title']);
  }

  factory AssociatedCollections.fromJson(Map<String, dynamic> json) =>
      _$AssociatedCollectionsFromJson(json);
}
