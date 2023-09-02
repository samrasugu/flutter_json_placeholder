import 'package:flutter_json_placeholder/models/geo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'address.freezed.dart';
part 'address.g.dart';

@freezed
class Address with _$Address {
  factory Address({
    @JsonKey(name: 'street') String? street,
    @JsonKey(name: 'suite') String? suite,
    @JsonKey(name: 'zipcode') String? zipcode,
    @JsonKey(name: 'geo') Geo? geo,
  }) = _Address;

  factory Address.fromJson(Map<String, dynamic> json) => _$AddressFromJson(json);
}
