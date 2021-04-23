import 'package:freezed_annotation/freezed_annotation.dart';

import 'addresses/addresses.dart';
import 'last_incomplete_checkout/last_incomplete_checkout.dart';

part 'shopify_user.freezed.dart';
part 'shopify_user.g.dart';

@freezed
class ShopifyUser with _$ShopifyUser {
  factory ShopifyUser({
    Addresses? address,
    String? createdAt,
    String? displayName,
    String? email,
    String? firstName,
    String? id,
    String? lastName,
    String? phone,
    List<String>? tags,
    LastIncompleteCheckout? lastIncompleteCheckout,
  }) = _ShopifyUser;

  static ShopifyUser fromGraphJson(Map<String, dynamic> json) {
    return ShopifyUser(
      address: Addresses.fromGraphJson(json['addresses'] ?? const {}),
      createdAt: json['createdAt'],
      displayName: json['displayName'],
      email: json['email'],
      firstName: json['firstName'],
      id: json['id'],
      lastName: json['lastName'],
      phone: json['phone'],
      tags: _getTagList((json)),
      lastIncompleteCheckout: LastIncompleteCheckout.fromJson(
          json['lastIncompleteCheckout'] ?? const {}),
    );
  }

  factory ShopifyUser.fromJson(Map<String, dynamic> json) =>
      _$ShopifyUserFromJson(json);

  static _getTagList(Map<String, dynamic> json) {
    List<String> tagsList = [];
    json['tags']?.forEach((tag) => tagsList.add(tag));
    return tagsList;
  }
}
