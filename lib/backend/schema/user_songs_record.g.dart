// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_songs_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UserSongsRecord> _$userSongsRecordSerializer =
    new _$UserSongsRecordSerializer();

class _$UserSongsRecordSerializer
    implements StructuredSerializer<UserSongsRecord> {
  @override
  final Iterable<Type> types = const [UserSongsRecord, _$UserSongsRecord];
  @override
  final String wireName = 'UserSongsRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, UserSongsRecord object,
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
    value = object.artistName;
    if (value != null) {
      result
        ..add('artist_name')
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
  UserSongsRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UserSongsRecordBuilder();

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
        case 'artist_name':
          result.artistName = serializers.deserialize(value,
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

class _$UserSongsRecord extends UserSongsRecord {
  @override
  final String uid;
  @override
  final String artistName;
  @override
  final DocumentReference<Object> reference;

  factory _$UserSongsRecord([void Function(UserSongsRecordBuilder) updates]) =>
      (new UserSongsRecordBuilder()..update(updates)).build();

  _$UserSongsRecord._({this.uid, this.artistName, this.reference}) : super._();

  @override
  UserSongsRecord rebuild(void Function(UserSongsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserSongsRecordBuilder toBuilder() =>
      new UserSongsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserSongsRecord &&
        uid == other.uid &&
        artistName == other.artistName &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, uid.hashCode), artistName.hashCode), reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UserSongsRecord')
          ..add('uid', uid)
          ..add('artistName', artistName)
          ..add('reference', reference))
        .toString();
  }
}

class UserSongsRecordBuilder
    implements Builder<UserSongsRecord, UserSongsRecordBuilder> {
  _$UserSongsRecord _$v;

  String _uid;
  String get uid => _$this._uid;
  set uid(String uid) => _$this._uid = uid;

  String _artistName;
  String get artistName => _$this._artistName;
  set artistName(String artistName) => _$this._artistName = artistName;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  UserSongsRecordBuilder() {
    UserSongsRecord._initializeBuilder(this);
  }

  UserSongsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _uid = $v.uid;
      _artistName = $v.artistName;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserSongsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserSongsRecord;
  }

  @override
  void update(void Function(UserSongsRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UserSongsRecord build() {
    final _$result = _$v ??
        new _$UserSongsRecord._(
            uid: uid, artistName: artistName, reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
