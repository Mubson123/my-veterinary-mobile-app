// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Address _$AddressFromJson(Map<String, dynamic> json) => Address(
      json['streetAndHouseNumber'] as String?,
      json['postalCode'] as int?,
      json['city'] as String?,
      json['country'] as String?,
    );

Map<String, dynamic> _$AddressToJson(Address instance) => <String, dynamic>{
      'streetAndHouseNumber': instance.streetAndHouseNumber,
      'postalCode': instance.postalCode,
      'city': instance.city,
      'country': instance.country,
    };
