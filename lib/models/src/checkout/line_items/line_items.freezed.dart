// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'line_items.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LineItems _$LineItemsFromJson(Map<String, dynamic> json) {
  return _LineItems.fromJson(json);
}

/// @nodoc
mixin _$LineItems {
  List<LineItem> get lineItemList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LineItemsCopyWith<LineItems> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LineItemsCopyWith<$Res> {
  factory $LineItemsCopyWith(LineItems value, $Res Function(LineItems) then) =
      _$LineItemsCopyWithImpl<$Res>;
  $Res call({List<LineItem> lineItemList});
}

/// @nodoc
class _$LineItemsCopyWithImpl<$Res> implements $LineItemsCopyWith<$Res> {
  _$LineItemsCopyWithImpl(this._value, this._then);

  final LineItems _value;
  // ignore: unused_field
  final $Res Function(LineItems) _then;

  @override
  $Res call({
    Object? lineItemList = freezed,
  }) {
    return _then(_value.copyWith(
      lineItemList: lineItemList == freezed
          ? _value.lineItemList
          : lineItemList // ignore: cast_nullable_to_non_nullable
              as List<LineItem>,
    ));
  }
}

/// @nodoc
abstract class _$$_LineItemsCopyWith<$Res> implements $LineItemsCopyWith<$Res> {
  factory _$$_LineItemsCopyWith(
          _$_LineItems value, $Res Function(_$_LineItems) then) =
      __$$_LineItemsCopyWithImpl<$Res>;
  @override
  $Res call({List<LineItem> lineItemList});
}

/// @nodoc
class __$$_LineItemsCopyWithImpl<$Res> extends _$LineItemsCopyWithImpl<$Res>
    implements _$$_LineItemsCopyWith<$Res> {
  __$$_LineItemsCopyWithImpl(
      _$_LineItems _value, $Res Function(_$_LineItems) _then)
      : super(_value, (v) => _then(v as _$_LineItems));

  @override
  _$_LineItems get _value => super._value as _$_LineItems;

  @override
  $Res call({
    Object? lineItemList = freezed,
  }) {
    return _then(_$_LineItems(
      lineItemList: lineItemList == freezed
          ? _value._lineItemList
          : lineItemList // ignore: cast_nullable_to_non_nullable
              as List<LineItem>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LineItems implements _LineItems {
  _$_LineItems({required final List<LineItem> lineItemList})
      : _lineItemList = lineItemList;

  factory _$_LineItems.fromJson(Map<String, dynamic> json) =>
      _$$_LineItemsFromJson(json);

  final List<LineItem> _lineItemList;
  @override
  List<LineItem> get lineItemList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_lineItemList);
  }

  @override
  String toString() {
    return 'LineItems(lineItemList: $lineItemList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LineItems &&
            const DeepCollectionEquality()
                .equals(other._lineItemList, _lineItemList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_lineItemList));

  @JsonKey(ignore: true)
  @override
  _$$_LineItemsCopyWith<_$_LineItems> get copyWith =>
      __$$_LineItemsCopyWithImpl<_$_LineItems>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LineItemsToJson(this);
  }
}

abstract class _LineItems implements LineItems {
  factory _LineItems({required final List<LineItem> lineItemList}) =
      _$_LineItems;

  factory _LineItems.fromJson(Map<String, dynamic> json) =
      _$_LineItems.fromJson;

  @override
  List<LineItem> get lineItemList => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_LineItemsCopyWith<_$_LineItems> get copyWith =>
      throw _privateConstructorUsedError;
}
