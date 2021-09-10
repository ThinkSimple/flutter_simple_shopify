// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blogs.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Blogs _$$_BlogsFromJson(Map<String, dynamic> json) => _$_Blogs(
      blogList: (json['blogList'] as List<dynamic>)
          .map((e) => Blog.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_BlogsToJson(_$_Blogs instance) => <String, dynamic>{
      'blogList': instance.blogList,
    };
