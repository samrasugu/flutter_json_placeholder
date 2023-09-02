import 'package:freezed_annotation/freezed_annotation.dart';

part 'company.freezed.dart';
part 'company.g.dart';

@freezed
class Company with _$Company {
  factory Company({
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'catchPhrase') String? catchPhrase,
    @JsonKey(name: 'bs') String? bs,
  }) = _Company;

  factory Company.fromJson(Map<String, dynamic> json) =>
      _$CompanyFromJson(json);
}
