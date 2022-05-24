import 'package:freezed_annotation/freezed_annotation.dart';

part 'menu_item.freezed.dart';
part 'menu_item.g.dart';

@freezed
class MenuItem with _$MenuItem {
  const MenuItem._();
  factory MenuItem({
    String? id,
    List<MenuItem>? items,
    String? resourceId,
    List<String>? tags,
    String? title,
    String? type,
    String? url,
  }) = _MenuItem;

  factory MenuItem.fromJson(Map<String, dynamic> json) =>
      _$MenuItemFromJson(json);
}
