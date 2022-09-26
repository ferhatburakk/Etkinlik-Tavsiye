// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_films_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UserFilmsRecord> _$userFilmsRecordSerializer =
    new _$UserFilmsRecordSerializer();

class _$UserFilmsRecordSerializer
    implements StructuredSerializer<UserFilmsRecord> {
  @override
  final Iterable<Type> types = const [UserFilmsRecord, _$UserFilmsRecord];
  @override
  final String wireName = 'UserFilmsRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, UserFilmsRecord object,
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
  UserFilmsRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UserFilmsRecordBuilder();

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

class _$UserFilmsRecord extends UserFilmsRecord {
  @override
  final String uid;
  @override
  final String filmName;
  @override
  final DocumentReference<Object> reference;

  factory _$UserFilmsRecord([void Function(UserFilmsRecordBuilder) updates]) =>
      (new UserFilmsRecordBuilder()..update(updates)).build();

  _$UserFilmsRecord._({this.uid, this.filmName, this.reference}) : super._();

  @override
  UserFilmsRecord rebuild(void Function(UserFilmsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserFilmsRecordBuilder toBuilder() =>
      new UserFilmsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserFilmsRecord &&
        uid == other.uid &&
        filmName == other.filmName &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, uid.hashCode), filmName.hashCode), reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UserFilmsRecord')
          ..add('uid', uid)
          ..add('filmName', filmName)
          ..add('reference', reference))
        .toString();
  }
}

class UserFilmsRecordBuilder
    implements Builder<UserFilmsRecord, UserFilmsRecordBuilder> {
  _$UserFilmsRecord _$v;

  String _uid;
  String get uid => _$this._uid;
  set uid(String uid) => _$this._uid = uid;

  String _filmName;
  String get filmName => _$this._filmName;
  set filmName(String filmName) => _$this._filmName = filmName;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  UserFilmsRecordBuilder() {
    UserFilmsRecord._initializeBuilder(this);
  }

  UserFilmsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _uid = $v.uid;
      _filmName = $v.filmName;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserFilmsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserFilmsRecord;
  }

  @override
  void update(void Function(UserFilmsRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UserFilmsRecord build() {
    final _$result = _$v ??
        new _$UserFilmsRecord._(
            uid: uid, filmName: filmName, reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
