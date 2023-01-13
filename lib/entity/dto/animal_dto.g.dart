// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'animal_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AnimalDto _$AnimalDtoFromJson(Map<String, dynamic> json) => AnimalDto(
      json['name'] as String?,
      json['race'] as String?,
      json['breed'] as String?,
      $enumDecodeNullable(_$GenderEnumMap, json['gender']),
      json['color'] as String?,
      (json['length'] as num?)?.toDouble(),
      (json['weight'] as num?)?.toDouble(),
      json['symptoms'] as String?,
      json['day'] as int?,
      json['month'] as int?,
      json['year'] as int?,
      (json['ownersEmails'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$AnimalDtoToJson(AnimalDto instance) => <String, dynamic>{
      'name': instance.name,
      'race': instance.race,
      'breed': instance.breed,
      'gender': _$GenderEnumMap[instance.gender],
      'color': instance.color,
      'length': instance.length,
      'weight': instance.weight,
      'symptoms': instance.symptoms,
      'day': instance.day,
      'month': instance.month,
      'year': instance.year,
      'ownersEmails': instance.ownersEmails,
    };

const _$GenderEnumMap = {
  Gender.Male: 'Male',
  Gender.Female: 'Female',
  Gender.Unknown: 'Unknown',
};
