// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'animal_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AnimalDtoGenderEnum _$animalDtoGenderEnum_male =
    const AnimalDtoGenderEnum._('male');
const AnimalDtoGenderEnum _$animalDtoGenderEnum_female =
    const AnimalDtoGenderEnum._('female');
const AnimalDtoGenderEnum _$animalDtoGenderEnum_unknown =
    const AnimalDtoGenderEnum._('unknown');

AnimalDtoGenderEnum _$animalDtoGenderEnumValueOf(String name) {
  switch (name) {
    case 'male':
      return _$animalDtoGenderEnum_male;
    case 'female':
      return _$animalDtoGenderEnum_female;
    case 'unknown':
      return _$animalDtoGenderEnum_unknown;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<AnimalDtoGenderEnum> _$animalDtoGenderEnumValues =
    new BuiltSet<AnimalDtoGenderEnum>(const <AnimalDtoGenderEnum>[
  _$animalDtoGenderEnum_male,
  _$animalDtoGenderEnum_female,
  _$animalDtoGenderEnum_unknown,
]);

Serializer<AnimalDtoGenderEnum> _$animalDtoGenderEnumSerializer =
    new _$AnimalDtoGenderEnumSerializer();

class _$AnimalDtoGenderEnumSerializer
    implements PrimitiveSerializer<AnimalDtoGenderEnum> {
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
  final Iterable<Type> types = const <Type>[AnimalDtoGenderEnum];
  @override
  final String wireName = 'AnimalDtoGenderEnum';

  @override
  Object serialize(Serializers serializers, AnimalDtoGenderEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  AnimalDtoGenderEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      AnimalDtoGenderEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$AnimalDto extends AnimalDto {
  @override
  final String name;
  @override
  final String breed;
  @override
  final String type;
  @override
  final AnimalDtoGenderEnum gender;
  @override
  final String color;
  @override
  final double length;
  @override
  final double weight;
  @override
  final String symptoms;
  @override
  final int day;
  @override
  final int month;
  @override
  final int year;
  @override
  final BuiltList<String> animalOwnerEmails;

  factory _$AnimalDto([void Function(AnimalDtoBuilder)? updates]) =>
      (new AnimalDtoBuilder()..update(updates))._build();

  _$AnimalDto._(
      {required this.name,
      required this.breed,
      required this.type,
      required this.gender,
      required this.color,
      required this.length,
      required this.weight,
      required this.symptoms,
      required this.day,
      required this.month,
      required this.year,
      required this.animalOwnerEmails})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(name, r'AnimalDto', 'name');
    BuiltValueNullFieldError.checkNotNull(breed, r'AnimalDto', 'breed');
    BuiltValueNullFieldError.checkNotNull(type, r'AnimalDto', 'type');
    BuiltValueNullFieldError.checkNotNull(gender, r'AnimalDto', 'gender');
    BuiltValueNullFieldError.checkNotNull(color, r'AnimalDto', 'color');
    BuiltValueNullFieldError.checkNotNull(length, r'AnimalDto', 'length');
    BuiltValueNullFieldError.checkNotNull(weight, r'AnimalDto', 'weight');
    BuiltValueNullFieldError.checkNotNull(symptoms, r'AnimalDto', 'symptoms');
    BuiltValueNullFieldError.checkNotNull(day, r'AnimalDto', 'day');
    BuiltValueNullFieldError.checkNotNull(month, r'AnimalDto', 'month');
    BuiltValueNullFieldError.checkNotNull(year, r'AnimalDto', 'year');
    BuiltValueNullFieldError.checkNotNull(
        animalOwnerEmails, r'AnimalDto', 'animalOwnerEmails');
  }

  @override
  AnimalDto rebuild(void Function(AnimalDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AnimalDtoBuilder toBuilder() => new AnimalDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AnimalDto &&
        name == other.name &&
        breed == other.breed &&
        type == other.type &&
        gender == other.gender &&
        color == other.color &&
        length == other.length &&
        weight == other.weight &&
        symptoms == other.symptoms &&
        day == other.day &&
        month == other.month &&
        year == other.year &&
        animalOwnerEmails == other.animalOwnerEmails;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, breed.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, gender.hashCode);
    _$hash = $jc(_$hash, color.hashCode);
    _$hash = $jc(_$hash, length.hashCode);
    _$hash = $jc(_$hash, weight.hashCode);
    _$hash = $jc(_$hash, symptoms.hashCode);
    _$hash = $jc(_$hash, day.hashCode);
    _$hash = $jc(_$hash, month.hashCode);
    _$hash = $jc(_$hash, year.hashCode);
    _$hash = $jc(_$hash, animalOwnerEmails.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AnimalDto')
          ..add('name', name)
          ..add('breed', breed)
          ..add('type', type)
          ..add('gender', gender)
          ..add('color', color)
          ..add('length', length)
          ..add('weight', weight)
          ..add('symptoms', symptoms)
          ..add('day', day)
          ..add('month', month)
          ..add('year', year)
          ..add('animalOwnerEmails', animalOwnerEmails))
        .toString();
  }
}

class AnimalDtoBuilder implements Builder<AnimalDto, AnimalDtoBuilder> {
  _$AnimalDto? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _breed;
  String? get breed => _$this._breed;
  set breed(String? breed) => _$this._breed = breed;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  AnimalDtoGenderEnum? _gender;
  AnimalDtoGenderEnum? get gender => _$this._gender;
  set gender(AnimalDtoGenderEnum? gender) => _$this._gender = gender;

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

  int? _day;
  int? get day => _$this._day;
  set day(int? day) => _$this._day = day;

  int? _month;
  int? get month => _$this._month;
  set month(int? month) => _$this._month = month;

  int? _year;
  int? get year => _$this._year;
  set year(int? year) => _$this._year = year;

  ListBuilder<String>? _animalOwnerEmails;
  ListBuilder<String> get animalOwnerEmails =>
      _$this._animalOwnerEmails ??= new ListBuilder<String>();
  set animalOwnerEmails(ListBuilder<String>? animalOwnerEmails) =>
      _$this._animalOwnerEmails = animalOwnerEmails;

  AnimalDtoBuilder() {
    AnimalDto._defaults(this);
  }

  AnimalDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _breed = $v.breed;
      _type = $v.type;
      _gender = $v.gender;
      _color = $v.color;
      _length = $v.length;
      _weight = $v.weight;
      _symptoms = $v.symptoms;
      _day = $v.day;
      _month = $v.month;
      _year = $v.year;
      _animalOwnerEmails = $v.animalOwnerEmails.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AnimalDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AnimalDto;
  }

  @override
  void update(void Function(AnimalDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AnimalDto build() => _build();

  _$AnimalDto _build() {
    _$AnimalDto _$result;
    try {
      _$result = _$v ??
          new _$AnimalDto._(
              name: BuiltValueNullFieldError.checkNotNull(
                  name, r'AnimalDto', 'name'),
              breed: BuiltValueNullFieldError.checkNotNull(
                  breed, r'AnimalDto', 'breed'),
              type: BuiltValueNullFieldError.checkNotNull(
                  type, r'AnimalDto', 'type'),
              gender: BuiltValueNullFieldError.checkNotNull(
                  gender, r'AnimalDto', 'gender'),
              color: BuiltValueNullFieldError.checkNotNull(
                  color, r'AnimalDto', 'color'),
              length: BuiltValueNullFieldError.checkNotNull(
                  length, r'AnimalDto', 'length'),
              weight: BuiltValueNullFieldError.checkNotNull(
                  weight, r'AnimalDto', 'weight'),
              symptoms: BuiltValueNullFieldError.checkNotNull(
                  symptoms, r'AnimalDto', 'symptoms'),
              day: BuiltValueNullFieldError.checkNotNull(
                  day, r'AnimalDto', 'day'),
              month: BuiltValueNullFieldError.checkNotNull(
                  month, r'AnimalDto', 'month'),
              year: BuiltValueNullFieldError.checkNotNull(
                  year, r'AnimalDto', 'year'),
              animalOwnerEmails: animalOwnerEmails.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'animalOwnerEmails';
        animalOwnerEmails.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AnimalDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
