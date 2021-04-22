import 'package:freezed_annotation/freezed_annotation.dart';

part 'unit_price_measurement.freezed.dart';

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

  static UnitPriceMeasurement fromJson(Map<String, dynamic> json) {
    return UnitPriceMeasurement(
      measuredType: json['measuredType'],
      quantityUnit: json['quantityUnit'],
      quantityValue: json['quantityValue'],
      referenceUnit: json['referenceUnit'],
      referenceValue: json['referenceValue'],
    );
  }
}
