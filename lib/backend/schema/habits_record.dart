import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class HabitsRecord extends FirestoreRecord {
  HabitsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "frequency" field.
  String? _frequency;
  String get frequency => _frequency ?? '';
  bool hasFrequency() => _frequency != null;

  // "repeat" field.
  List<String>? _repeat;
  List<String> get repeat => _repeat ?? const [];
  bool hasRepeat() => _repeat != null;

  // "completed" field.
  List<String>? _completed;
  List<String> get completed => _completed ?? const [];
  bool hasCompleted() => _completed != null;

  // "completed_today" field.
  int? _completedToday;
  int get completedToday => _completedToday ?? 0;
  bool hasCompletedToday() => _completedToday != null;

  // "created_by" field.
  DocumentReference? _createdBy;
  DocumentReference? get createdBy => _createdBy;
  bool hasCreatedBy() => _createdBy != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _description = snapshotData['description'] as String?;
    _frequency = snapshotData['frequency'] as String?;
    _repeat = getDataList(snapshotData['repeat']);
    _completed = getDataList(snapshotData['completed']);
    _completedToday = castToType<int>(snapshotData['completed_today']);
    _createdBy = snapshotData['created_by'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('habits');

  static Stream<HabitsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => HabitsRecord.fromSnapshot(s));

  static Future<HabitsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => HabitsRecord.fromSnapshot(s));

  static HabitsRecord fromSnapshot(DocumentSnapshot snapshot) => HabitsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static HabitsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      HabitsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'HabitsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is HabitsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createHabitsRecordData({
  String? name,
  String? description,
  String? frequency,
  int? completedToday,
  DocumentReference? createdBy,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'description': description,
      'frequency': frequency,
      'completed_today': completedToday,
      'created_by': createdBy,
    }.withoutNulls,
  );

  return firestoreData;
}

class HabitsRecordDocumentEquality implements Equality<HabitsRecord> {
  const HabitsRecordDocumentEquality();

  @override
  bool equals(HabitsRecord? e1, HabitsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.name == e2?.name &&
        e1?.description == e2?.description &&
        e1?.frequency == e2?.frequency &&
        listEquality.equals(e1?.repeat, e2?.repeat) &&
        listEquality.equals(e1?.completed, e2?.completed) &&
        e1?.completedToday == e2?.completedToday &&
        e1?.createdBy == e2?.createdBy;
  }

  @override
  int hash(HabitsRecord? e) => const ListEquality().hash([
        e?.name,
        e?.description,
        e?.frequency,
        e?.repeat,
        e?.completed,
        e?.completedToday,
        e?.createdBy
      ]);

  @override
  bool isValidKey(Object? o) => o is HabitsRecord;
}
