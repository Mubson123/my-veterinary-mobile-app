// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'animal.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Animal _$AnimalFromJson(Map<String, dynamic> json) => Animal(
      json['id'] as String,
      json['name'] as String?,
      json['type'] as String?,
      json['breed'] as String?,
      $enumDecodeNullable(_$GenderEnumMap, json['gender']),
      json['color'] as String?,
      (json['length'] as num?)?.toDouble(),
      (json['weight'] as num?)?.toDouble(),
      json['symptoms'] as String?,
      json['birthdate'] == null
          ? null
          : DateTime.parse(json['birthdate'] as String),
      (json['animalOwners'] as List<dynamic>?)
          ?.map((e) => Person.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AnimalToJson(Animal instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'breed': instance.breed,
      'type': instance.type,
      'gender': _$GenderEnumMap[instance.gender],
      'color': instance.color,
      'length': instance.length,
      'weight': instance.weight,
      'symptoms': instance.symptoms,
      'birthdate': instance.birthdate?.toIso8601String(),
      'animalOwners': instance.animalOwners,
    };

const _$GenderEnumMap = {
  Gender.Male: 'Male',
  Gender.Female: 'Female',
  Gender.Unknown: 'Unknown',
};
