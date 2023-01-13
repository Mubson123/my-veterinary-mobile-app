import 'package:json_annotation/json_annotation.dart';

import '../animal.dart';

part 'animal_dto.g.dart';

@JsonSerializable()
class AnimalDto {
  String? name;
  String? race;
  String? breed;
  Gender? gender;
  String? color;
  double? length;
  double? weight;
  String? symptoms;
  int? day;
  int? month;
  int? year;
  List<String>? ownersEmails;

  AnimalDto(
    this.name,
    this.race,
    this.breed,
    this.gender,
    this.color,
    this.length,
    this.weight,
    this.symptoms,
    this.day,
    this.month,
    this.year,
    this.ownersEmails,
  );

  factory AnimalDto.fromJson(Map<String, dynamic> json) =>
      _$AnimalDtoFromJson(json);

  Map<String, dynamic> toJson() => _$AnimalDtoToJson(this);
}
