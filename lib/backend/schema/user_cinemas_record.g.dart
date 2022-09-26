// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_cinemas_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UserCinemasRecord> _$userCinemasRecordSerializer =
    new _$UserCinemasRecordSerializer();

class _$UserCinemasRecordSerializer
    implements StructuredSerializer<UserCinemasRecord> {
  @override
  final Iterable<Type> types = const [UserCinemasRecord, _$UserCinemasRecord];
  @override
  final String wireName = 'UserCinemasRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, UserCinemasRecord object,
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
    value = object.filmName;
    if (value != null) {
      result
        ..add('film_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.vote;
    if (value != null) {
      result
        ..add('vote')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.overview;
    if (value != null) {
      result
        ..add('overview')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
  UserCinemasRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UserCinemasRecordBuilder();

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
        case 'film_name':
          result.filmName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'vote':
          result.vote = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'overview':
          result.overview = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
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

class _$UserCinemasRecord extends UserCinemasRecord {
  @override
  final String uid;
  @override
  final String filmName;
  @override
  final double vote;
  @override
  final String overview;
  @override
  final DocumentReference<Object> reference;

  factory _$UserCinemasRecord(
          [void Function(UserCinemasRecordBuilder) updates]) =>
      (new UserCinemasRecordBuilder()..update(updates)).build();

  _$UserCinemasRecord._(
      {this.uid, this.filmName, this.vote, this.overview, this.reference})
      : super._();

  @override
  UserCinemasRecord rebuild(void Function(UserCinemasRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserCinemasRecordBuilder toBuilder() =>
      new UserCinemasRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserCinemasRecord &&
        uid == other.uid &&
        filmName == other.filmName &&
        vote == other.vote &&
        overview == other.overview &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, uid.hashCode), filmName.hashCode), vote.hashCode),
            overview.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UserCinemasRecord')
          ..add('uid', uid)
          ..add('filmName', filmName)
          ..add('vote', vote)
          ..add('overview', overview)
          ..add('reference', reference))
        .toString();
  }
}

class UserCinemasRecordBuilder
    implements Builder<UserCinemasRecord, UserCinemasRecordBuilder> {
  _$UserCinemasRecord _$v;

  String _uid;
  String get uid => _$this._uid;
  set uid(String uid) => _$this._uid = uid;

  String _filmName;
  String get filmName => _$this._filmName;
  set filmName(String filmName) => _$this._filmName = filmName;

  double _vote;
  double get vote => _$this._vote;
  set vote(double vote) => _$this._vote = vote;

  String _overview;
  String get overview => _$this._overview;
  set overview(String overview) => _$this._overview = overview;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  UserCinemasRecordBuilder() {
    UserCinemasRecord._initializeBuilder(this);
  }

  UserCinemasRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _uid = $v.uid;
      _filmName = $v.filmName;
      _vote = $v.vote;
      _overview = $v.overview;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserCinemasRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserCinemasRecord;
  }

  @override
  void update(void Function(UserCinemasRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UserCinemasRecord build() {
    final _$result = _$v ??
        new _$UserCinemasRecord._(
            uid: uid,
            filmName: filmName,
            vote: vote,
            overview: overview,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
