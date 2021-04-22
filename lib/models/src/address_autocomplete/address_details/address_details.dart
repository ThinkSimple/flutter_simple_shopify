
import 'package:freezed_annotation/freezed_annotation.dart';

part 'address_details.freezed.dart';
part 'address_details.g.dart';

@freezed
class AddressDetails with _$AddressDetails {
  const factory AddressDetails({
    String? address1,
    String? address2,
    String? city,
    String? company,
    String? completionService,
    String? country,
    String? countryCode,
    double? latitude,
    double? longitude,
    String? province,
    String? provinceCode,
    String? zip,
  }) = _AddressDetails;

  factory AddressDetails.fromJson(Map<String, dynamic> json) =>
      _$AddressDetailsFromJson(json);
}
