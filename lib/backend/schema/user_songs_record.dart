import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'user_songs_record.g.dart';

abstract class UserSongsRecord
    implements Built<UserSongsRecord, UserSongsRecordBuilder> {
  static Serializer<UserSongsRecord> get serializer =>
      _$userSongsRecordSerializer;

  @nullable
  String get uid;

  @nullable
  @BuiltValueField(wireName: 'artist_name')
  String get artistName;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(UserSongsRecordBuilder builder) => builder
    ..uid = ''
    ..artistName = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('user_songs');

  static Stream<UserSongsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<UserSongsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  UserSongsRecord._();
  factory UserSongsRecord([void Function(UserSongsRecordBuilder) updates]) =
      _$UserSongsRecord;

  static UserSongsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createUserSongsRecordData({
  String uid,
  String artistName,
}) =>
    serializers.toFirestore(
        UserSongsRecord.serializer,
        UserSongsRecord((u) => u
          ..uid = uid
          ..artistName = artistName));
