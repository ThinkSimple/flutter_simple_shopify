import 'addresses/addresses.dart';
import 'last_incomplete_checkout/last_incomplete_checkout.dart';

class ShopifyUser {
  final Addresses? address;
  final String? createdAt;
  final String? displayName;
  final String? email;
  final String? firstName;
  final String? id;
  final String? lastName;
  final String? phone;
  final List<String>? tags;
  final LastIncompleteCheckout? lastIncompleteCheckout;

  ShopifyUser(
      {this.address,
      this.createdAt,
      this.displayName,
      this.email,
      this.firstName,
      this.id,
      this.lastName,
      this.phone,
      this.tags,
      this.lastIncompleteCheckout});

  static ShopifyUser fromJson(Map<String, dynamic> json) {
    return ShopifyUser(
      address: Addresses.fromJson(json['addresses'] ?? const {}),
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

  static _getTagList(Map<String, dynamic> json) {
    List<String> tagsList = [];
    json['tags']?.forEach((tag) => tagsList.add(tag));
    return tagsList;
  }
}
