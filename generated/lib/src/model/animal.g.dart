// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'animal.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AnimalGenderEnum _$animalGenderEnum_male =
    const AnimalGenderEnum._('male');
const AnimalGenderEnum _$animalGenderEnum_female =
    const AnimalGenderEnum._('female');
const AnimalGenderEnum _$animalGenderEnum_unknown =
    const AnimalGenderEnum._('unknown');

AnimalGenderEnum _$animalGenderEnumValueOf(String name) {
  switch (name) {
    case 'male':
      return _$animalGenderEnum_male;
    case 'female':
      return _$animalGenderEnum_female;
    case 'unknown':
      return _$animalGenderEnum_unknown;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<AnimalGenderEnum> _$animalGenderEnumValues =
    new BuiltSet<AnimalGenderEnum>(const <AnimalGenderEnum>[
  _$animalGenderEnum_male,
  _$animalGenderEnum_female,
  _$animalGenderEnum_unknown,
]);

Serializer<AnimalGenderEnum> _$animalGenderEnumSerializer =
    new _$AnimalGenderEnumSerializer();

class _$AnimalGenderEnumSerializer
    implements PrimitiveSerializer<AnimalGenderEnum> {
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
  final Iterable<Type> types = const <Type>[AnimalGenderEnum];
  @override
  final String wireName = 'AnimalGenderEnum';

  @override
  Object serialize(Serializers serializers, AnimalGenderEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  AnimalGenderEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      AnimalGenderEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$Animal extends Animal {
  @override
  final String? id;
  @override
  final String name;
  @override
  final String breed;
  @override
  final String type;
  @override
  final AnimalGenderEnum gender;
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
  final DateTime lastRegistration;

  factory _$Animal([void Function(AnimalBuilder)? updates]) =>
      (new AnimalBuilder()..update(updates))._build();

  _$Animal._(
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
      required this.lastRegistration})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(name, r'Animal', 'name');
    BuiltValueNullFieldError.checkNotNull(breed, r'Animal', 'breed');
    BuiltValueNullFieldError.checkNotNull(type, r'Animal', 'type');
    BuiltValueNullFieldError.checkNotNull(gender, r'Animal', 'gender');
    BuiltValueNullFieldError.checkNotNull(color, r'Animal', 'color');
    BuiltValueNullFieldError.checkNotNull(length, r'Animal', 'length');
    BuiltValueNullFieldError.checkNotNull(weight, r'Animal', 'weight');
    BuiltValueNullFieldError.checkNotNull(symptoms, r'Animal', 'symptoms');
    BuiltValueNullFieldError.checkNotNull(birthdate, r'Animal', 'birthdate');
    BuiltValueNullFieldError.checkNotNull(
        animalOwners, r'Animal', 'animalOwners');
    BuiltValueNullFieldError.checkNotNull(
        lastRegistration, r'Animal', 'lastRegistration');
  }

  @override
  Animal rebuild(void Function(AnimalBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AnimalBuilder toBuilder() => new AnimalBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Animal &&
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
        lastRegistration == other.lastRegistration;
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
    _$hash = $jc(_$hash, lastRegistration.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Animal')
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
          ..add('lastRegistration', lastRegistration))
        .toString();
  }
}

class AnimalBuilder implements Builder<Animal, AnimalBuilder> {
  _$Animal? _$v;

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

  AnimalGenderEnum? _gender;
  AnimalGenderEnum? get gender => _$this._gender;
  set gender(AnimalGenderEnum? gender) => _$this._gender = gender;

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

  DateTime? _lastRegistration;
  DateTime? get lastRegistration => _$this._lastRegistration;
  set lastRegistration(DateTime? lastRegistration) =>
      _$this._lastRegistration = lastRegistration;

  AnimalBuilder() {
    Animal._defaults(this);
  }

  AnimalBuilder get _$this {
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
      _lastRegistration = $v.lastRegistration;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Animal other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Animal;
  }

  @override
  void update(void Function(AnimalBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Animal build() => _build();

  _$Animal _build() {
    _$Animal _$result;
    try {
      _$result = _$v ??
          new _$Animal._(
              id: id,
              name: BuiltValueNullFieldError.checkNotNull(
                  name, r'Animal', 'name'),
              breed: BuiltValueNullFieldError.checkNotNull(
                  breed, r'Animal', 'breed'),
              type: BuiltValueNullFieldError.checkNotNull(
                  type, r'Animal', 'type'),
              gender: BuiltValueNullFieldError.checkNotNull(
                  gender, r'Animal', 'gender'),
              color: BuiltValueNullFieldError.checkNotNull(
                  color, r'Animal', 'color'),
              length: BuiltValueNullFieldError.checkNotNull(
                  length, r'Animal', 'length'),
              weight: BuiltValueNullFieldError.checkNotNull(
                  weight, r'Animal', 'weight'),
              symptoms: BuiltValueNullFieldError.checkNotNull(
                  symptoms, r'Animal', 'symptoms'),
              birthdate: BuiltValueNullFieldError.checkNotNull(
                  birthdate, r'Animal', 'birthdate'),
              animalOwners: animalOwners.build(),
              lastRegistration: BuiltValueNullFieldError.checkNotNull(
                  lastRegistration, r'Animal', 'lastRegistration'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'animalOwners';
        animalOwners.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Animal', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
