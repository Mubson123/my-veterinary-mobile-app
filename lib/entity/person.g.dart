// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Person _$PersonFromJson(Map<String, dynamic> json) => Person(
      json['id'] as String?,
      $enumDecodeNullable(_$UserTitleEnumMap, json['title']),
      json['lastname'] as String?,
      json['firstname'] as String?,
      json['birthdate'] == null
          ? null
          : DateTime.parse(json['birthdate'] as String),
      json['phoneNumber'] as String?,
      json['email'] as String?,
      json['address'] == null
          ? null
          : Address.fromJson(json['address'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PersonToJson(Person instance) => <String, dynamic>{
      'id': instance.id,
      'title': _$UserTitleEnumMap[instance.title],
      'lastname': instance.lastname,
      'firstname': instance.firstname,
      'birthdate': instance.birthdate?.toIso8601String(),
      'phoneNumber': instance.phoneNumber,
      'email': instance.email,
      'address': instance.address,
    };

const _$UserTitleEnumMap = {
  UserTitle.Mr: 'Mr',
  UserTitle.Ms: 'Ms',
  UserTitle.Unknown: 'Unknown',
};
