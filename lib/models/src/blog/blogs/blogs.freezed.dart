// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'blogs.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Blogs _$BlogsFromJson(Map<String, dynamic> json) {
  return _Blogs.fromJson(json);
}

/// @nodoc
mixin _$Blogs {
  List<Blog> get blogList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BlogsCopyWith<Blogs> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlogsCopyWith<$Res> {
  factory $BlogsCopyWith(Blogs value, $Res Function(Blogs) then) =
      _$BlogsCopyWithImpl<$Res>;
  $Res call({List<Blog> blogList});
}

/// @nodoc
class _$BlogsCopyWithImpl<$Res> implements $BlogsCopyWith<$Res> {
  _$BlogsCopyWithImpl(this._value, this._then);

  final Blogs _value;
  // ignore: unused_field
  final $Res Function(Blogs) _then;

  @override
  $Res call({
    Object? blogList = freezed,
  }) {
    return _then(_value.copyWith(
      blogList: blogList == freezed
          ? _value.blogList
          : blogList // ignore: cast_nullable_to_non_nullable
              as List<Blog>,
    ));
  }
}

/// @nodoc
abstract class _$$_BlogsCopyWith<$Res> implements $BlogsCopyWith<$Res> {
  factory _$$_BlogsCopyWith(_$_Blogs value, $Res Function(_$_Blogs) then) =
      __$$_BlogsCopyWithImpl<$Res>;
  @override
  $Res call({List<Blog> blogList});
}

/// @nodoc
class __$$_BlogsCopyWithImpl<$Res> extends _$BlogsCopyWithImpl<$Res>
    implements _$$_BlogsCopyWith<$Res> {
  __$$_BlogsCopyWithImpl(_$_Blogs _value, $Res Function(_$_Blogs) _then)
      : super(_value, (v) => _then(v as _$_Blogs));

  @override
  _$_Blogs get _value => super._value as _$_Blogs;

  @override
  $Res call({
    Object? blogList = freezed,
  }) {
    return _then(_$_Blogs(
      blogList: blogList == freezed
          ? _value._blogList
          : blogList // ignore: cast_nullable_to_non_nullable
              as List<Blog>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Blogs implements _Blogs {
  _$_Blogs({required final List<Blog> blogList}) : _blogList = blogList;

  factory _$_Blogs.fromJson(Map<String, dynamic> json) =>
      _$$_BlogsFromJson(json);

  final List<Blog> _blogList;
  @override
  List<Blog> get blogList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_blogList);
  }

  @override
  String toString() {
    return 'Blogs(blogList: $blogList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Blogs &&
            const DeepCollectionEquality().equals(other._blogList, _blogList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_blogList));

  @JsonKey(ignore: true)
  @override
  _$$_BlogsCopyWith<_$_Blogs> get copyWith =>
      __$$_BlogsCopyWithImpl<_$_Blogs>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BlogsToJson(this);
  }
}

abstract class _Blogs implements Blogs {
  factory _Blogs({required final List<Blog> blogList}) = _$_Blogs;

  factory _Blogs.fromJson(Map<String, dynamic> json) = _$_Blogs.fromJson;

  @override
  List<Blog> get blogList => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_BlogsCopyWith<_$_Blogs> get copyWith =>
      throw _privateConstructorUsedError;
}
