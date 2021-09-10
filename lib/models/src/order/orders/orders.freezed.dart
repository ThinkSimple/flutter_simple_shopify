// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'orders.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Orders _$OrdersFromJson(Map<String, dynamic> json) {
  return _Orders.fromJson(json);
}

/// @nodoc
class _$OrdersTearOff {
  const _$OrdersTearOff();

  _Orders call({required List<Order> orderList, required bool hasNextPage}) {
    return _Orders(
      orderList: orderList,
      hasNextPage: hasNextPage,
    );
  }

  Orders fromJson(Map<String, Object> json) {
    return Orders.fromJson(json);
  }
}

/// @nodoc
const $Orders = _$OrdersTearOff();

/// @nodoc
mixin _$Orders {
  List<Order> get orderList => throw _privateConstructorUsedError;
  bool get hasNextPage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrdersCopyWith<Orders> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrdersCopyWith<$Res> {
  factory $OrdersCopyWith(Orders value, $Res Function(Orders) then) =
      _$OrdersCopyWithImpl<$Res>;
  $Res call({List<Order> orderList, bool hasNextPage});
}

/// @nodoc
class _$OrdersCopyWithImpl<$Res> implements $OrdersCopyWith<$Res> {
  _$OrdersCopyWithImpl(this._value, this._then);

  final Orders _value;
  // ignore: unused_field
  final $Res Function(Orders) _then;

  @override
  $Res call({
    Object? orderList = freezed,
    Object? hasNextPage = freezed,
  }) {
    return _then(_value.copyWith(
      orderList: orderList == freezed
          ? _value.orderList
          : orderList // ignore: cast_nullable_to_non_nullable
              as List<Order>,
      hasNextPage: hasNextPage == freezed
          ? _value.hasNextPage
          : hasNextPage // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$OrdersCopyWith<$Res> implements $OrdersCopyWith<$Res> {
  factory _$OrdersCopyWith(_Orders value, $Res Function(_Orders) then) =
      __$OrdersCopyWithImpl<$Res>;
  @override
  $Res call({List<Order> orderList, bool hasNextPage});
}

/// @nodoc
class __$OrdersCopyWithImpl<$Res> extends _$OrdersCopyWithImpl<$Res>
    implements _$OrdersCopyWith<$Res> {
  __$OrdersCopyWithImpl(_Orders _value, $Res Function(_Orders) _then)
      : super(_value, (v) => _then(v as _Orders));

  @override
  _Orders get _value => super._value as _Orders;

  @override
  $Res call({
    Object? orderList = freezed,
    Object? hasNextPage = freezed,
  }) {
    return _then(_Orders(
      orderList: orderList == freezed
          ? _value.orderList
          : orderList // ignore: cast_nullable_to_non_nullable
              as List<Order>,
      hasNextPage: hasNextPage == freezed
          ? _value.hasNextPage
          : hasNextPage // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Orders implements _Orders {
  _$_Orders({required this.orderList, required this.hasNextPage});

  factory _$_Orders.fromJson(Map<String, dynamic> json) =>
      _$$_OrdersFromJson(json);

  @override
  final List<Order> orderList;
  @override
  final bool hasNextPage;

  @override
  String toString() {
    return 'Orders(orderList: $orderList, hasNextPage: $hasNextPage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Orders &&
            (identical(other.orderList, orderList) ||
                const DeepCollectionEquality()
                    .equals(other.orderList, orderList)) &&
            (identical(other.hasNextPage, hasNextPage) ||
                const DeepCollectionEquality()
                    .equals(other.hasNextPage, hasNextPage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(orderList) ^
      const DeepCollectionEquality().hash(hasNextPage);

  @JsonKey(ignore: true)
  @override
  _$OrdersCopyWith<_Orders> get copyWith =>
      __$OrdersCopyWithImpl<_Orders>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrdersToJson(this);
  }
}

abstract class _Orders implements Orders {
  factory _Orders({required List<Order> orderList, required bool hasNextPage}) =
      _$_Orders;

  factory _Orders.fromJson(Map<String, dynamic> json) = _$_Orders.fromJson;

  @override
  List<Order> get orderList => throw _privateConstructorUsedError;
  @override
  bool get hasNextPage => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$OrdersCopyWith<_Orders> get copyWith => throw _privateConstructorUsedError;
}
