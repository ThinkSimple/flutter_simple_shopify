import 'package:flutter_simple_shopify/models/src/menu/menu_item/menu_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'menu.freezed.dart';
part 'menu.g.dart';

@freezed
class Menu with _$Menu {
  factory Menu({
    String? handle,
    String? id,
    List<MenuItem>? items,
    int? itemsCount,
    String? title,
  }) = _Menu;

  factory Menu.fromJson(Map<String, dynamic> json) => _$MenuFromJson(json);
}
