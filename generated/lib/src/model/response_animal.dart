//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/response_media.dart';
import 'package:openapi/src/model/person.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/date.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'response_animal.g.dart';

/// ResponseAnimal
///
/// Properties:
/// * [id] 
/// * [name] 
/// * [breed] 
/// * [type] 
/// * [gender] 
/// * [color] 
/// * [length] 
/// * [weight] 
/// * [symptoms] 
/// * [birthdate] 
/// * [animalOwners] 
/// * [responseMedia] 
@BuiltValue()
abstract class ResponseAnimal implements Built<ResponseAnimal, ResponseAnimalBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'breed')
  String get breed;

  @BuiltValueField(wireName: r'type')
  String get type;

  @BuiltValueField(wireName: r'gender')
  ResponseAnimalGenderEnum get gender;
  // enum genderEnum {  Male,  Female,  Unknown,  };

  @BuiltValueField(wireName: r'color')
  String get color;

  @BuiltValueField(wireName: r'length')
  double get length;

  @BuiltValueField(wireName: r'weight')
  double get weight;

  @BuiltValueField(wireName: r'symptoms')
  String get symptoms;

  @BuiltValueField(wireName: r'birthdate')
  Date get birthdate;

  @BuiltValueField(wireName: r'animalOwners')
  BuiltSet<Person> get animalOwners;

  @BuiltValueField(wireName: r'responseMedia')
  BuiltSet<ResponseMedia>? get responseMedia;

  ResponseAnimal._();

  factory ResponseAnimal([void updates(ResponseAnimalBuilder b)]) = _$ResponseAnimal;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ResponseAnimalBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ResponseAnimal> get serializer => _$ResponseAnimalSerializer();
}

class _$ResponseAnimalSerializer implements PrimitiveSerializer<ResponseAnimal> {
  @override
  final Iterable<Type> types = const [ResponseAnimal, _$ResponseAnimal];

  @override
  final String wireName = r'ResponseAnimal';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ResponseAnimal object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'breed';
    yield serializers.serialize(
      object.breed,
      specifiedType: const FullType(String),
    );
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(String),
    );
    yield r'gender';
    yield serializers.serialize(
      object.gender,
      specifiedType: const FullType(ResponseAnimalGenderEnum),
    );
    yield r'color';
    yield serializers.serialize(
      object.color,
      specifiedType: const FullType(String),
    );
    yield r'length';
    yield serializers.serialize(
      object.length,
      specifiedType: const FullType(double),
    );
    yield r'weight';
    yield serializers.serialize(
      object.weight,
      specifiedType: const FullType(double),
    );
    yield r'symptoms';
    yield serializers.serialize(
      object.symptoms,
      specifiedType: const FullType(String),
    );
    yield r'birthdate';
    yield serializers.serialize(
      object.birthdate,
      specifiedType: const FullType(Date),
    );
    yield r'animalOwners';
    yield serializers.serialize(
      object.animalOwners,
      specifiedType: const FullType(BuiltSet, [FullType(Person)]),
    );
    if (object.responseMedia != null) {
      yield r'responseMedia';
      yield serializers.serialize(
        object.responseMedia,
        specifiedType: const FullType(BuiltSet, [FullType(ResponseMedia)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ResponseAnimal object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ResponseAnimalBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'breed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.breed = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.type = valueDes;
          break;
        case r'gender':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ResponseAnimalGenderEnum),
          ) as ResponseAnimalGenderEnum;
          result.gender = valueDes;
          break;
        case r'color':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.color = valueDes;
          break;
        case r'length':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.length = valueDes;
          break;
        case r'weight':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.weight = valueDes;
          break;
        case r'symptoms':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.symptoms = valueDes;
          break;
        case r'birthdate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Date),
          ) as Date;
          result.birthdate = valueDes;
          break;
        case r'animalOwners':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltSet, [FullType(Person)]),
          ) as BuiltSet<Person>;
          result.animalOwners.replace(valueDes);
          break;
        case r'responseMedia':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltSet, [FullType(ResponseMedia)]),
          ) as BuiltSet<ResponseMedia>;
          result.responseMedia.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ResponseAnimal deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ResponseAnimalBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

class ResponseAnimalGenderEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'Male')
  static const ResponseAnimalGenderEnum male = _$responseAnimalGenderEnum_male;
  @BuiltValueEnumConst(wireName: r'Female')
  static const ResponseAnimalGenderEnum female = _$responseAnimalGenderEnum_female;
  @BuiltValueEnumConst(wireName: r'Unknown')
  static const ResponseAnimalGenderEnum unknown = _$responseAnimalGenderEnum_unknown;

  static Serializer<ResponseAnimalGenderEnum> get serializer => _$responseAnimalGenderEnumSerializer;

  const ResponseAnimalGenderEnum._(String name): super(name);

  static BuiltSet<ResponseAnimalGenderEnum> get values => _$responseAnimalGenderEnumValues;
  static ResponseAnimalGenderEnum valueOf(String name) => _$responseAnimalGenderEnumValueOf(name);
}

