// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'articles.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Articles _$_$_ArticlesFromJson(Map<String, dynamic> json) {
  return _$_Articles(
    articleList: (json['articleList'] as List<dynamic>)
        .map((e) => Article.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_ArticlesToJson(_$_Articles instance) =>
    <String, dynamic>{
      'articleList': instance.articleList,
    };
