import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class StatisticsRecord extends FirestoreRecord {
  StatisticsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "created_by" field.
  DocumentReference? _createdBy;
  DocumentReference? get createdBy => _createdBy;
  bool hasCreatedBy() => _createdBy != null;

  // "num_should_complete" field.
  List<int>? _numShouldComplete;
  List<int> get numShouldComplete => _numShouldComplete ?? const [];
  bool hasNumShouldComplete() => _numShouldComplete != null;

  // "num_completed" field.
  List<int>? _numCompleted;
  List<int> get numCompleted => _numCompleted ?? const [];
  bool hasNumCompleted() => _numCompleted != null;

  // "monthYear" field.
  String? _monthYear;
  String get monthYear => _monthYear ?? '';
  bool hasMonthYear() => _monthYear != null;

  void _initializeFields() {
    _createdBy = snapshotData['created_by'] as DocumentReference?;
    _numShouldComplete = getDataList(snapshotData['num_should_complete']);
    _numCompleted = getDataList(snapshotData['num_completed']);
    _monthYear = snapshotData['monthYear'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('statistics');

  static Stream<StatisticsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => StatisticsRecord.fromSnapshot(s));

  static Future<StatisticsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => StatisticsRecord.fromSnapshot(s));

  static StatisticsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      StatisticsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static StatisticsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      StatisticsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'StatisticsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is StatisticsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createStatisticsRecordData({
  DocumentReference? createdBy,
  String? monthYear,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'created_by': createdBy,
      'monthYear': monthYear,
    }.withoutNulls,
  );

  return firestoreData;
}

class StatisticsRecordDocumentEquality implements Equality<StatisticsRecord> {
  const StatisticsRecordDocumentEquality();

  @override
  bool equals(StatisticsRecord? e1, StatisticsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.createdBy == e2?.createdBy &&
        listEquality.equals(e1?.numShouldComplete, e2?.numShouldComplete) &&
        listEquality.equals(e1?.numCompleted, e2?.numCompleted) &&
        e1?.monthYear == e2?.monthYear;
  }

  @override
  int hash(StatisticsRecord? e) => const ListEquality().hash(
      [e?.createdBy, e?.numShouldComplete, e?.numCompleted, e?.monthYear]);

  @override
  bool isValidKey(Object? o) => o is StatisticsRecord;
}
