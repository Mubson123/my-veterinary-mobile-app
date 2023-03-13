//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'person_dto.g.dart';

/// PersonDto
///
/// Properties:
/// * [userTitle] 
/// * [lastname] 
/// * [firstname] 
/// * [birthDay] 
/// * [birthMonth] 
/// * [birthYear] 
/// * [phoneNumber] 
/// * [email] 
/// * [streetAndHouseNumber] 
/// * [postalCode] 
/// * [city] 
/// * [country] 
@BuiltValue()
abstract class PersonDto implements Built<PersonDto, PersonDtoBuilder> {
  @BuiltValueField(wireName: r'userTitle')
  PersonDtoUserTitleEnum get userTitle;
  // enum userTitleEnum {  Mr,  Ms,  Unknown,  };

  @BuiltValueField(wireName: r'lastname')
  String get lastname;

  @BuiltValueField(wireName: r'firstname')
  String get firstname;

  @BuiltValueField(wireName: r'birthDay')
  int get birthDay;

  @BuiltValueField(wireName: r'birthMonth')
  int get birthMonth;

  @BuiltValueField(wireName: r'birthYear')
  int get birthYear;

  @BuiltValueField(wireName: r'phoneNumber')
  String get phoneNumber;

  @BuiltValueField(wireName: r'email')
  String get email;

  @BuiltValueField(wireName: r'streetAndHouseNumber')
  String get streetAndHouseNumber;

  @BuiltValueField(wireName: r'postalCode')
  int get postalCode;

  @BuiltValueField(wireName: r'city')
  String get city;

  @BuiltValueField(wireName: r'country')
  String get country;

  PersonDto._();

  factory PersonDto([void updates(PersonDtoBuilder b)]) = _$PersonDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PersonDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PersonDto> get serializer => _$PersonDtoSerializer();
}

class _$PersonDtoSerializer implements PrimitiveSerializer<PersonDto> {
  @override
  final Iterable<Type> types = const [PersonDto, _$PersonDto];

  @override
  final String wireName = r'PersonDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PersonDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'userTitle';
    yield serializers.serialize(
      object.userTitle,
      specifiedType: const FullType(PersonDtoUserTitleEnum),
    );
    yield r'lastname';
    yield serializers.serialize(
      object.lastname,
      specifiedType: const FullType(String),
    );
    yield r'firstname';
    yield serializers.serialize(
      object.firstname,
      specifiedType: const FullType(String),
    );
    yield r'birthDay';
    yield serializers.serialize(
      object.birthDay,
      specifiedType: const FullType(int),
    );
    yield r'birthMonth';
    yield serializers.serialize(
      object.birthMonth,
      specifiedType: const FullType(int),
    );
    yield r'birthYear';
    yield serializers.serialize(
      object.birthYear,
      specifiedType: const FullType(int),
    );
    yield r'phoneNumber';
    yield serializers.serialize(
      object.phoneNumber,
      specifiedType: const FullType(String),
    );
    yield r'email';
    yield serializers.serialize(
      object.email,
      specifiedType: const FullType(String),
    );
    yield r'streetAndHouseNumber';
    yield serializers.serialize(
      object.streetAndHouseNumber,
      specifiedType: const FullType(String),
    );
    yield r'postalCode';
    yield serializers.serialize(
      object.postalCode,
      specifiedType: const FullType(int),
    );
    yield r'city';
    yield serializers.serialize(
      object.city,
      specifiedType: const FullType(String),
    );
    yield r'country';
    yield serializers.serialize(
      object.country,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    PersonDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PersonDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'userTitle':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PersonDtoUserTitleEnum),
          ) as PersonDtoUserTitleEnum;
          result.userTitle = valueDes;
          break;
        case r'lastname':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.lastname = valueDes;
          break;
        case r'firstname':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.firstname = valueDes;
          break;
        case r'birthDay':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.birthDay = valueDes;
          break;
        case r'birthMonth':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.birthMonth = valueDes;
          break;
        case r'birthYear':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.birthYear = valueDes;
          break;
        case r'phoneNumber':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.phoneNumber = valueDes;
          break;
        case r'email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.email = valueDes;
          break;
        case r'streetAndHouseNumber':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.streetAndHouseNumber = valueDes;
          break;
        case r'postalCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.postalCode = valueDes;
          break;
        case r'city':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.city = valueDes;
          break;
        case r'country':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.country = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PersonDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PersonDtoBuilder();
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

class PersonDtoUserTitleEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'Mr')
  static const PersonDtoUserTitleEnum mr = _$personDtoUserTitleEnum_mr;
  @BuiltValueEnumConst(wireName: r'Ms')
  static const PersonDtoUserTitleEnum ms = _$personDtoUserTitleEnum_ms;
  @BuiltValueEnumConst(wireName: r'Unknown')
  static const PersonDtoUserTitleEnum unknown = _$personDtoUserTitleEnum_unknown;

  static Serializer<PersonDtoUserTitleEnum> get serializer => _$personDtoUserTitleEnumSerializer;

  const PersonDtoUserTitleEnum._(String name): super(name);

  static BuiltSet<PersonDtoUserTitleEnum> get values => _$personDtoUserTitleEnumValues;
  static PersonDtoUserTitleEnum valueOf(String name) => _$personDtoUserTitleEnumValueOf(name);
}

