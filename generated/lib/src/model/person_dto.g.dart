// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PersonDtoUserTitleEnum _$personDtoUserTitleEnum_mr =
    const PersonDtoUserTitleEnum._('mr');
const PersonDtoUserTitleEnum _$personDtoUserTitleEnum_ms =
    const PersonDtoUserTitleEnum._('ms');
const PersonDtoUserTitleEnum _$personDtoUserTitleEnum_unknown =
    const PersonDtoUserTitleEnum._('unknown');

PersonDtoUserTitleEnum _$personDtoUserTitleEnumValueOf(String name) {
  switch (name) {
    case 'mr':
      return _$personDtoUserTitleEnum_mr;
    case 'ms':
      return _$personDtoUserTitleEnum_ms;
    case 'unknown':
      return _$personDtoUserTitleEnum_unknown;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<PersonDtoUserTitleEnum> _$personDtoUserTitleEnumValues =
    new BuiltSet<PersonDtoUserTitleEnum>(const <PersonDtoUserTitleEnum>[
  _$personDtoUserTitleEnum_mr,
  _$personDtoUserTitleEnum_ms,
  _$personDtoUserTitleEnum_unknown,
]);

Serializer<PersonDtoUserTitleEnum> _$personDtoUserTitleEnumSerializer =
    new _$PersonDtoUserTitleEnumSerializer();

class _$PersonDtoUserTitleEnumSerializer
    implements PrimitiveSerializer<PersonDtoUserTitleEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'mr': 'Mr',
    'ms': 'Ms',
    'unknown': 'Unknown',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'Mr': 'mr',
    'Ms': 'ms',
    'Unknown': 'unknown',
  };

  @override
  final Iterable<Type> types = const <Type>[PersonDtoUserTitleEnum];
  @override
  final String wireName = 'PersonDtoUserTitleEnum';

  @override
  Object serialize(Serializers serializers, PersonDtoUserTitleEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  PersonDtoUserTitleEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      PersonDtoUserTitleEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$PersonDto extends PersonDto {
  @override
  final PersonDtoUserTitleEnum userTitle;
  @override
  final String lastname;
  @override
  final String firstname;
  @override
  final int birthDay;
  @override
  final int birthMonth;
  @override
  final int birthYear;
  @override
  final String phoneNumber;
  @override
  final String email;
  @override
  final String streetAndHouseNumber;
  @override
  final int postalCode;
  @override
  final String city;
  @override
  final String country;

  factory _$PersonDto([void Function(PersonDtoBuilder)? updates]) =>
      (new PersonDtoBuilder()..update(updates))._build();

  _$PersonDto._(
      {required this.userTitle,
      required this.lastname,
      required this.firstname,
      required this.birthDay,
      required this.birthMonth,
      required this.birthYear,
      required this.phoneNumber,
      required this.email,
      required this.streetAndHouseNumber,
      required this.postalCode,
      required this.city,
      required this.country})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(userTitle, r'PersonDto', 'userTitle');
    BuiltValueNullFieldError.checkNotNull(lastname, r'PersonDto', 'lastname');
    BuiltValueNullFieldError.checkNotNull(firstname, r'PersonDto', 'firstname');
    BuiltValueNullFieldError.checkNotNull(birthDay, r'PersonDto', 'birthDay');
    BuiltValueNullFieldError.checkNotNull(
        birthMonth, r'PersonDto', 'birthMonth');
    BuiltValueNullFieldError.checkNotNull(birthYear, r'PersonDto', 'birthYear');
    BuiltValueNullFieldError.checkNotNull(
        phoneNumber, r'PersonDto', 'phoneNumber');
    BuiltValueNullFieldError.checkNotNull(email, r'PersonDto', 'email');
    BuiltValueNullFieldError.checkNotNull(
        streetAndHouseNumber, r'PersonDto', 'streetAndHouseNumber');
    BuiltValueNullFieldError.checkNotNull(
        postalCode, r'PersonDto', 'postalCode');
    BuiltValueNullFieldError.checkNotNull(city, r'PersonDto', 'city');
    BuiltValueNullFieldError.checkNotNull(country, r'PersonDto', 'country');
  }

  @override
  PersonDto rebuild(void Function(PersonDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PersonDtoBuilder toBuilder() => new PersonDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PersonDto &&
        userTitle == other.userTitle &&
        lastname == other.lastname &&
        firstname == other.firstname &&
        birthDay == other.birthDay &&
        birthMonth == other.birthMonth &&
        birthYear == other.birthYear &&
        phoneNumber == other.phoneNumber &&
        email == other.email &&
        streetAndHouseNumber == other.streetAndHouseNumber &&
        postalCode == other.postalCode &&
        city == other.city &&
        country == other.country;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, userTitle.hashCode);
    _$hash = $jc(_$hash, lastname.hashCode);
    _$hash = $jc(_$hash, firstname.hashCode);
    _$hash = $jc(_$hash, birthDay.hashCode);
    _$hash = $jc(_$hash, birthMonth.hashCode);
    _$hash = $jc(_$hash, birthYear.hashCode);
    _$hash = $jc(_$hash, phoneNumber.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, streetAndHouseNumber.hashCode);
    _$hash = $jc(_$hash, postalCode.hashCode);
    _$hash = $jc(_$hash, city.hashCode);
    _$hash = $jc(_$hash, country.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PersonDto')
          ..add('userTitle', userTitle)
          ..add('lastname', lastname)
          ..add('firstname', firstname)
          ..add('birthDay', birthDay)
          ..add('birthMonth', birthMonth)
          ..add('birthYear', birthYear)
          ..add('phoneNumber', phoneNumber)
          ..add('email', email)
          ..add('streetAndHouseNumber', streetAndHouseNumber)
          ..add('postalCode', postalCode)
          ..add('city', city)
          ..add('country', country))
        .toString();
  }
}

class PersonDtoBuilder implements Builder<PersonDto, PersonDtoBuilder> {
  _$PersonDto? _$v;

  PersonDtoUserTitleEnum? _userTitle;
  PersonDtoUserTitleEnum? get userTitle => _$this._userTitle;
  set userTitle(PersonDtoUserTitleEnum? userTitle) =>
      _$this._userTitle = userTitle;

  String? _lastname;
  String? get lastname => _$this._lastname;
  set lastname(String? lastname) => _$this._lastname = lastname;

  String? _firstname;
  String? get firstname => _$this._firstname;
  set firstname(String? firstname) => _$this._firstname = firstname;

  int? _birthDay;
  int? get birthDay => _$this._birthDay;
  set birthDay(int? birthDay) => _$this._birthDay = birthDay;

  int? _birthMonth;
  int? get birthMonth => _$this._birthMonth;
  set birthMonth(int? birthMonth) => _$this._birthMonth = birthMonth;

  int? _birthYear;
  int? get birthYear => _$this._birthYear;
  set birthYear(int? birthYear) => _$this._birthYear = birthYear;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _streetAndHouseNumber;
  String? get streetAndHouseNumber => _$this._streetAndHouseNumber;
  set streetAndHouseNumber(String? streetAndHouseNumber) =>
      _$this._streetAndHouseNumber = streetAndHouseNumber;

  int? _postalCode;
  int? get postalCode => _$this._postalCode;
  set postalCode(int? postalCode) => _$this._postalCode = postalCode;

  String? _city;
  String? get city => _$this._city;
  set city(String? city) => _$this._city = city;

  String? _country;
  String? get country => _$this._country;
  set country(String? country) => _$this._country = country;

  PersonDtoBuilder() {
    PersonDto._defaults(this);
  }

  PersonDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userTitle = $v.userTitle;
      _lastname = $v.lastname;
      _firstname = $v.firstname;
      _birthDay = $v.birthDay;
      _birthMonth = $v.birthMonth;
      _birthYear = $v.birthYear;
      _phoneNumber = $v.phoneNumber;
      _email = $v.email;
      _streetAndHouseNumber = $v.streetAndHouseNumber;
      _postalCode = $v.postalCode;
      _city = $v.city;
      _country = $v.country;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PersonDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PersonDto;
  }

  @override
  void update(void Function(PersonDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PersonDto build() => _build();

  _$PersonDto _build() {
    final _$result = _$v ??
        new _$PersonDto._(
            userTitle: BuiltValueNullFieldError.checkNotNull(
                userTitle, r'PersonDto', 'userTitle'),
            lastname: BuiltValueNullFieldError.checkNotNull(
                lastname, r'PersonDto', 'lastname'),
            firstname: BuiltValueNullFieldError.checkNotNull(
                firstname, r'PersonDto', 'firstname'),
            birthDay: BuiltValueNullFieldError.checkNotNull(
                birthDay, r'PersonDto', 'birthDay'),
            birthMonth: BuiltValueNullFieldError.checkNotNull(
                birthMonth, r'PersonDto', 'birthMonth'),
            birthYear: BuiltValueNullFieldError.checkNotNull(
                birthYear, r'PersonDto', 'birthYear'),
            phoneNumber: BuiltValueNullFieldError.checkNotNull(
                phoneNumber, r'PersonDto', 'phoneNumber'),
            email: BuiltValueNullFieldError.checkNotNull(
                email, r'PersonDto', 'email'),
            streetAndHouseNumber: BuiltValueNullFieldError.checkNotNull(
                streetAndHouseNumber, r'PersonDto', 'streetAndHouseNumber'),
            postalCode: BuiltValueNullFieldError.checkNotNull(
                postalCode, r'PersonDto', 'postalCode'),
            city: BuiltValueNullFieldError.checkNotNull(city, r'PersonDto', 'city'),
            country: BuiltValueNullFieldError.checkNotNull(country, r'PersonDto', 'country'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
