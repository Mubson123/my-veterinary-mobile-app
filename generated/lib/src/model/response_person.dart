//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/response_media.dart';
import 'package:openapi/src/model/address.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/animal.dart';
import 'package:openapi/src/model/date.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'response_person.g.dart';

/// ResponsePerson
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
/// * [animalSet] 
/// * [responseMedia] 
@BuiltValue()
abstract class ResponsePerson implements Built<ResponsePerson, ResponsePersonBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'userTitle')
  ResponsePersonUserTitleEnum? get userTitle;
  // enum userTitleEnum {  Mr,  Ms,  Unknown,  };

  @BuiltValueField(wireName: r'lastname')
  String? get lastname;

  @BuiltValueField(wireName: r'firstname')
  String? get firstname;

  @BuiltValueField(wireName: r'birthdate')
  Date? get birthdate;

  @BuiltValueField(wireName: r'phoneNumber')
  String? get phoneNumber;

  @BuiltValueField(wireName: r'email')
  String? get email;

  @BuiltValueField(wireName: r'address')
  Address? get address;

  @BuiltValueField(wireName: r'animalSet')
  BuiltSet<Animal>? get animalSet;

  @BuiltValueField(wireName: r'responseMedia')
  BuiltSet<ResponseMedia>? get responseMedia;

  ResponsePerson._();

  factory ResponsePerson([void updates(ResponsePersonBuilder b)]) = _$ResponsePerson;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ResponsePersonBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ResponsePerson> get serializer => _$ResponsePersonSerializer();
}

class _$ResponsePersonSerializer implements PrimitiveSerializer<ResponsePerson> {
  @override
  final Iterable<Type> types = const [ResponsePerson, _$ResponsePerson];

  @override
  final String wireName = r'ResponsePerson';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ResponsePerson object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.userTitle != null) {
      yield r'userTitle';
      yield serializers.serialize(
        object.userTitle,
        specifiedType: const FullType(ResponsePersonUserTitleEnum),
      );
    }
    if (object.lastname != null) {
      yield r'lastname';
      yield serializers.serialize(
        object.lastname,
        specifiedType: const FullType(String),
      );
    }
    if (object.firstname != null) {
      yield r'firstname';
      yield serializers.serialize(
        object.firstname,
        specifiedType: const FullType(String),
      );
    }
    if (object.birthdate != null) {
      yield r'birthdate';
      yield serializers.serialize(
        object.birthdate,
        specifiedType: const FullType(Date),
      );
    }
    if (object.phoneNumber != null) {
      yield r'phoneNumber';
      yield serializers.serialize(
        object.phoneNumber,
        specifiedType: const FullType(String),
      );
    }
    if (object.email != null) {
      yield r'email';
      yield serializers.serialize(
        object.email,
        specifiedType: const FullType(String),
      );
    }
    if (object.address != null) {
      yield r'address';
      yield serializers.serialize(
        object.address,
        specifiedType: const FullType(Address),
      );
    }
    if (object.animalSet != null) {
      yield r'animalSet';
      yield serializers.serialize(
        object.animalSet,
        specifiedType: const FullType(BuiltSet, [FullType(Animal)]),
      );
    }
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
    ResponsePerson object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ResponsePersonBuilder result,
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
            specifiedType: const FullType(ResponsePersonUserTitleEnum),
          ) as ResponsePersonUserTitleEnum;
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
        case r'animalSet':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltSet, [FullType(Animal)]),
          ) as BuiltSet<Animal>;
          result.animalSet.replace(valueDes);
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
  ResponsePerson deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ResponsePersonBuilder();
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

class ResponsePersonUserTitleEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'Mr')
  static const ResponsePersonUserTitleEnum mr = _$responsePersonUserTitleEnum_mr;
  @BuiltValueEnumConst(wireName: r'Ms')
  static const ResponsePersonUserTitleEnum ms = _$responsePersonUserTitleEnum_ms;
  @BuiltValueEnumConst(wireName: r'Unknown')
  static const ResponsePersonUserTitleEnum unknown = _$responsePersonUserTitleEnum_unknown;

  static Serializer<ResponsePersonUserTitleEnum> get serializer => _$responsePersonUserTitleEnumSerializer;

  const ResponsePersonUserTitleEnum._(String name): super(name);

  static BuiltSet<ResponsePersonUserTitleEnum> get values => _$responsePersonUserTitleEnumValues;
  static ResponsePersonUserTitleEnum valueOf(String name) => _$responsePersonUserTitleEnumValueOf(name);
}

