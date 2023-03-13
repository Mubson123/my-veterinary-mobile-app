//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/address.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/date.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'person.g.dart';

/// Person
///
/// Properties:
/// * [id] 
/// * [userTitle] 
/// * [lastname] 
/// * [firstname] 
/// * [birthdate] 
/// * [phoneNumber] 
/// * [email] 
/// * [address] 
@BuiltValue()
abstract class Person implements Built<Person, PersonBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'userTitle')
  PersonUserTitleEnum get userTitle;
  // enum userTitleEnum {  Mr,  Ms,  Unknown,  };

  @BuiltValueField(wireName: r'lastname')
  String get lastname;

  @BuiltValueField(wireName: r'firstname')
  String get firstname;

  @BuiltValueField(wireName: r'birthdate')
  Date get birthdate;

  @BuiltValueField(wireName: r'phoneNumber')
  String get phoneNumber;

  @BuiltValueField(wireName: r'email')
  String get email;

  @BuiltValueField(wireName: r'address')
  Address get address;

  Person._();

  factory Person([void updates(PersonBuilder b)]) = _$Person;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PersonBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Person> get serializer => _$PersonSerializer();
}

class _$PersonSerializer implements PrimitiveSerializer<Person> {
  @override
  final Iterable<Type> types = const [Person, _$Person];

  @override
  final String wireName = r'Person';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Person object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    yield r'userTitle';
    yield serializers.serialize(
      object.userTitle,
      specifiedType: const FullType(PersonUserTitleEnum),
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
    yield r'birthdate';
    yield serializers.serialize(
      object.birthdate,
      specifiedType: const FullType(Date),
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
    yield r'address';
    yield serializers.serialize(
      object.address,
      specifiedType: const FullType(Address),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    Person object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PersonBuilder result,
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
        case r'userTitle':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PersonUserTitleEnum),
          ) as PersonUserTitleEnum;
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
        case r'birthdate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Date),
          ) as Date;
          result.birthdate = valueDes;
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
        case r'address':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Address),
          ) as Address;
          result.address.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Person deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PersonBuilder();
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

class PersonUserTitleEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'Mr')
  static const PersonUserTitleEnum mr = _$personUserTitleEnum_mr;
  @BuiltValueEnumConst(wireName: r'Ms')
  static const PersonUserTitleEnum ms = _$personUserTitleEnum_ms;
  @BuiltValueEnumConst(wireName: r'Unknown')
  static const PersonUserTitleEnum unknown = _$personUserTitleEnum_unknown;

  static Serializer<PersonUserTitleEnum> get serializer => _$personUserTitleEnumSerializer;

  const PersonUserTitleEnum._(String name): super(name);

  static BuiltSet<PersonUserTitleEnum> get values => _$personUserTitleEnumValues;
  static PersonUserTitleEnum valueOf(String name) => _$personUserTitleEnumValueOf(name);
}

