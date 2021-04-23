import 'package:freezed_annotation/freezed_annotation.dart';

part 'unit_price_measurement.freezed.dart';
part 'unit_price_measurement.g.dart';

@freezed
class UnitPriceMeasurement with _$UnitPriceMeasurement {
  const UnitPriceMeasurement._();
  factory UnitPriceMeasurement({
    String? measuredType,
    String? quantityUnit,
    double? quantityValue,
    String? referenceUnit,
    int? referenceValue,
  }) = _UnitPriceMeasurement;

  factory UnitPriceMeasurement.fromJson(Map<String, dynamic> json) =>
      _$UnitPriceMeasurementFromJson(json);
}
