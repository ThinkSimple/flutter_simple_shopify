import 'package:freezed_annotation/freezed_annotation.dart';

part 'privacy_policy.freezed.dart';
part 'privacy_policy.g.dart';

@freezed
class PrivacyPolicy with _$PrivacyPolicy {
  factory PrivacyPolicy({
    String? body,
    String? handle,
    String? id,
    String? title,
    String? url,
  }) = _PrivacyPolicy;

  factory PrivacyPolicy.fromJson(Map<String, dynamic> json) =>
      _$PrivacyPolicyFromJson(json);
}
