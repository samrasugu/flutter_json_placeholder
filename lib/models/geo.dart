import 'package:freezed_annotation/freezed_annotation.dart';

part 'geo.freezed.dart';
part 'geo.g.dart';

@freezed
class Geo with _$Geo {
  factory Geo({
    @JsonKey(name: 'lat') String? lat,
    @JsonKey(name: 'lng') String? lng,
  }) = _Geo;

  factory Geo.fromJson(Map<String, dynamic> json) => _$GeoFromJson(json);
}
