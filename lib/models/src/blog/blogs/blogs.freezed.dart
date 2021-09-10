// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'blogs.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Blogs _$BlogsFromJson(Map<String, dynamic> json) {
  return _Blogs.fromJson(json);
}

/// @nodoc
class _$BlogsTearOff {
  const _$BlogsTearOff();

  _Blogs call({required List<Blog> blogList}) {
    return _Blogs(
      blogList: blogList,
    );
  }

  Blogs fromJson(Map<String, Object> json) {
    return Blogs.fromJson(json);
  }
}

/// @nodoc
const $Blogs = _$BlogsTearOff();

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
abstract class _$BlogsCopyWith<$Res> implements $BlogsCopyWith<$Res> {
  factory _$BlogsCopyWith(_Blogs value, $Res Function(_Blogs) then) =
      __$BlogsCopyWithImpl<$Res>;
  @override
  $Res call({List<Blog> blogList});
}

/// @nodoc
class __$BlogsCopyWithImpl<$Res> extends _$BlogsCopyWithImpl<$Res>
    implements _$BlogsCopyWith<$Res> {
  __$BlogsCopyWithImpl(_Blogs _value, $Res Function(_Blogs) _then)
      : super(_value, (v) => _then(v as _Blogs));

  @override
  _Blogs get _value => super._value as _Blogs;

  @override
  $Res call({
    Object? blogList = freezed,
  }) {
    return _then(_Blogs(
      blogList: blogList == freezed
          ? _value.blogList
          : blogList // ignore: cast_nullable_to_non_nullable
              as List<Blog>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Blogs implements _Blogs {
  _$_Blogs({required this.blogList});

  factory _$_Blogs.fromJson(Map<String, dynamic> json) =>
      _$$_BlogsFromJson(json);

  @override
  final List<Blog> blogList;

  @override
  String toString() {
    return 'Blogs(blogList: $blogList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Blogs &&
            (identical(other.blogList, blogList) ||
                const DeepCollectionEquality()
                    .equals(other.blogList, blogList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(blogList);

  @JsonKey(ignore: true)
  @override
  _$BlogsCopyWith<_Blogs> get copyWith =>
      __$BlogsCopyWithImpl<_Blogs>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BlogsToJson(this);
  }
}

abstract class _Blogs implements Blogs {
  factory _Blogs({required List<Blog> blogList}) = _$_Blogs;

  factory _Blogs.fromJson(Map<String, dynamic> json) = _$_Blogs.fromJson;

  @override
  List<Blog> get blogList => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BlogsCopyWith<_Blogs> get copyWith => throw _privateConstructorUsedError;
}
