import 'package:freezed_annotation/freezed_annotation.dart';

part 'shipping_address.freezed.dart';
part 'shipping_address.g.dart';

@freezed
class ShippingAddress with _$ShippingAddress {
  factory ShippingAddress({
    String? address1,
    String? address2,
    String? city,
    String? company,
    String? country,
    String? countryCodeV2,
    String? firstName,
    String? id,
    String? lastName,
    double? latitude,
    double? longitude,
    String? name,
    String? phone,
    String? province,
    String? provinceCode,
    String? zip,
  }) = _ShippingAddress;

  factory ShippingAddress.fromJson(Map<String, dynamic> json) =>
      _$ShippingAddressFromJson(json);
}
