import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'user_films_record.g.dart';

abstract class UserFilmsRecord
    implements Built<UserFilmsRecord, UserFilmsRecordBuilder> {
  static Serializer<UserFilmsRecord> get serializer =>
      _$userFilmsRecordSerializer;

  @nullable
  String get uid;

  @nullable
  @BuiltValueField(wireName: 'film_name')
  String get filmName;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(UserFilmsRecordBuilder builder) => builder
    ..uid = ''
    ..filmName = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('user_films');

  static Stream<UserFilmsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<UserFilmsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  UserFilmsRecord._();
  factory UserFilmsRecord([void Function(UserFilmsRecordBuilder) updates]) =
      _$UserFilmsRecord;

  static UserFilmsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createUserFilmsRecordData({
  String uid,
  String filmName,
}) =>
    serializers.toFirestore(
        UserFilmsRecord.serializer,
        UserFilmsRecord((u) => u
          ..uid = uid
          ..filmName = filmName));
