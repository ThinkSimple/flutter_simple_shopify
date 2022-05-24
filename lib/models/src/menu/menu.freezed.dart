// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'menu.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Menu _$MenuFromJson(Map<String, dynamic> json) {
  return _Menu.fromJson(json);
}

/// @nodoc
mixin _$Menu {
  String? get handle => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  List<MenuItem>? get items => throw _privateConstructorUsedError;
  int? get itemsCount => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MenuCopyWith<Menu> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MenuCopyWith<$Res> {
  factory $MenuCopyWith(Menu value, $Res Function(Menu) then) =
      _$MenuCopyWithImpl<$Res>;
  $Res call(
      {String? handle,
      String? id,
      List<MenuItem>? items,
      int? itemsCount,
      String? title});
}

/// @nodoc
class _$MenuCopyWithImpl<$Res> implements $MenuCopyWith<$Res> {
  _$MenuCopyWithImpl(this._value, this._then);

  final Menu _value;
  // ignore: unused_field
  final $Res Function(Menu) _then;

  @override
  $Res call({
    Object? handle = freezed,
    Object? id = freezed,
    Object? items = freezed,
    Object? itemsCount = freezed,
    Object? title = freezed,
  }) {
    return _then(_value.copyWith(
      handle: handle == freezed
          ? _value.handle
          : handle // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<MenuItem>?,
      itemsCount: itemsCount == freezed
          ? _value.itemsCount
          : itemsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_MenuCopyWith<$Res> implements $MenuCopyWith<$Res> {
  factory _$$_MenuCopyWith(_$_Menu value, $Res Function(_$_Menu) then) =
      __$$_MenuCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? handle,
      String? id,
      List<MenuItem>? items,
      int? itemsCount,
      String? title});
}

/// @nodoc
class __$$_MenuCopyWithImpl<$Res> extends _$MenuCopyWithImpl<$Res>
    implements _$$_MenuCopyWith<$Res> {
  __$$_MenuCopyWithImpl(_$_Menu _value, $Res Function(_$_Menu) _then)
      : super(_value, (v) => _then(v as _$_Menu));

  @override
  _$_Menu get _value => super._value as _$_Menu;

  @override
  $Res call({
    Object? handle = freezed,
    Object? id = freezed,
    Object? items = freezed,
    Object? itemsCount = freezed,
    Object? title = freezed,
  }) {
    return _then(_$_Menu(
      handle: handle == freezed
          ? _value.handle
          : handle // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      items: items == freezed
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<MenuItem>?,
      itemsCount: itemsCount == freezed
          ? _value.itemsCount
          : itemsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Menu extends _Menu {
  _$_Menu(
      {this.handle,
      this.id,
      final List<MenuItem>? items,
      this.itemsCount,
      this.title})
      : _items = items,
        super._();

  factory _$_Menu.fromJson(Map<String, dynamic> json) => _$$_MenuFromJson(json);

  @override
  final String? handle;
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
  final int? itemsCount;
  @override
  final String? title;

  @override
  String toString() {
    return 'Menu(handle: $handle, id: $id, items: $items, itemsCount: $itemsCount, title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Menu &&
            const DeepCollectionEquality().equals(other.handle, handle) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            const DeepCollectionEquality()
                .equals(other.itemsCount, itemsCount) &&
            const DeepCollectionEquality().equals(other.title, title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(handle),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(_items),
      const DeepCollectionEquality().hash(itemsCount),
      const DeepCollectionEquality().hash(title));

  @JsonKey(ignore: true)
  @override
  _$$_MenuCopyWith<_$_Menu> get copyWith =>
      __$$_MenuCopyWithImpl<_$_Menu>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MenuToJson(this);
  }
}

abstract class _Menu extends Menu {
  factory _Menu(
      {final String? handle,
      final String? id,
      final List<MenuItem>? items,
      final int? itemsCount,
      final String? title}) = _$_Menu;
  _Menu._() : super._();

  factory _Menu.fromJson(Map<String, dynamic> json) = _$_Menu.fromJson;

  @override
  String? get handle => throw _privateConstructorUsedError;
  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  List<MenuItem>? get items => throw _privateConstructorUsedError;
  @override
  int? get itemsCount => throw _privateConstructorUsedError;
  @override
  String? get title => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_MenuCopyWith<_$_Menu> get copyWith => throw _privateConstructorUsedError;
}
