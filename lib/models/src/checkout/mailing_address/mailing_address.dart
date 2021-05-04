import 'package:freezed_annotation/freezed_annotation.dart';

part 'mailing_address.freezed.dart';
part 'mailing_address.g.dart';

@freezed
class MailingAddress with _$MailingAddress {
  factory MailingAddress({
    required String id,
    required String lastName,
    required String address1,
    required String name,
    required String city,
    required String country,
    required String firstName,
    required String zip,
    String? address2,
    String? company,
    String? countryCodeV2,
    String? formattedArea,
    double? latitude,
    double? longitude,
    String? phone,
    String? province,
    String? provinceCode,
  }) = _MailingAddress;

  factory MailingAddress.fromJson(Map<String, dynamic> json) =>
      _$MailingAddressFromJson(json);
}
