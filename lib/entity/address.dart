import 'package:json_annotation/json_annotation.dart';
part 'address.g.dart';

@JsonSerializable()
class Address {
  String? streetAndHouseNumber;
  int? postalCode;
  String? city;
  String? country;

  Address(
    this.streetAndHouseNumber,
    this.postalCode,
    this.city,
    this.country,
  );

  factory Address.fromJson(Map<String, dynamic> json) => _$AddressFromJson(json);

  Map<String, dynamic> toJson() => _$AddressToJson(this);
}
