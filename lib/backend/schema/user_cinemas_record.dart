import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'user_cinemas_record.g.dart';

abstract class UserCinemasRecord
    implements Built<UserCinemasRecord, UserCinemasRecordBuilder> {
  static Serializer<UserCinemasRecord> get serializer =>
      _$userCinemasRecordSerializer;

  @nullable
  String get uid;

  @nullable
  @BuiltValueField(wireName: 'film_name')
  String get filmName;

  @nullable
  double get vote;

  @nullable
  String get overview;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(UserCinemasRecordBuilder builder) => builder
    ..uid = ''
    ..filmName = ''
    ..vote = 0.0
    ..overview = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('user_cinemas');

  static Stream<UserCinemasRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<UserCinemasRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  UserCinemasRecord._();
  factory UserCinemasRecord([void Function(UserCinemasRecordBuilder) updates]) =
      _$UserCinemasRecord;

  static UserCinemasRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createUserCinemasRecordData({
  String uid,
  String filmName,
  double vote,
  String overview,
}) =>
    serializers.toFirestore(
        UserCinemasRecord.serializer,
        UserCinemasRecord((u) => u
          ..uid = uid
          ..filmName = filmName
          ..vote = vote
          ..overview = overview));
