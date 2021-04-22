import 'package:freezed_annotation/freezed_annotation.dart';

part 'option.freezed.dart';

@freezed
class Option with _$Option {
  const Option._();

  factory Option({
    String? id,
    String? name,
    List<String>? values,
  }) = _Option;

  static Option fromJson(Map<String, dynamic> json) {
    return Option(
        id: json['id'] ?? "",
        name: json['name'] ?? "",
        values: _getValueList(json));
  }

  static List<String> _getValueList(Map<String, dynamic> json) {
    List<String> values = [];
    json['values']?.forEach((e) => values.add(e ?? ""));
    return values;
  }
}
