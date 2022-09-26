import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'user_concerts_record.g.dart';

abstract class UserConcertsRecord
    implements Built<UserConcertsRecord, UserConcertsRecordBuilder> {
  static Serializer<UserConcertsRecord> get serializer =>
      _$userConcertsRecordSerializer;

  @nullable
  String get uid;

  @nullable
  String get artist;

  @nullable
  String get info;

  @nullable
  @BuiltValueField(wireName: 'poster_url')
  String get posterUrl;

  @nullable
  @BuiltValueField(wireName: 'ticket_url')
  String get ticketUrl;

  @nullable
  String get date;

  @nullable
  int get id;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(UserConcertsRecordBuilder builder) => builder
    ..uid = ''
    ..artist = ''
    ..info = ''
    ..posterUrl = ''
    ..ticketUrl = ''
    ..date = ''
    ..id = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('user_concerts');

  static Stream<UserConcertsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<UserConcertsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  UserConcertsRecord._();
  factory UserConcertsRecord(
          [void Function(UserConcertsRecordBuilder) updates]) =
      _$UserConcertsRecord;

  static UserConcertsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createUserConcertsRecordData({
  String uid,
  String artist,
  String info,
  String posterUrl,
  String ticketUrl,
  String date,
  int id,
}) =>
    serializers.toFirestore(
        UserConcertsRecord.serializer,
        UserConcertsRecord((u) => u
          ..uid = uid
          ..artist = artist
          ..info = info
          ..posterUrl = posterUrl
          ..ticketUrl = ticketUrl
          ..date = date
          ..id = id));
