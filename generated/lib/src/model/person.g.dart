// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PersonUserTitleEnum _$personUserTitleEnum_mr =
    const PersonUserTitleEnum._('mr');
const PersonUserTitleEnum _$personUserTitleEnum_ms =
    const PersonUserTitleEnum._('ms');
const PersonUserTitleEnum _$personUserTitleEnum_unknown =
    const PersonUserTitleEnum._('unknown');

PersonUserTitleEnum _$personUserTitleEnumValueOf(String name) {
  switch (name) {
    case 'mr':
      return _$personUserTitleEnum_mr;
    case 'ms':
      return _$personUserTitleEnum_ms;
    case 'unknown':
      return _$personUserTitleEnum_unknown;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<PersonUserTitleEnum> _$personUserTitleEnumValues =
    new BuiltSet<PersonUserTitleEnum>(const <PersonUserTitleEnum>[
  _$personUserTitleEnum_mr,
  _$personUserTitleEnum_ms,
  _$personUserTitleEnum_unknown,
]);

Serializer<PersonUserTitleEnum> _$personUserTitleEnumSerializer =
    new _$PersonUserTitleEnumSerializer();

class _$PersonUserTitleEnumSerializer
    implements PrimitiveSerializer<PersonUserTitleEnum> {
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
  final Iterable<Type> types = const <Type>[PersonUserTitleEnum];
  @override
  final String wireName = 'PersonUserTitleEnum';

  @override
  Object serialize(Serializers serializers, PersonUserTitleEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  PersonUserTitleEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      PersonUserTitleEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$Person extends Person {
  @override
  final String? id;
  @override
  final PersonUserTitleEnum userTitle;
  @override
  final String lastname;
  @override
  final String firstname;
  @override
  final Date birthdate;
  @override
  final String phoneNumber;
  @override
  final String email;
  @override
  final Address address;

  factory _$Person([void Function(PersonBuilder)? updates]) =>
      (new PersonBuilder()..update(updates))._build();

  _$Person._(
      {this.id,
      required this.userTitle,
      required this.lastname,
      required this.firstname,
      required this.birthdate,
      required this.phoneNumber,
      required this.email,
      required this.address})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(userTitle, r'Person', 'userTitle');
    BuiltValueNullFieldError.checkNotNull(lastname, r'Person', 'lastname');
    BuiltValueNullFieldError.checkNotNull(firstname, r'Person', 'firstname');
    BuiltValueNullFieldError.checkNotNull(birthdate, r'Person', 'birthdate');
    BuiltValueNullFieldError.checkNotNull(
        phoneNumber, r'Person', 'phoneNumber');
    BuiltValueNullFieldError.checkNotNull(email, r'Person', 'email');
    BuiltValueNullFieldError.checkNotNull(address, r'Person', 'address');
  }

  @override
  Person rebuild(void Function(PersonBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PersonBuilder toBuilder() => new PersonBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Person &&
        id == other.id &&
        userTitle == other.userTitle &&
        lastname == other.lastname &&
        firstname == other.firstname &&
        birthdate == other.birthdate &&
        phoneNumber == other.phoneNumber &&
        email == other.email &&
        address == other.address;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, userTitle.hashCode);
    _$hash = $jc(_$hash, lastname.hashCode);
    _$hash = $jc(_$hash, firstname.hashCode);
    _$hash = $jc(_$hash, birthdate.hashCode);
    _$hash = $jc(_$hash, phoneNumber.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, address.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Person')
          ..add('id', id)
          ..add('userTitle', userTitle)
          ..add('lastname', lastname)
          ..add('firstname', firstname)
          ..add('birthdate', birthdate)
          ..add('phoneNumber', phoneNumber)
          ..add('email', email)
          ..add('address', address))
        .toString();
  }
}

class PersonBuilder implements Builder<Person, PersonBuilder> {
  _$Person? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  PersonUserTitleEnum? _userTitle;
  PersonUserTitleEnum? get userTitle => _$this._userTitle;
  set userTitle(PersonUserTitleEnum? userTitle) =>
      _$this._userTitle = userTitle;

  String? _lastname;
  String? get lastname => _$this._lastname;
  set lastname(String? lastname) => _$this._lastname = lastname;

  String? _firstname;
  String? get firstname => _$this._firstname;
  set firstname(String? firstname) => _$this._firstname = firstname;

  Date? _birthdate;
  Date? get birthdate => _$this._birthdate;
  set birthdate(Date? birthdate) => _$this._birthdate = birthdate;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  AddressBuilder? _address;
  AddressBuilder get address => _$this._address ??= new AddressBuilder();
  set address(AddressBuilder? address) => _$this._address = address;

  PersonBuilder() {
    Person._defaults(this);
  }

  PersonBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _userTitle = $v.userTitle;
      _lastname = $v.lastname;
      _firstname = $v.firstname;
      _birthdate = $v.birthdate;
      _phoneNumber = $v.phoneNumber;
      _email = $v.email;
      _address = $v.address.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Person other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Person;
  }

  @override
  void update(void Function(PersonBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Person build() => _build();

  _$Person _build() {
    _$Person _$result;
    try {
      _$result = _$v ??
          new _$Person._(
              id: id,
              userTitle: BuiltValueNullFieldError.checkNotNull(
                  userTitle, r'Person', 'userTitle'),
              lastname: BuiltValueNullFieldError.checkNotNull(
                  lastname, r'Person', 'lastname'),
              firstname: BuiltValueNullFieldError.checkNotNull(
                  firstname, r'Person', 'firstname'),
              birthdate: BuiltValueNullFieldError.checkNotNull(
                  birthdate, r'Person', 'birthdate'),
              phoneNumber: BuiltValueNullFieldError.checkNotNull(
                  phoneNumber, r'Person', 'phoneNumber'),
              email: BuiltValueNullFieldError.checkNotNull(
                  email, r'Person', 'email'),
              address: address.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'address';
        address.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Person', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
