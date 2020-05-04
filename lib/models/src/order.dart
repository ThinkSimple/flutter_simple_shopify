import 'package:flutter_simple_shopify/models/src/product.dart';
import 'checkout.dart';

class Orders {
  final List<Order> orderList;
  final bool hasNextPage;

  Orders({this.orderList, this.hasNextPage});

  static Orders fromJson(Map<String, dynamic> json){
    return Orders(
      orderList: _getOrderList(json ?? const {}),
      hasNextPage: (json['pageInfo'] ?? const {})['hasNextPage']
    );
  }

  static List<Order>_getOrderList(Map<String, dynamic> json) {
    List<Order> orderList = [];
    json['edges']?.forEach((e) => orderList.add(Order.fromJson(e ?? const {})));
    return orderList;
  }

}

class Order {
  final String id;
  final String email;
  final String currencyCode;
  final String customerUrl;
  final List<LineItems> lineItems;
  final String name;
  final int orderNumber;
  final String phone;
  final String processedAt;
  final ShippingAddress shippingAddress;
  final String statusUrl;
  final PriceV2 subtotalPriceV2;
  final PriceV2 totalPriceV2;
  final PriceV2 totalRefundedV2;
  final PriceV2 totalShippingPriceV2;
  final PriceV2 totalTaxV2;
  final String cursor;

  Order({this.id, this.email, this.currencyCode, this.customerUrl, this.lineItems, this.name, this.orderNumber, this.phone, this.processedAt, this.shippingAddress, this.statusUrl, this.subtotalPriceV2, this.totalPriceV2, this.totalRefundedV2, this.totalShippingPriceV2, this.totalTaxV2, this.cursor});

  static Order fromJson(Map<String, dynamic> json){
    return Order(
      id: (json['node'] ?? const {})['id'],
      email: (json['node'] ?? const {})['email'],
      currencyCode: (json['node'] ?? const {})['currencyCode'],
      customerUrl: (json['node'] ?? const {})['customerUrl'],
      lineItems: _getLineItems(json ?? const {}),
      name: (json['node'] ?? const {})['name'],
      orderNumber: (json['node'] ?? const {})['orderNumber'],
      phone: (json['node'] ?? const {})['phone'],
      processedAt: (json['node'] ?? const {})['processedAt'],
      shippingAddress: ShippingAddress.fromJson((json['node'] ?? const {})['shippingAddress'] ?? const {}),
      statusUrl: (json['node'] ?? const {})['statusUrl'],
      subtotalPriceV2: PriceV2.fromJson((json['node'] ?? const {})['subtotalPriceV2'] ?? const {}),
      totalPriceV2: PriceV2.fromJson((json['node'] ?? const {})['totalPriceV2'] ?? const {}),
      totalRefundedV2: PriceV2.fromJson((json['node'] ?? const {})['totalRefundedV2'] ?? const {}),
      totalShippingPriceV2: PriceV2.fromJson((json['node'] ?? const {})['totalShippingPriceV2'] ?? const {}),
      totalTaxV2: PriceV2.fromJson((json['node'] ?? const {})['totalTaxV2'] ?? const {}),
      cursor: json['cursor']
    );
  }

  static List<LineItems> _getLineItems(Map<String, dynamic> json) {
    List<LineItems> lineItemsList = [];
    ((json['node'] ?? const {})['lineItems'] ?? const {})['edges']?.forEach((e) => lineItemsList.add(LineItems.fromJson(e ?? const {})));
    return lineItemsList;
  }
}

class ShippingAddress {
  final String address1;
  final String address2;
  final String city;
  final String company;
  final String country;
  final String countryCodeV2;
  final String firstName;
  final String id;
  final String lastName;
  final double latitude;
  final double longitude;
  final String name;
  final String phone;
  final String province;
  final String provinceCode;
  final String zip;

  ShippingAddress({this.address1, this.address2, this.city, this.company, this.country, this.countryCodeV2, this.firstName, this.id, this.lastName, this.latitude, this.longitude, this.name, this.phone, this.province, this.provinceCode, this.zip});

  static ShippingAddress fromJson(Map<String, dynamic> json){
    return ShippingAddress(
      address1: json['address1'],
      address2: json['address2'],
      city: json['city'],
      company: json['company'],
      country: json['country'],
      countryCodeV2: json['countryCodeV2'],
      firstName: json['firstName'],
      id: json['id'],
      lastName: json['lastName'],
      latitude: json['latitude'],
      longitude: json['longitude'],
      name: json['name'],
      phone: json['phone'],
      province: json['province'],
      provinceCode: json['provinceCode'],
      zip: json['zip']
    );
  }
}