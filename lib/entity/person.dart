import 'package:json_annotation/json_annotation.dart';

import 'address.dart';

part 'person.g.dart';

@JsonEnum()
enum UserTitle {
  Mr,
  Ms,
  Unknown;

  Map<UserTitle, String> titleEnumMap() => _$UserTitleEnumMap;
}

@JsonSerializable()
class Person {
  String? id;
  UserTitle? title;
  String? lastname;
  String? firstname;
  DateTime? birthdate;
  String? phoneNumber;
  String? email;
  Address? address;

  Person(
    this.id,
    this.title,
    this.lastname,
    this.firstname,
    this.birthdate,
    this.phoneNumber,
    this.email,
    this.address,
  );

  factory Person.fromJson(Map<String, dynamic> json) => _$PersonFromJson(json);

  Map<String, dynamic> toJson() => _$PersonToJson(this);

  static List<Person> mapFromJson(List<dynamic> maps) =>
      maps.map((data) => Person.fromJson(data)).toList();
}
