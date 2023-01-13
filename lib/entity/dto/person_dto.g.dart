// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PersonDto _$PersonDtoFromJson(Map<String, dynamic> json) => PersonDto(
      json['userTitle'] as String?,
      json['lastname'] as String?,
      json['firstname'] as String?,
      json['birthDay'] as int?,
      json['birthMonth'] as int?,
      json['birthYear'] as int?,
      json['phoneNumber'] as String?,
      json['email'] as String?,
      json['streetAndHouseNumber'] as String?,
      json['postalCode'] as int?,
      json['city'] as String?,
      json['country'] as String?,
    );

Map<String, dynamic> _$PersonDtoToJson(PersonDto instance) => <String, dynamic>{
      'userTitle': instance.userTitle,
      'lastname': instance.lastname,
      'firstname': instance.firstname,
      'birthDay': instance.birthDay,
      'birthMonth': instance.birthMonth,
      'birthYear': instance.birthYear,
      'phoneNumber': instance.phoneNumber,
      'email': instance.email,
      'streetAndHouseNumber': instance.streetAndHouseNumber,
      'postalCode': instance.postalCode,
      'city': instance.city,
      'country': instance.country,
    };
