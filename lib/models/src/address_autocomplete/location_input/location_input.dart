import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_input.freezed.dart';
part 'location_input.g.dart';

@freezed
class LocationInput with _$LocationInput {
  factory LocationInput({
    double? latitude,
    double? longitude,
  }) = _LocationInput;

  factory LocationInput.fromJson(Map<String, dynamic> json) =>
      _$LocationInputFromJson(json);
}
