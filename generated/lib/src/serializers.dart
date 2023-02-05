//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_import

import 'package:one_of_serializer/any_of_serializer.dart';
import 'package:one_of_serializer/one_of_serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_value/iso_8601_date_time_serializer.dart';
import 'package:openapi/src/date_serializer.dart';
import 'package:openapi/src/model/date.dart';

import 'package:openapi/src/model/address.dart';
import 'package:openapi/src/model/animal.dart';
import 'package:openapi/src/model/animal_dto.dart';
import 'package:openapi/src/model/person.dart';
import 'package:openapi/src/model/person_dto.dart';
import 'package:openapi/src/model/response_animal.dart';
import 'package:openapi/src/model/response_media.dart';
import 'package:openapi/src/model/response_person.dart';

part 'serializers.g.dart';

@SerializersFor([
  Address,
  Animal,
  AnimalDto,
  Person,
  PersonDto,
  ResponseAnimal,
  ResponseMedia,
  ResponsePerson,
])
Serializers serializers = (_$serializers.toBuilder()
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(ResponseMedia)]),
        () => ListBuilder<ResponseMedia>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(ResponsePerson)]),
        () => ListBuilder<ResponsePerson>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(ResponseAnimal)]),
        () => ListBuilder<ResponseAnimal>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(String)]),
        () => ListBuilder<String>(),
      )
      ..add(const OneOfSerializer())
      ..add(const AnyOfSerializer())
      ..add(const DateSerializer())
      ..add(Iso8601DateTimeSerializer()))
    .build();

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
