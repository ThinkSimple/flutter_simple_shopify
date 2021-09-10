// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'article.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Article _$ArticleFromJson(Map<String, dynamic> json) {
  return _Article.fromJson(json);
}

/// @nodoc
class _$ArticleTearOff {
  const _$ArticleTearOff();

  _Article call(
      {AuthorV2? author,
      List<Comment>? commentList,
      String? content,
      String? contentHtml,
      String? excerpt,
      String? excerptHtml,
      String? handle,
      String? id,
      ShopifyImage? image,
      String? publishedAt,
      List<String>? tags,
      String? title,
      String? url}) {
    return _Article(
      author: author,
      commentList: commentList,
      content: content,
      contentHtml: contentHtml,
      excerpt: excerpt,
      excerptHtml: excerptHtml,
      handle: handle,
      id: id,
      image: image,
      publishedAt: publishedAt,
      tags: tags,
      title: title,
      url: url,
    );
  }

  Article fromJson(Map<String, Object> json) {
    return Article.fromJson(json);
  }
}

/// @nodoc
const $Article = _$ArticleTearOff();

/// @nodoc
mixin _$Article {
  AuthorV2? get author => throw _privateConstructorUsedError;
  List<Comment>? get commentList => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;
  String? get contentHtml => throw _privateConstructorUsedError;
  String? get excerpt => throw _privateConstructorUsedError;
  String? get excerptHtml => throw _privateConstructorUsedError;
  String? get handle => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  ShopifyImage? get image => throw _privateConstructorUsedError;
  String? get publishedAt => throw _privateConstructorUsedError;
  List<String>? get tags => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArticleCopyWith<Article> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleCopyWith<$Res> {
  factory $ArticleCopyWith(Article value, $Res Function(Article) then) =
      _$ArticleCopyWithImpl<$Res>;
  $Res call(
      {AuthorV2? author,
      List<Comment>? commentList,
      String? content,
      String? contentHtml,
      String? excerpt,
      String? excerptHtml,
      String? handle,
      String? id,
      ShopifyImage? image,
      String? publishedAt,
      List<String>? tags,
      String? title,
      String? url});

  $AuthorV2CopyWith<$Res>? get author;
  $ShopifyImageCopyWith<$Res>? get image;
}

/// @nodoc
class _$ArticleCopyWithImpl<$Res> implements $ArticleCopyWith<$Res> {
  _$ArticleCopyWithImpl(this._value, this._then);

  final Article _value;
  // ignore: unused_field
  final $Res Function(Article) _then;

  @override
  $Res call({
    Object? author = freezed,
    Object? commentList = freezed,
    Object? content = freezed,
    Object? contentHtml = freezed,
    Object? excerpt = freezed,
    Object? excerptHtml = freezed,
    Object? handle = freezed,
    Object? id = freezed,
    Object? image = freezed,
    Object? publishedAt = freezed,
    Object? tags = freezed,
    Object? title = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as AuthorV2?,
      commentList: commentList == freezed
          ? _value.commentList
          : commentList // ignore: cast_nullable_to_non_nullable
              as List<Comment>?,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      contentHtml: contentHtml == freezed
          ? _value.contentHtml
          : contentHtml // ignore: cast_nullable_to_non_nullable
              as String?,
      excerpt: excerpt == freezed
          ? _value.excerpt
          : excerpt // ignore: cast_nullable_to_non_nullable
              as String?,
      excerptHtml: excerptHtml == freezed
          ? _value.excerptHtml
          : excerptHtml // ignore: cast_nullable_to_non_nullable
              as String?,
      handle: handle == freezed
          ? _value.handle
          : handle // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as ShopifyImage?,
      publishedAt: publishedAt == freezed
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: tags == freezed
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $AuthorV2CopyWith<$Res>? get author {
    if (_value.author == null) {
      return null;
    }

    return $AuthorV2CopyWith<$Res>(_value.author!, (value) {
      return _then(_value.copyWith(author: value));
    });
  }

  @override
  $ShopifyImageCopyWith<$Res>? get image {
    if (_value.image == null) {
      return null;
    }

    return $ShopifyImageCopyWith<$Res>(_value.image!, (value) {
      return _then(_value.copyWith(image: value));
    });
  }
}

/// @nodoc
abstract class _$ArticleCopyWith<$Res> implements $ArticleCopyWith<$Res> {
  factory _$ArticleCopyWith(_Article value, $Res Function(_Article) then) =
      __$ArticleCopyWithImpl<$Res>;
  @override
  $Res call(
      {AuthorV2? author,
      List<Comment>? commentList,
      String? content,
      String? contentHtml,
      String? excerpt,
      String? excerptHtml,
      String? handle,
      String? id,
      ShopifyImage? image,
      String? publishedAt,
      List<String>? tags,
      String? title,
      String? url});

  @override
  $AuthorV2CopyWith<$Res>? get author;
  @override
  $ShopifyImageCopyWith<$Res>? get image;
}

/// @nodoc
class __$ArticleCopyWithImpl<$Res> extends _$ArticleCopyWithImpl<$Res>
    implements _$ArticleCopyWith<$Res> {
  __$ArticleCopyWithImpl(_Article _value, $Res Function(_Article) _then)
      : super(_value, (v) => _then(v as _Article));

  @override
  _Article get _value => super._value as _Article;

  @override
  $Res call({
    Object? author = freezed,
    Object? commentList = freezed,
    Object? content = freezed,
    Object? contentHtml = freezed,
    Object? excerpt = freezed,
    Object? excerptHtml = freezed,
    Object? handle = freezed,
    Object? id = freezed,
    Object? image = freezed,
    Object? publishedAt = freezed,
    Object? tags = freezed,
    Object? title = freezed,
    Object? url = freezed,
  }) {
    return _then(_Article(
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as AuthorV2?,
      commentList: commentList == freezed
          ? _value.commentList
          : commentList // ignore: cast_nullable_to_non_nullable
              as List<Comment>?,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      contentHtml: contentHtml == freezed
          ? _value.contentHtml
          : contentHtml // ignore: cast_nullable_to_non_nullable
              as String?,
      excerpt: excerpt == freezed
          ? _value.excerpt
          : excerpt // ignore: cast_nullable_to_non_nullable
              as String?,
      excerptHtml: excerptHtml == freezed
          ? _value.excerptHtml
          : excerptHtml // ignore: cast_nullable_to_non_nullable
              as String?,
      handle: handle == freezed
          ? _value.handle
          : handle // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as ShopifyImage?,
      publishedAt: publishedAt == freezed
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: tags == freezed
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Article extends _Article {
  _$_Article(
      {this.author,
      this.commentList,
      this.content,
      this.contentHtml,
      this.excerpt,
      this.excerptHtml,
      this.handle,
      this.id,
      this.image,
      this.publishedAt,
      this.tags,
      this.title,
      this.url})
      : super._();

  factory _$_Article.fromJson(Map<String, dynamic> json) =>
      _$$_ArticleFromJson(json);

  @override
  final AuthorV2? author;
  @override
  final List<Comment>? commentList;
  @override
  final String? content;
  @override
  final String? contentHtml;
  @override
  final String? excerpt;
  @override
  final String? excerptHtml;
  @override
  final String? handle;
  @override
  final String? id;
  @override
  final ShopifyImage? image;
  @override
  final String? publishedAt;
  @override
  final List<String>? tags;
  @override
  final String? title;
  @override
  final String? url;

  @override
  String toString() {
    return 'Article(author: $author, commentList: $commentList, content: $content, contentHtml: $contentHtml, excerpt: $excerpt, excerptHtml: $excerptHtml, handle: $handle, id: $id, image: $image, publishedAt: $publishedAt, tags: $tags, title: $title, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Article &&
            (identical(other.author, author) ||
                const DeepCollectionEquality().equals(other.author, author)) &&
            (identical(other.commentList, commentList) ||
                const DeepCollectionEquality()
                    .equals(other.commentList, commentList)) &&
            (identical(other.content, content) ||
                const DeepCollectionEquality()
                    .equals(other.content, content)) &&
            (identical(other.contentHtml, contentHtml) ||
                const DeepCollectionEquality()
                    .equals(other.contentHtml, contentHtml)) &&
            (identical(other.excerpt, excerpt) ||
                const DeepCollectionEquality()
                    .equals(other.excerpt, excerpt)) &&
            (identical(other.excerptHtml, excerptHtml) ||
                const DeepCollectionEquality()
                    .equals(other.excerptHtml, excerptHtml)) &&
            (identical(other.handle, handle) ||
                const DeepCollectionEquality().equals(other.handle, handle)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.publishedAt, publishedAt) ||
                const DeepCollectionEquality()
                    .equals(other.publishedAt, publishedAt)) &&
            (identical(other.tags, tags) ||
                const DeepCollectionEquality().equals(other.tags, tags)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(author) ^
      const DeepCollectionEquality().hash(commentList) ^
      const DeepCollectionEquality().hash(content) ^
      const DeepCollectionEquality().hash(contentHtml) ^
      const DeepCollectionEquality().hash(excerpt) ^
      const DeepCollectionEquality().hash(excerptHtml) ^
      const DeepCollectionEquality().hash(handle) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(publishedAt) ^
      const DeepCollectionEquality().hash(tags) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(url);

  @JsonKey(ignore: true)
  @override
  _$ArticleCopyWith<_Article> get copyWith =>
      __$ArticleCopyWithImpl<_Article>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ArticleToJson(this);
  }
}

abstract class _Article extends Article {
  factory _Article(
      {AuthorV2? author,
      List<Comment>? commentList,
      String? content,
      String? contentHtml,
      String? excerpt,
      String? excerptHtml,
      String? handle,
      String? id,
      ShopifyImage? image,
      String? publishedAt,
      List<String>? tags,
      String? title,
      String? url}) = _$_Article;
  _Article._() : super._();

  factory _Article.fromJson(Map<String, dynamic> json) = _$_Article.fromJson;

  @override
  AuthorV2? get author => throw _privateConstructorUsedError;
  @override
  List<Comment>? get commentList => throw _privateConstructorUsedError;
  @override
  String? get content => throw _privateConstructorUsedError;
  @override
  String? get contentHtml => throw _privateConstructorUsedError;
  @override
  String? get excerpt => throw _privateConstructorUsedError;
  @override
  String? get excerptHtml => throw _privateConstructorUsedError;
  @override
  String? get handle => throw _privateConstructorUsedError;
  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  ShopifyImage? get image => throw _privateConstructorUsedError;
  @override
  String? get publishedAt => throw _privateConstructorUsedError;
  @override
  List<String>? get tags => throw _privateConstructorUsedError;
  @override
  String? get title => throw _privateConstructorUsedError;
  @override
  String? get url => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ArticleCopyWith<_Article> get copyWith =>
      throw _privateConstructorUsedError;
}
