// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_person.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ResponsePersonUserTitleEnum _$responsePersonUserTitleEnum_mr =
    const ResponsePersonUserTitleEnum._('mr');
const ResponsePersonUserTitleEnum _$responsePersonUserTitleEnum_ms =
    const ResponsePersonUserTitleEnum._('ms');
const ResponsePersonUserTitleEnum _$responsePersonUserTitleEnum_unknown =
    const ResponsePersonUserTitleEnum._('unknown');

ResponsePersonUserTitleEnum _$responsePersonUserTitleEnumValueOf(String name) {
  switch (name) {
    case 'mr':
      return _$responsePersonUserTitleEnum_mr;
    case 'ms':
      return _$responsePersonUserTitleEnum_ms;
    case 'unknown':
      return _$responsePersonUserTitleEnum_unknown;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<ResponsePersonUserTitleEnum>
    _$responsePersonUserTitleEnumValues = new BuiltSet<
        ResponsePersonUserTitleEnum>(const <ResponsePersonUserTitleEnum>[
  _$responsePersonUserTitleEnum_mr,
  _$responsePersonUserTitleEnum_ms,
  _$responsePersonUserTitleEnum_unknown,
]);

Serializer<ResponsePersonUserTitleEnum>
    _$responsePersonUserTitleEnumSerializer =
    new _$ResponsePersonUserTitleEnumSerializer();

class _$ResponsePersonUserTitleEnumSerializer
    implements PrimitiveSerializer<ResponsePersonUserTitleEnum> {
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
  final Iterable<Type> types = const <Type>[ResponsePersonUserTitleEnum];
  @override
  final String wireName = 'ResponsePersonUserTitleEnum';

  @override
  Object serialize(Serializers serializers, ResponsePersonUserTitleEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ResponsePersonUserTitleEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ResponsePersonUserTitleEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ResponsePerson extends ResponsePerson {
  @override
  final String? id;
  @override
  final ResponsePersonUserTitleEnum? userTitle;
  @override
  final String? lastname;
  @override
  final String? firstname;
  @override
  final Date? birthdate;
  @override
  final String? phoneNumber;
  @override
  final String? email;
  @override
  final Address? address;
  @override
  final BuiltSet<Animal>? animalSet;
  @override
  final BuiltSet<ResponseMedia>? responseMedia;

  factory _$ResponsePerson([void Function(ResponsePersonBuilder)? updates]) =>
      (new ResponsePersonBuilder()..update(updates))._build();

  _$ResponsePerson._(
      {this.id,
      this.userTitle,
      this.lastname,
      this.firstname,
      this.birthdate,
      this.phoneNumber,
      this.email,
      this.address,
      this.animalSet,
      this.responseMedia})
      : super._();

  @override
  ResponsePerson rebuild(void Function(ResponsePersonBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ResponsePersonBuilder toBuilder() =>
      new ResponsePersonBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ResponsePerson &&
        id == other.id &&
        userTitle == other.userTitle &&
        lastname == other.lastname &&
        firstname == other.firstname &&
        birthdate == other.birthdate &&
        phoneNumber == other.phoneNumber &&
        email == other.email &&
        address == other.address &&
        animalSet == other.animalSet &&
        responseMedia == other.responseMedia;
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
    _$hash = $jc(_$hash, animalSet.hashCode);
    _$hash = $jc(_$hash, responseMedia.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ResponsePerson')
          ..add('id', id)
          ..add('userTitle', userTitle)
          ..add('lastname', lastname)
          ..add('firstname', firstname)
          ..add('birthdate', birthdate)
          ..add('phoneNumber', phoneNumber)
          ..add('email', email)
          ..add('address', address)
          ..add('animalSet', animalSet)
          ..add('responseMedia', responseMedia))
        .toString();
  }
}

class ResponsePersonBuilder
    implements Builder<ResponsePerson, ResponsePersonBuilder> {
  _$ResponsePerson? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  ResponsePersonUserTitleEnum? _userTitle;
  ResponsePersonUserTitleEnum? get userTitle => _$this._userTitle;
  set userTitle(ResponsePersonUserTitleEnum? userTitle) =>
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

  SetBuilder<Animal>? _animalSet;
  SetBuilder<Animal> get animalSet =>
      _$this._animalSet ??= new SetBuilder<Animal>();
  set animalSet(SetBuilder<Animal>? animalSet) => _$this._animalSet = animalSet;

  SetBuilder<ResponseMedia>? _responseMedia;
  SetBuilder<ResponseMedia> get responseMedia =>
      _$this._responseMedia ??= new SetBuilder<ResponseMedia>();
  set responseMedia(SetBuilder<ResponseMedia>? responseMedia) =>
      _$this._responseMedia = responseMedia;

  ResponsePersonBuilder() {
    ResponsePerson._defaults(this);
  }

  ResponsePersonBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _userTitle = $v.userTitle;
      _lastname = $v.lastname;
      _firstname = $v.firstname;
      _birthdate = $v.birthdate;
      _phoneNumber = $v.phoneNumber;
      _email = $v.email;
      _address = $v.address?.toBuilder();
      _animalSet = $v.animalSet?.toBuilder();
      _responseMedia = $v.responseMedia?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ResponsePerson other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ResponsePerson;
  }

  @override
  void update(void Function(ResponsePersonBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ResponsePerson build() => _build();

  _$ResponsePerson _build() {
    _$ResponsePerson _$result;
    try {
      _$result = _$v ??
          new _$ResponsePerson._(
              id: id,
              userTitle: userTitle,
              lastname: lastname,
              firstname: firstname,
              birthdate: birthdate,
              phoneNumber: phoneNumber,
              email: email,
              address: _address?.build(),
              animalSet: _animalSet?.build(),
              responseMedia: _responseMedia?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'address';
        _address?.build();
        _$failedField = 'animalSet';
        _animalSet?.build();
        _$failedField = 'responseMedia';
        _responseMedia?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ResponsePerson', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
