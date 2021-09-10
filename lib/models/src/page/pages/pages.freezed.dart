// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pages.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Pages _$PagesFromJson(Map<String, dynamic> json) {
  return _Pages.fromJson(json);
}

/// @nodoc
class _$PagesTearOff {
  const _$PagesTearOff();

  _Pages call({required List<Page> pageList}) {
    return _Pages(
      pageList: pageList,
    );
  }

  Pages fromJson(Map<String, Object> json) {
    return Pages.fromJson(json);
  }
}

/// @nodoc
const $Pages = _$PagesTearOff();

/// @nodoc
mixin _$Pages {
  List<Page> get pageList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PagesCopyWith<Pages> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PagesCopyWith<$Res> {
  factory $PagesCopyWith(Pages value, $Res Function(Pages) then) =
      _$PagesCopyWithImpl<$Res>;
  $Res call({List<Page> pageList});
}

/// @nodoc
class _$PagesCopyWithImpl<$Res> implements $PagesCopyWith<$Res> {
  _$PagesCopyWithImpl(this._value, this._then);

  final Pages _value;
  // ignore: unused_field
  final $Res Function(Pages) _then;

  @override
  $Res call({
    Object? pageList = freezed,
  }) {
    return _then(_value.copyWith(
      pageList: pageList == freezed
          ? _value.pageList
          : pageList // ignore: cast_nullable_to_non_nullable
              as List<Page>,
    ));
  }
}

/// @nodoc
abstract class _$PagesCopyWith<$Res> implements $PagesCopyWith<$Res> {
  factory _$PagesCopyWith(_Pages value, $Res Function(_Pages) then) =
      __$PagesCopyWithImpl<$Res>;
  @override
  $Res call({List<Page> pageList});
}

/// @nodoc
class __$PagesCopyWithImpl<$Res> extends _$PagesCopyWithImpl<$Res>
    implements _$PagesCopyWith<$Res> {
  __$PagesCopyWithImpl(_Pages _value, $Res Function(_Pages) _then)
      : super(_value, (v) => _then(v as _Pages));

  @override
  _Pages get _value => super._value as _Pages;

  @override
  $Res call({
    Object? pageList = freezed,
  }) {
    return _then(_Pages(
      pageList: pageList == freezed
          ? _value.pageList
          : pageList // ignore: cast_nullable_to_non_nullable
              as List<Page>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Pages implements _Pages {
  _$_Pages({required this.pageList});

  factory _$_Pages.fromJson(Map<String, dynamic> json) =>
      _$$_PagesFromJson(json);

  @override
  final List<Page> pageList;

  @override
  String toString() {
    return 'Pages(pageList: $pageList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Pages &&
            (identical(other.pageList, pageList) ||
                const DeepCollectionEquality()
                    .equals(other.pageList, pageList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(pageList);

  @JsonKey(ignore: true)
  @override
  _$PagesCopyWith<_Pages> get copyWith =>
      __$PagesCopyWithImpl<_Pages>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PagesToJson(this);
  }
}

abstract class _Pages implements Pages {
  factory _Pages({required List<Page> pageList}) = _$_Pages;

  factory _Pages.fromJson(Map<String, dynamic> json) = _$_Pages.fromJson;

  @override
  List<Page> get pageList => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PagesCopyWith<_Pages> get copyWith => throw _privateConstructorUsedError;
}
