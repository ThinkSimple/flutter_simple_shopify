import 'package:freezed_annotation/freezed_annotation.dart';

part 'selected_option.freezed.dart';

@freezed
class SelectedOption with _$SelectedOption {
  const SelectedOption._();
  
  factory SelectedOption({
    String? name,
    String? value,
  }) = _SelectedOption;

  static SelectedOption fromJson(Map<String, dynamic> json) {
    return SelectedOption(name: json['name'] ?? '', value: json['value'] ?? '');
  }
}
