import 'package:freezed_annotation/freezed_annotation.dart';

part 'mailing_address.freezed.dart';
part 'mailing_address.g.dart';

@freezed
class MailingAddress with _$MailingAddress {
  factory MailingAddress({
    String? address1,
    String? address2,
    String? city,
    String? company,
    String? country,
    String? countryCodeV2,
    String? firstName,
    String? formattedArea,
    String? id,
    String? lastName,
    double? latitude,
    double? longitude,
    String? name,
    String? phone,
    String? province,
    String? provinceCode,
    String? zip,
  }) = _MailingAddress;

  factory MailingAddress.fromJson(Map<String, dynamic> json) =>
      _$MailingAddressFromJson(json);
}
