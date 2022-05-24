// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'menu_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MenuItem _$MenuItemFromJson(Map<String, dynamic> json) {
  return _MenuItem.fromJson(json);
}

/// @nodoc
mixin _$MenuItem {
  String? get id => throw _privateConstructorUsedError;
  List<MenuItem>? get items => throw _privateConstructorUsedError;
  String? get resourceId => throw _privateConstructorUsedError;
  List<String>? get tags => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MenuItemCopyWith<MenuItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MenuItemCopyWith<$Res> {
  factory $MenuItemCopyWith(MenuItem value, $Res Function(MenuItem) then) =
      _$MenuItemCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      List<MenuItem>? items,
      String? resourceId,
      List<String>? tags,
      String? title,
      String? type,
      String? url});
}

/// @nodoc
class _$MenuItemCopyWithImpl<$Res> implements $MenuItemCopyWith<$Res> {
  _$MenuItemCopyWithImpl(this._value, this._then);

  final MenuItem _value;
  // ignore: unused_field
  final $Res Function(MenuItem) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? items = freezed,
    Object? resourceId = freezed,
    Object? tags = freezed,
    Object? title = freezed,
    Object? type = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<MenuItem>?,
      resourceId: resourceId == freezed
          ? _value.resourceId
          : resourceId // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: tags == freezed
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_MenuItemCopyWith<$Res> implements $MenuItemCopyWith<$Res> {
  factory _$$_MenuItemCopyWith(
          _$_MenuItem value, $Res Function(_$_MenuItem) then) =
      __$$_MenuItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      List<MenuItem>? items,
      String? resourceId,
      List<String>? tags,
      String? title,
      String? type,
      String? url});
}

/// @nodoc
class __$$_MenuItemCopyWithImpl<$Res> extends _$MenuItemCopyWithImpl<$Res>
    implements _$$_MenuItemCopyWith<$Res> {
  __$$_MenuItemCopyWithImpl(
      _$_MenuItem _value, $Res Function(_$_MenuItem) _then)
      : super(_value, (v) => _then(v as _$_MenuItem));

  @override
  _$_MenuItem get _value => super._value as _$_MenuItem;

  @override
  $Res call({
    Object? id = freezed,
    Object? items = freezed,
    Object? resourceId = freezed,
    Object? tags = freezed,
    Object? title = freezed,
    Object? type = freezed,
    Object? url = freezed,
  }) {
    return _then(_$_MenuItem(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      items: items == freezed
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<MenuItem>?,
      resourceId: resourceId == freezed
          ? _value.resourceId
          : resourceId // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: tags == freezed
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
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
class _$_MenuItem extends _MenuItem {
  _$_MenuItem(
      {this.id,
      final List<MenuItem>? items,
      this.resourceId,
      final List<String>? tags,
      this.title,
      this.type,
      this.url})
      : _items = items,
        _tags = tags,
        super._();

  factory _$_MenuItem.fromJson(Map<String, dynamic> json) =>
      _$$_MenuItemFromJson(json);

  @override
  final String? id;
  final List<MenuItem>? _items;
  @override
  List<MenuItem>? get items {
    final value = _items;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? resourceId;
  final List<String>? _tags;
  @override
  List<String>? get tags {
    final value = _tags;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? title;
  @override
  final String? type;
  @override
  final String? url;

  @override
  String toString() {
    return 'MenuItem(id: $id, items: $items, resourceId: $resourceId, tags: $tags, title: $title, type: $type, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MenuItem &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            const DeepCollectionEquality()
                .equals(other.resourceId, resourceId) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.url, url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(_items),
      const DeepCollectionEquality().hash(resourceId),
      const DeepCollectionEquality().hash(_tags),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(url));

  @JsonKey(ignore: true)
  @override
  _$$_MenuItemCopyWith<_$_MenuItem> get copyWith =>
      __$$_MenuItemCopyWithImpl<_$_MenuItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MenuItemToJson(this);
  }
}

abstract class _MenuItem extends MenuItem {
  factory _MenuItem(
      {final String? id,
      final List<MenuItem>? items,
      final String? resourceId,
      final List<String>? tags,
      final String? title,
      final String? type,
      final String? url}) = _$_MenuItem;
  _MenuItem._() : super._();

  factory _MenuItem.fromJson(Map<String, dynamic> json) = _$_MenuItem.fromJson;

  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  List<MenuItem>? get items => throw _privateConstructorUsedError;
  @override
  String? get resourceId => throw _privateConstructorUsedError;
  @override
  List<String>? get tags => throw _privateConstructorUsedError;
  @override
  String? get title => throw _privateConstructorUsedError;
  @override
  String? get type => throw _privateConstructorUsedError;
  @override
  String? get url => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_MenuItemCopyWith<_$_MenuItem> get copyWith =>
      throw _privateConstructorUsedError;
}
