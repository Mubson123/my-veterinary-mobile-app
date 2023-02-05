// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_media.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ResponseMedia extends ResponseMedia {
  @override
  final String? id;
  @override
  final String? title;
  @override
  final String? url;
  @override
  final String? type;
  @override
  final int? size;

  factory _$ResponseMedia([void Function(ResponseMediaBuilder)? updates]) =>
      (new ResponseMediaBuilder()..update(updates))._build();

  _$ResponseMedia._({this.id, this.title, this.url, this.type, this.size})
      : super._();

  @override
  ResponseMedia rebuild(void Function(ResponseMediaBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ResponseMediaBuilder toBuilder() => new ResponseMediaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ResponseMedia &&
        id == other.id &&
        title == other.title &&
        url == other.url &&
        type == other.type &&
        size == other.size;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, size.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ResponseMedia')
          ..add('id', id)
          ..add('title', title)
          ..add('url', url)
          ..add('type', type)
          ..add('size', size))
        .toString();
  }
}

class ResponseMediaBuilder
    implements Builder<ResponseMedia, ResponseMediaBuilder> {
  _$ResponseMedia? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  int? _size;
  int? get size => _$this._size;
  set size(int? size) => _$this._size = size;

  ResponseMediaBuilder() {
    ResponseMedia._defaults(this);
  }

  ResponseMediaBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _title = $v.title;
      _url = $v.url;
      _type = $v.type;
      _size = $v.size;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ResponseMedia other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ResponseMedia;
  }

  @override
  void update(void Function(ResponseMediaBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ResponseMedia build() => _build();

  _$ResponseMedia _build() {
    final _$result = _$v ??
        new _$ResponseMedia._(
            id: id, title: title, url: url, type: type, size: size);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
