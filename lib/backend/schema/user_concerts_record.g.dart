// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_concerts_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UserConcertsRecord> _$userConcertsRecordSerializer =
    new _$UserConcertsRecordSerializer();

class _$UserConcertsRecordSerializer
    implements StructuredSerializer<UserConcertsRecord> {
  @override
  final Iterable<Type> types = const [UserConcertsRecord, _$UserConcertsRecord];
  @override
  final String wireName = 'UserConcertsRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, UserConcertsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.uid;
    if (value != null) {
      result
        ..add('uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.artist;
    if (value != null) {
      result
        ..add('artist')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.info;
    if (value != null) {
      result
        ..add('info')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.posterUrl;
    if (value != null) {
      result
        ..add('poster_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ticketUrl;
    if (value != null) {
      result
        ..add('ticket_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.date;
    if (value != null) {
      result
        ..add('date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.reference;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    return result;
  }

  @override
  UserConcertsRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UserConcertsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'artist':
          result.artist = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'info':
          result.info = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'poster_url':
          result.posterUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'ticket_url':
          result.ticketUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'Document__Reference__Field':
          result.reference = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
      }
    }

    return result.build();
  }
}

class _$UserConcertsRecord extends UserConcertsRecord {
  @override
  final String uid;
  @override
  final String artist;
  @override
  final String info;
  @override
  final String posterUrl;
  @override
  final String ticketUrl;
  @override
  final String date;
  @override
  final int id;
  @override
  final DocumentReference<Object> reference;

  factory _$UserConcertsRecord(
          [void Function(UserConcertsRecordBuilder) updates]) =>
      (new UserConcertsRecordBuilder()..update(updates)).build();

  _$UserConcertsRecord._(
      {this.uid,
      this.artist,
      this.info,
      this.posterUrl,
      this.ticketUrl,
      this.date,
      this.id,
      this.reference})
      : super._();

  @override
  UserConcertsRecord rebuild(
          void Function(UserConcertsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserConcertsRecordBuilder toBuilder() =>
      new UserConcertsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserConcertsRecord &&
        uid == other.uid &&
        artist == other.artist &&
        info == other.info &&
        posterUrl == other.posterUrl &&
        ticketUrl == other.ticketUrl &&
        date == other.date &&
        id == other.id &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, uid.hashCode), artist.hashCode),
                            info.hashCode),
                        posterUrl.hashCode),
                    ticketUrl.hashCode),
                date.hashCode),
            id.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UserConcertsRecord')
          ..add('uid', uid)
          ..add('artist', artist)
          ..add('info', info)
          ..add('posterUrl', posterUrl)
          ..add('ticketUrl', ticketUrl)
          ..add('date', date)
          ..add('id', id)
          ..add('reference', reference))
        .toString();
  }
}

class UserConcertsRecordBuilder
    implements Builder<UserConcertsRecord, UserConcertsRecordBuilder> {
  _$UserConcertsRecord _$v;

  String _uid;
  String get uid => _$this._uid;
  set uid(String uid) => _$this._uid = uid;

  String _artist;
  String get artist => _$this._artist;
  set artist(String artist) => _$this._artist = artist;

  String _info;
  String get info => _$this._info;
  set info(String info) => _$this._info = info;

  String _posterUrl;
  String get posterUrl => _$this._posterUrl;
  set posterUrl(String posterUrl) => _$this._posterUrl = posterUrl;

  String _ticketUrl;
  String get ticketUrl => _$this._ticketUrl;
  set ticketUrl(String ticketUrl) => _$this._ticketUrl = ticketUrl;

  String _date;
  String get date => _$this._date;
  set date(String date) => _$this._date = date;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  UserConcertsRecordBuilder() {
    UserConcertsRecord._initializeBuilder(this);
  }

  UserConcertsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _uid = $v.uid;
      _artist = $v.artist;
      _info = $v.info;
      _posterUrl = $v.posterUrl;
      _ticketUrl = $v.ticketUrl;
      _date = $v.date;
      _id = $v.id;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserConcertsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserConcertsRecord;
  }

  @override
  void update(void Function(UserConcertsRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UserConcertsRecord build() {
    final _$result = _$v ??
        new _$UserConcertsRecord._(
            uid: uid,
            artist: artist,
            info: info,
            posterUrl: posterUrl,
            ticketUrl: ticketUrl,
            date: date,
            id: id,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
