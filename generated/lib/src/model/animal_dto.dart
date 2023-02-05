//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'animal_dto.g.dart';

/// AnimalDto
///
/// Properties:
/// * [name] 
/// * [breed] 
/// * [type] 
/// * [gender] 
/// * [color] 
/// * [length] 
/// * [weight] 
/// * [symptoms] 
/// * [day] 
/// * [month] 
/// * [year] 
/// * [animalOwnerEmails] 
@BuiltValue()
abstract class AnimalDto implements Built<AnimalDto, AnimalDtoBuilder> {
  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'breed')
  String? get breed;

  @BuiltValueField(wireName: r'type')
  String get type;

  @BuiltValueField(wireName: r'gender')
  AnimalDtoGenderEnum get gender;
  // enum genderEnum {  Male,  Female,  Unknown,  };

  @BuiltValueField(wireName: r'color')
  String get color;

  @BuiltValueField(wireName: r'length')
  double? get length;

  @BuiltValueField(wireName: r'weight')
  double? get weight;

  @BuiltValueField(wireName: r'symptoms')
  String? get symptoms;

  @BuiltValueField(wireName: r'day')
  int get day;

  @BuiltValueField(wireName: r'month')
  int get month;

  @BuiltValueField(wireName: r'year')
  int get year;

  @BuiltValueField(wireName: r'animalOwnerEmails')
  BuiltList<String> get animalOwnerEmails;

  AnimalDto._();

  factory AnimalDto([void updates(AnimalDtoBuilder b)]) = _$AnimalDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AnimalDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AnimalDto> get serializer => _$AnimalDtoSerializer();
}

class _$AnimalDtoSerializer implements PrimitiveSerializer<AnimalDto> {
  @override
  final Iterable<Type> types = const [AnimalDto, _$AnimalDto];

  @override
  final String wireName = r'AnimalDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AnimalDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    if (object.breed != null) {
      yield r'breed';
      yield serializers.serialize(
        object.breed,
        specifiedType: const FullType(String),
      );
    }
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(String),
    );
    yield r'gender';
    yield serializers.serialize(
      object.gender,
      specifiedType: const FullType(AnimalDtoGenderEnum),
    );
    yield r'color';
    yield serializers.serialize(
      object.color,
      specifiedType: const FullType(String),
    );
    if (object.length != null) {
      yield r'length';
      yield serializers.serialize(
        object.length,
        specifiedType: const FullType(double),
      );
    }
    if (object.weight != null) {
      yield r'weight';
      yield serializers.serialize(
        object.weight,
        specifiedType: const FullType(double),
      );
    }
    if (object.symptoms != null) {
      yield r'symptoms';
      yield serializers.serialize(
        object.symptoms,
        specifiedType: const FullType(String),
      );
    }
    yield r'day';
    yield serializers.serialize(
      object.day,
      specifiedType: const FullType(int),
    );
    yield r'month';
    yield serializers.serialize(
      object.month,
      specifiedType: const FullType(int),
    );
    yield r'year';
    yield serializers.serialize(
      object.year,
      specifiedType: const FullType(int),
    );
    yield r'animalOwnerEmails';
    yield serializers.serialize(
      object.animalOwnerEmails,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AnimalDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AnimalDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
            specifiedType: const FullType(AnimalDtoGenderEnum),
          ) as AnimalDtoGenderEnum;
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
        case r'day':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.day = valueDes;
          break;
        case r'month':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.month = valueDes;
          break;
        case r'year':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.year = valueDes;
          break;
        case r'animalOwnerEmails':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.animalOwnerEmails.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AnimalDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AnimalDtoBuilder();
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

class AnimalDtoGenderEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'Male')
  static const AnimalDtoGenderEnum male = _$animalDtoGenderEnum_male;
  @BuiltValueEnumConst(wireName: r'Female')
  static const AnimalDtoGenderEnum female = _$animalDtoGenderEnum_female;
  @BuiltValueEnumConst(wireName: r'Unknown')
  static const AnimalDtoGenderEnum unknown = _$animalDtoGenderEnum_unknown;

  static Serializer<AnimalDtoGenderEnum> get serializer => _$animalDtoGenderEnumSerializer;

  const AnimalDtoGenderEnum._(String name): super(name);

  static BuiltSet<AnimalDtoGenderEnum> get values => _$animalDtoGenderEnumValues;
  static AnimalDtoGenderEnum valueOf(String name) => _$animalDtoGenderEnumValueOf(name);
}

