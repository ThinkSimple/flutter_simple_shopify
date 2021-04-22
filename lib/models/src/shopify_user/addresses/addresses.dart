import 'package:flutter_simple_shopify/models/src/shopify_user/address/address.dart';

class Addresses {
  final List<Address>? addressList;

  Addresses({this.addressList});

  static Addresses fromJson(Map<String, dynamic> json) {
    return Addresses(addressList: _getAddressList(json));
  }

  static _getAddressList(Map<String, dynamic> json) {
    List<Address> addressList = [];
    json['edges']?.forEach(
        (address) => addressList.add(Address.fromJson(address ?? const [])));
    return addressList;
  }
}
