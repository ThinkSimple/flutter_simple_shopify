import 'package:freezed_annotation/freezed_annotation.dart';

part 'selected_option.freezed.dart';
part 'selected_option.g.dart';

@freezed
class SelectedOption with _$SelectedOption {
  const SelectedOption._();

  factory SelectedOption({
    required String name,
    required String value,
  }) = _SelectedOption;

  factory SelectedOption.fromJson(Map<String, dynamic> json) =>
      _$SelectedOptionFromJson(json);
}
