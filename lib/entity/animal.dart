import 'package:json_annotation/json_annotation.dart';
import 'person.dart';

part 'animal.g.dart';

@JsonEnum()
enum Gender {
  Male,
  Female,
  Unknown;

  Map<Gender, String> genderEnumMap() => _$GenderEnumMap;
}

@JsonSerializable()
class Animal {
  String id;
  String? name;
  String? race;
  String? breed;
  Gender? gender;
  String? color;
  double? length;
  double? weight;
  String? symptoms;
  DateTime? birthdate;
  List<Person>? animalOwners;

  Animal(
    this.id,
    this.name,
    this.race,
    this.breed,
    this.gender,
    this.color,
    this.length,
    this.weight,
    this.symptoms,
    this.birthdate,
    this.animalOwners,
  );

  factory Animal.fromJson(Map<String, dynamic> json) => _$AnimalFromJson(json);

  Map<String, dynamic> toJson() => _$AnimalToJson(this);

  static List<Animal> mapFromJson(List<dynamic> maps) =>
      maps.map((data) => Animal.fromJson(data)).toList();
}
