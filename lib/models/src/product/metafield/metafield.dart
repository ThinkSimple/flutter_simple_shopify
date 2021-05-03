import 'package:freezed_annotation/freezed_annotation.dart';

part 'metafield.freezed.dart';
part 'metafield.g.dart';

@freezed
class Metafield with _$Metafield {
  const Metafield._();

  factory Metafield({
    required String id,
    required String namespace,
    required String key,
    required String value,
    required String valueType,
    @Default('') String description,
  }) = _Metafield;

  static Metafield fromGraphJson(Map<String, dynamic> json) {
    return Metafield(
        id: (json['node'] ?? const {})['id'],
        namespace: (json['node'] ?? const {})['namespace'],
        key: (json['node'] ?? const {})['key'],
        value: (json['node'] ?? const {})['value'],
        valueType: (json['node'] ?? const {})['valueType'],
        description: (json['node'] ?? const {})['description']);
  }

  factory Metafield.fromJson(Map<String, dynamic> json) =>
      _$MetafieldFromJson(json);
}
