// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'line_items_order.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LineItemsOrder _$LineItemsOrderFromJson(Map<String, dynamic> json) {
  return _LineItemsOrder.fromJson(json);
}

/// @nodoc
class _$LineItemsOrderTearOff {
  const _$LineItemsOrderTearOff();

  _LineItemsOrder call({required List<LineItemOrder> lineItemOrderList}) {
    return _LineItemsOrder(
      lineItemOrderList: lineItemOrderList,
    );
  }

  LineItemsOrder fromJson(Map<String, Object> json) {
    return LineItemsOrder.fromJson(json);
  }
}

/// @nodoc
const $LineItemsOrder = _$LineItemsOrderTearOff();

/// @nodoc
mixin _$LineItemsOrder {
  List<LineItemOrder> get lineItemOrderList =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LineItemsOrderCopyWith<LineItemsOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LineItemsOrderCopyWith<$Res> {
  factory $LineItemsOrderCopyWith(
          LineItemsOrder value, $Res Function(LineItemsOrder) then) =
      _$LineItemsOrderCopyWithImpl<$Res>;
  $Res call({List<LineItemOrder> lineItemOrderList});
}

/// @nodoc
class _$LineItemsOrderCopyWithImpl<$Res>
    implements $LineItemsOrderCopyWith<$Res> {
  _$LineItemsOrderCopyWithImpl(this._value, this._then);

  final LineItemsOrder _value;
  // ignore: unused_field
  final $Res Function(LineItemsOrder) _then;

  @override
  $Res call({
    Object? lineItemOrderList = freezed,
  }) {
    return _then(_value.copyWith(
      lineItemOrderList: lineItemOrderList == freezed
          ? _value.lineItemOrderList
          : lineItemOrderList // ignore: cast_nullable_to_non_nullable
              as List<LineItemOrder>,
    ));
  }
}

/// @nodoc
abstract class _$LineItemsOrderCopyWith<$Res>
    implements $LineItemsOrderCopyWith<$Res> {
  factory _$LineItemsOrderCopyWith(
          _LineItemsOrder value, $Res Function(_LineItemsOrder) then) =
      __$LineItemsOrderCopyWithImpl<$Res>;
  @override
  $Res call({List<LineItemOrder> lineItemOrderList});
}

/// @nodoc
class __$LineItemsOrderCopyWithImpl<$Res>
    extends _$LineItemsOrderCopyWithImpl<$Res>
    implements _$LineItemsOrderCopyWith<$Res> {
  __$LineItemsOrderCopyWithImpl(
      _LineItemsOrder _value, $Res Function(_LineItemsOrder) _then)
      : super(_value, (v) => _then(v as _LineItemsOrder));

  @override
  _LineItemsOrder get _value => super._value as _LineItemsOrder;

  @override
  $Res call({
    Object? lineItemOrderList = freezed,
  }) {
    return _then(_LineItemsOrder(
      lineItemOrderList: lineItemOrderList == freezed
          ? _value.lineItemOrderList
          : lineItemOrderList // ignore: cast_nullable_to_non_nullable
              as List<LineItemOrder>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LineItemsOrder implements _LineItemsOrder {
  _$_LineItemsOrder({required this.lineItemOrderList});

  factory _$_LineItemsOrder.fromJson(Map<String, dynamic> json) =>
      _$$_LineItemsOrderFromJson(json);

  @override
  final List<LineItemOrder> lineItemOrderList;

  @override
  String toString() {
    return 'LineItemsOrder(lineItemOrderList: $lineItemOrderList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LineItemsOrder &&
            (identical(other.lineItemOrderList, lineItemOrderList) ||
                const DeepCollectionEquality()
                    .equals(other.lineItemOrderList, lineItemOrderList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(lineItemOrderList);

  @JsonKey(ignore: true)
  @override
  _$LineItemsOrderCopyWith<_LineItemsOrder> get copyWith =>
      __$LineItemsOrderCopyWithImpl<_LineItemsOrder>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LineItemsOrderToJson(this);
  }
}

abstract class _LineItemsOrder implements LineItemsOrder {
  factory _LineItemsOrder({required List<LineItemOrder> lineItemOrderList}) =
      _$_LineItemsOrder;

  factory _LineItemsOrder.fromJson(Map<String, dynamic> json) =
      _$_LineItemsOrder.fromJson;

  @override
  List<LineItemOrder> get lineItemOrderList =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LineItemsOrderCopyWith<_LineItemsOrder> get copyWith =>
      throw _privateConstructorUsedError;
}
