import 'package:json_annotation/json_annotation.dart';

import '../person.dart';

part 'person_dto.g.dart';

@JsonSerializable()
class PersonDto {
  String? userTitle;
  String? lastname;
  String? firstname;
  int? birthDay;
  int? birthMonth;
  int? birthYear;
  String? phoneNumber;
  String? email;
  String? streetAndHouseNumber;
  int? postalCode;
  String? city;
  String? country;

  PersonDto(
    this.userTitle,
    this.lastname,
    this.firstname,
    this.birthDay,
    this.birthMonth,
    this.birthYear,
    this.phoneNumber,
    this.email,
    this.streetAndHouseNumber,
    this.postalCode,
    this.city,
    this.country,
  );

  factory PersonDto.fromJson(Map<String, dynamic> json) =>
      _$PersonDtoFromJson(json);

  Map<String, dynamic> toJson() => _$PersonDtoToJson(this);
}
