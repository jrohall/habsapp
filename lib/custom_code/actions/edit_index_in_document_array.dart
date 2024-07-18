// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<void> editIndexInDocumentArray(
    int index, int value, DocumentReference docRef, String arrName) async {
  // Retrieve the document
  DocumentSnapshot docSnapshot = await docRef.get();

  // Get the array from the document
  List<dynamic> array = docSnapshot.get(arrName);

  // Check if the index is within the bounds of the array
  if (index >= 0 && index < array.length) {
    // Update the specific index with the new value
    array[index] = value;

    // Update the array back in the Firestore document
    await docRef.update({arrName: array});
  } else {
    throw RangeError('Index out of range');
  }
}
