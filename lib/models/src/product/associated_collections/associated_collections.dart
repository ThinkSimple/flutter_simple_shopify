import 'package:freezed_annotation/freezed_annotation.dart';

part 'associated_collections.freezed.dart';
part 'associated_collections.g.dart';

@freezed
class AssociatedCollections with _$AssociatedCollections {
  const AssociatedCollections._();

  factory AssociatedCollections(
      {String? description,
      String? descriptionHtml,
      String? id,
      String? handle,
      String? updatedAt,
      String? title}) = _AssociatedCollections;

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
