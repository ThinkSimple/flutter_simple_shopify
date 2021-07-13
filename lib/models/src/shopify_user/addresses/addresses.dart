import 'package:flutter_simple_shopify/models/src/shopify_user/address/address.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'addresses.freezed.dart';
part 'addresses.g.dart';

@freezed
class Addresses with _$Addresses {
  const Addresses._();
  factory Addresses({required List<Address> addressList}) = _Addresses;
  factory Addresses.fromJson(Map<String, dynamic> json) =>
      _$AddressesFromJson(json);

  static Addresses fromGraphJson(Map<String, dynamic> json) {
    return Addresses(addressList: _getAddressList(json));
  }

  static _getAddressList(Map<String, dynamic> json) {
    List<Address> addressList = [];
    json['edges']?.forEach((address) =>
        addressList.add(Address.fromGraphJson(address ?? const [])));
    return addressList;
  }
}
