import 'package:flutter_json_placeholder/models/address.dart';
import 'package:flutter_json_placeholder/models/company.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  factory User({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'username') String? username,
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'address') Address? address,
    @JsonKey(name: 'phone') String? phone,
    @JsonKey(name: 'website') String? website,
    @JsonKey(name: 'company') Company? company,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
