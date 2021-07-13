import 'package:freezed_annotation/freezed_annotation.dart';

part 'refund_policy.freezed.dart';
part 'refund_policy.g.dart';

@freezed
class RefundPolicy with _$RefundPolicy {
  factory RefundPolicy({
    String? body,
    String? handle,
    String? id,
    String? title,
    String? url,
  }) = _RefundPolicy;

  factory RefundPolicy.fromJson(Map<String, dynamic> json) =>
      _$RefundPolicyFromJson(json);
}
