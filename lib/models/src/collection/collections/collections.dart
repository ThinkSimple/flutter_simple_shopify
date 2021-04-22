import '../collection.dart';

class Collections {
  final List<Collection>? collectionList;
  final bool? hasNextPage;

  Collections({this.collectionList, this.hasNextPage});

  static Collections fromJson(Map<String, dynamic> json) {
    return Collections(
        collectionList: _getCollectionList(json),
        hasNextPage: (json['pageInfo'] ?? const {})['hasNextPage']);
  }

  static List<Collection> _getCollectionList(Map<String, dynamic> json) {
    List<Collection> collectionList = [];
    json['edges']?.forEach(
        (e) => collectionList.add(Collection.fromJson(e ?? const {})));
    return collectionList;
  }
}
