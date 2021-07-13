import 'package:freezed_annotation/freezed_annotation.dart';

part 'shipping_address.freezed.dart';
part 'shipping_address.g.dart';

@freezed
class ShippingAddress with _$ShippingAddress {
  factory ShippingAddress({
    required String name,
    required String firstName,
    required String id,
    required String lastName,
    required String address1,
    required String city,
    required String country,
    String? address2,
    String? company,
    String? countryCodeV2,
    double? latitude,
    double? longitude,
    String? phone,
    String? province,
    String? provinceCode,
    required String zip,
  }) = _ShippingAddress;

  factory ShippingAddress.fromJson(Map<String, dynamic> json) =>
      _$ShippingAddressFromJson(json);
}
