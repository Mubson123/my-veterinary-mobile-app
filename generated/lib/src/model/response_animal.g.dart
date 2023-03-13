// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_animal.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ResponseAnimalGenderEnum _$responseAnimalGenderEnum_male =
    const ResponseAnimalGenderEnum._('male');
const ResponseAnimalGenderEnum _$responseAnimalGenderEnum_female =
    const ResponseAnimalGenderEnum._('female');
const ResponseAnimalGenderEnum _$responseAnimalGenderEnum_unknown =
    const ResponseAnimalGenderEnum._('unknown');

ResponseAnimalGenderEnum _$responseAnimalGenderEnumValueOf(String name) {
  switch (name) {
    case 'male':
      return _$responseAnimalGenderEnum_male;
    case 'female':
      return _$responseAnimalGenderEnum_female;
    case 'unknown':
      return _$responseAnimalGenderEnum_unknown;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<ResponseAnimalGenderEnum> _$responseAnimalGenderEnumValues =
    new BuiltSet<ResponseAnimalGenderEnum>(const <ResponseAnimalGenderEnum>[
  _$responseAnimalGenderEnum_male,
  _$responseAnimalGenderEnum_female,
  _$responseAnimalGenderEnum_unknown,
]);

Serializer<ResponseAnimalGenderEnum> _$responseAnimalGenderEnumSerializer =
    new _$ResponseAnimalGenderEnumSerializer();

class _$ResponseAnimalGenderEnumSerializer
    implements PrimitiveSerializer<ResponseAnimalGenderEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'male': 'Male',
    'female': 'Female',
    'unknown': 'Unknown',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'Male': 'male',
    'Female': 'female',
    'Unknown': 'unknown',
  };

  @override
  final Iterable<Type> types = const <Type>[ResponseAnimalGenderEnum];
  @override
  final String wireName = 'ResponseAnimalGenderEnum';

  @override
  Object serialize(Serializers serializers, ResponseAnimalGenderEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ResponseAnimalGenderEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ResponseAnimalGenderEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ResponseAnimal extends ResponseAnimal {
  @override
  final String? id;
  @override
  final String name;
  @override
  final String breed;
  @override
  final String type;
  @override
  final ResponseAnimalGenderEnum gender;
  @override
  final String color;
  @override
  final double length;
  @override
  final double weight;
  @override
  final String symptoms;
  @override
  final Date birthdate;
  @override
  final BuiltSet<Person> animalOwners;
  @override
  final BuiltSet<ResponseMedia>? responseMedia;

  factory _$ResponseAnimal([void Function(ResponseAnimalBuilder)? updates]) =>
      (new ResponseAnimalBuilder()..update(updates))._build();

  _$ResponseAnimal._(
      {this.id,
      required this.name,
      required this.breed,
      required this.type,
      required this.gender,
      required this.color,
      required this.length,
      required this.weight,
      required this.symptoms,
      required this.birthdate,
      required this.animalOwners,
      this.responseMedia})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(name, r'ResponseAnimal', 'name');
    BuiltValueNullFieldError.checkNotNull(breed, r'ResponseAnimal', 'breed');
    BuiltValueNullFieldError.checkNotNull(type, r'ResponseAnimal', 'type');
    BuiltValueNullFieldError.checkNotNull(gender, r'ResponseAnimal', 'gender');
    BuiltValueNullFieldError.checkNotNull(color, r'ResponseAnimal', 'color');
    BuiltValueNullFieldError.checkNotNull(length, r'ResponseAnimal', 'length');
    BuiltValueNullFieldError.checkNotNull(weight, r'ResponseAnimal', 'weight');
    BuiltValueNullFieldError.checkNotNull(
        symptoms, r'ResponseAnimal', 'symptoms');
    BuiltValueNullFieldError.checkNotNull(
        birthdate, r'ResponseAnimal', 'birthdate');
    BuiltValueNullFieldError.checkNotNull(
        animalOwners, r'ResponseAnimal', 'animalOwners');
  }

  @override
  ResponseAnimal rebuild(void Function(ResponseAnimalBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ResponseAnimalBuilder toBuilder() =>
      new ResponseAnimalBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ResponseAnimal &&
        id == other.id &&
        name == other.name &&
        breed == other.breed &&
        type == other.type &&
        gender == other.gender &&
        color == other.color &&
        length == other.length &&
        weight == other.weight &&
        symptoms == other.symptoms &&
        birthdate == other.birthdate &&
        animalOwners == other.animalOwners &&
        responseMedia == other.responseMedia;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, breed.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, gender.hashCode);
    _$hash = $jc(_$hash, color.hashCode);
    _$hash = $jc(_$hash, length.hashCode);
    _$hash = $jc(_$hash, weight.hashCode);
    _$hash = $jc(_$hash, symptoms.hashCode);
    _$hash = $jc(_$hash, birthdate.hashCode);
    _$hash = $jc(_$hash, animalOwners.hashCode);
    _$hash = $jc(_$hash, responseMedia.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ResponseAnimal')
          ..add('id', id)
          ..add('name', name)
          ..add('breed', breed)
          ..add('type', type)
          ..add('gender', gender)
          ..add('color', color)
          ..add('length', length)
          ..add('weight', weight)
          ..add('symptoms', symptoms)
          ..add('birthdate', birthdate)
          ..add('animalOwners', animalOwners)
          ..add('responseMedia', responseMedia))
        .toString();
  }
}

class ResponseAnimalBuilder
    implements Builder<ResponseAnimal, ResponseAnimalBuilder> {
  _$ResponseAnimal? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _breed;
  String? get breed => _$this._breed;
  set breed(String? breed) => _$this._breed = breed;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  ResponseAnimalGenderEnum? _gender;
  ResponseAnimalGenderEnum? get gender => _$this._gender;
  set gender(ResponseAnimalGenderEnum? gender) => _$this._gender = gender;

  String? _color;
  String? get color => _$this._color;
  set color(String? color) => _$this._color = color;

  double? _length;
  double? get length => _$this._length;
  set length(double? length) => _$this._length = length;

  double? _weight;
  double? get weight => _$this._weight;
  set weight(double? weight) => _$this._weight = weight;

  String? _symptoms;
  String? get symptoms => _$this._symptoms;
  set symptoms(String? symptoms) => _$this._symptoms = symptoms;

  Date? _birthdate;
  Date? get birthdate => _$this._birthdate;
  set birthdate(Date? birthdate) => _$this._birthdate = birthdate;

  SetBuilder<Person>? _animalOwners;
  SetBuilder<Person> get animalOwners =>
      _$this._animalOwners ??= new SetBuilder<Person>();
  set animalOwners(SetBuilder<Person>? animalOwners) =>
      _$this._animalOwners = animalOwners;

  SetBuilder<ResponseMedia>? _responseMedia;
  SetBuilder<ResponseMedia> get responseMedia =>
      _$this._responseMedia ??= new SetBuilder<ResponseMedia>();
  set responseMedia(SetBuilder<ResponseMedia>? responseMedia) =>
      _$this._responseMedia = responseMedia;

  ResponseAnimalBuilder() {
    ResponseAnimal._defaults(this);
  }

  ResponseAnimalBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _breed = $v.breed;
      _type = $v.type;
      _gender = $v.gender;
      _color = $v.color;
      _length = $v.length;
      _weight = $v.weight;
      _symptoms = $v.symptoms;
      _birthdate = $v.birthdate;
      _animalOwners = $v.animalOwners.toBuilder();
      _responseMedia = $v.responseMedia?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ResponseAnimal other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ResponseAnimal;
  }

  @override
  void update(void Function(ResponseAnimalBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ResponseAnimal build() => _build();

  _$ResponseAnimal _build() {
    _$ResponseAnimal _$result;
    try {
      _$result = _$v ??
          new _$ResponseAnimal._(
              id: id,
              name: BuiltValueNullFieldError.checkNotNull(
                  name, r'ResponseAnimal', 'name'),
              breed: BuiltValueNullFieldError.checkNotNull(
                  breed, r'ResponseAnimal', 'breed'),
              type: BuiltValueNullFieldError.checkNotNull(
                  type, r'ResponseAnimal', 'type'),
              gender: BuiltValueNullFieldError.checkNotNull(
                  gender, r'ResponseAnimal', 'gender'),
              color: BuiltValueNullFieldError.checkNotNull(
                  color, r'ResponseAnimal', 'color'),
              length: BuiltValueNullFieldError.checkNotNull(
                  length, r'ResponseAnimal', 'length'),
              weight: BuiltValueNullFieldError.checkNotNull(
                  weight, r'ResponseAnimal', 'weight'),
              symptoms: BuiltValueNullFieldError.checkNotNull(
                  symptoms, r'ResponseAnimal', 'symptoms'),
              birthdate: BuiltValueNullFieldError.checkNotNull(
                  birthdate, r'ResponseAnimal', 'birthdate'),
              animalOwners: animalOwners.build(),
              responseMedia: _responseMedia?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'animalOwners';
        animalOwners.build();
        _$failedField = 'responseMedia';
        _responseMedia?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ResponseAnimal', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
