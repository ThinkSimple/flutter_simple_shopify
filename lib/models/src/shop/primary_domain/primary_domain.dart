import 'package:freezed_annotation/freezed_annotation.dart';

part 'primary_domain.freezed.dart';
part 'primary_domain.g.dart';

@freezed
class PrimaryDomain with _$PrimaryDomain {
  factory PrimaryDomain({String? host, bool? sslEnabled, String? url}) =
      _PrimaryDomain;

  factory PrimaryDomain.fromJson(Map<String, dynamic> json) =>
      _$PrimaryDomainFromJson(json);
}
