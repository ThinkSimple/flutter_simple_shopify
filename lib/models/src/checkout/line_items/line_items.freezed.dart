// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'line_items.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LineItems _$LineItemsFromJson(Map<String, dynamic> json) {
  return _LineItems.fromJson(json);
}

/// @nodoc
class _$LineItemsTearOff {
  const _$LineItemsTearOff();

  _LineItems call({required List<LineItem> lineItemList}) {
    return _LineItems(
      lineItemList: lineItemList,
    );
  }

  LineItems fromJson(Map<String, Object> json) {
    return LineItems.fromJson(json);
  }
}

/// @nodoc
const $LineItems = _$LineItemsTearOff();

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
abstract class _$LineItemsCopyWith<$Res> implements $LineItemsCopyWith<$Res> {
  factory _$LineItemsCopyWith(
          _LineItems value, $Res Function(_LineItems) then) =
      __$LineItemsCopyWithImpl<$Res>;
  @override
  $Res call({List<LineItem> lineItemList});
}

/// @nodoc
class __$LineItemsCopyWithImpl<$Res> extends _$LineItemsCopyWithImpl<$Res>
    implements _$LineItemsCopyWith<$Res> {
  __$LineItemsCopyWithImpl(_LineItems _value, $Res Function(_LineItems) _then)
      : super(_value, (v) => _then(v as _LineItems));

  @override
  _LineItems get _value => super._value as _LineItems;

  @override
  $Res call({
    Object? lineItemList = freezed,
  }) {
    return _then(_LineItems(
      lineItemList: lineItemList == freezed
          ? _value.lineItemList
          : lineItemList // ignore: cast_nullable_to_non_nullable
              as List<LineItem>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LineItems implements _LineItems {
  _$_LineItems({required this.lineItemList});

  factory _$_LineItems.fromJson(Map<String, dynamic> json) =>
      _$$_LineItemsFromJson(json);

  @override
  final List<LineItem> lineItemList;

  @override
  String toString() {
    return 'LineItems(lineItemList: $lineItemList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LineItems &&
            (identical(other.lineItemList, lineItemList) ||
                const DeepCollectionEquality()
                    .equals(other.lineItemList, lineItemList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(lineItemList);

  @JsonKey(ignore: true)
  @override
  _$LineItemsCopyWith<_LineItems> get copyWith =>
      __$LineItemsCopyWithImpl<_LineItems>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LineItemsToJson(this);
  }
}

abstract class _LineItems implements LineItems {
  factory _LineItems({required List<LineItem> lineItemList}) = _$_LineItems;

  factory _LineItems.fromJson(Map<String, dynamic> json) =
      _$_LineItems.fromJson;

  @override
  List<LineItem> get lineItemList => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LineItemsCopyWith<_LineItems> get copyWith =>
      throw _privateConstructorUsedError;
}
