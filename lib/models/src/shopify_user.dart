import 'package:flutter_simple_shopify/models/src/checkout.dart';
import 'package:flutter_simple_shopify/models/src/product.dart';

class ShopifyUser {

  final Addresses address;
  final String createdAt;
  final String displayName;
  final String email;
  final String firstName;
  final String id;
  final String lastName;
  final String phone;
  final List<String> tags;
  final LastIncompleteCheckout lastIncompleteCheckout;

  ShopifyUser({this.address, this.createdAt, this.displayName, this.email, this.firstName, this.id, this.lastName, this.phone, this.tags, this.lastIncompleteCheckout});

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
      tags: _getTagList(json ?? const []),
      lastIncompleteCheckout: LastIncompleteCheckout.fromJson(json['lastIncompleteCheckout'] ?? const {}),
    );
  }

  static _getTagList(Map<String, dynamic> json) {
    List<String> tagsList = [];
    json['tags']?.forEach((tag) => tagsList.add(tag));
    return tagsList;
  }

}

class Addresses{
  final List<Address> addressList;

  Addresses({this.addressList});

  static Addresses fromJson(Map<String, dynamic> json){
    return Addresses(
        addressList: _getAddressList(json)
    );
  }

  static _getAddressList(Map<String, dynamic> json) {
    List<Address> addressList = [];
    json['edges']?.forEach((address) => addressList.add(Address.fromJson(address ?? const [])));
    return addressList;
  }


}

class Address {

  final String id;
  final String address1;
  final String address2;
  final String city;
  final String company;
  final String country;
  final String countryCode;
  final String firstName;
  final String lastName;
  final String formattedArea;
  final String latitude;
  final String longitude;
  final String name;
  final String phone;
  final String province;
  final String provinceCode;
  final String zip;

  Address({this.id, this.address1, this.address2, this.city, this.company, this.country, this.countryCode, this.firstName, this.lastName, this.formattedArea, this.latitude, this.longitude, this.name, this.phone, this.province, this.provinceCode, this.zip});

  static Address fromJson(Map<String, dynamic> json){
    return Address(
        id: (json['node'] ?? const {})['id'],
        address1: (json['node'] ?? const {})['address1'],
        address2: (json['node'] ?? const {})['address2'],
        city: (json['node'] ?? const {})['city'],
        company: (json['node'] ?? const {})['company'],
        country: (json['node'] ?? const {})['country'],
        countryCode: (json['node'] ?? const {})['countryCode'],
        firstName: (json['node'] ?? const {})['firstName'],
        lastName: (json['node'] ?? const {})['lastName'],
        formattedArea: (json['node'] ?? const {})['formattedArea'],
        latitude: (json['node'] ?? const {})['latitude'],
        longitude: (json['node'] ?? const {})['longitude'],
        name: (json['node'] ?? const {})['name'],
        phone: (json['node'] ?? const {})['phone'],
        province: (json['node'] ?? const {})['province'],
        provinceCode: (json['node'] ?? const {})['provinceCode'],
        zip: (json['node'] ?? const {})['zip']
    );
  }

}

class LastIncompleteCheckout {

  final String completedAt;
  final String createdAt;
  final String email;
  final String id;
  final String currencyCode;
  final String webUrl;
  final PriceV2 totalPriceV2;
  final PriceV2 lineItemsSubtotalPrice;
  final LineItems lineItems;

  LastIncompleteCheckout({this.completedAt, this.createdAt, this.email, this.id, this.currencyCode, this.webUrl, this.totalPriceV2, this.lineItemsSubtotalPrice, this.lineItems});

  static LastIncompleteCheckout fromJson(Map<String, dynamic> json){
    return LastIncompleteCheckout(
        completedAt: json['completedAt'],
        createdAt: json['createdAt'],
        email: json['email'],
        id: json['id'],
        currencyCode: json['currencyCode'],
        webUrl: json['webUrl'],
        totalPriceV2: PriceV2.fromJson(json['totalPriceV2']?? const {}),
        lineItemsSubtotalPrice: PriceV2.fromJson(json['lineItemsSubtotalPrice'] ?? const {}),
        lineItems: LineItems.fromJson(json['lineItems']?? const {})
    );
  }

}