// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// Import necessary packages
import 'package:cloud_firestore/cloud_firestore.dart';

// Define the function
Future<List<int>> getDaysOfWeekHabits(DocumentReference userID) async {
  print('Querying Data....');

  // Get the 'habits' collection from Firebase
  final habitsCollection = FirebaseFirestore.instance
      .collection('habits')
      .where('created_by', isEqualTo: userID);

  // Get all the documents in the collection
  final habitsDocuments = await habitsCollection.get();

  print('Query Finished: ${habitsDocuments}');

  // Define an array representing days of the week
  final daysOfWeek = [
    'Monday',
    'Tuesday',
    'Wednesday',
    'Thursday',
    'Friday',
    'Saturday',
    'Sunday'
  ];

  // Define an array to count the number of habits for each day of the week
  List<int> habitsCount = List.filled(7, 0);

  // Loop through each document in the collection
  for (final habitDocument in habitsDocuments.docs) {
    // Get the 'repeat' array from the document
    final data = habitDocument.data();
    if (data.containsKey('repeat') && data['repeat'] is List) {
      final repeatArray = List<String>.from(data['repeat']);

      // Loop through each day of the week
      for (var i = 0; i < daysOfWeek.length; i++) {
        // Check if the day is in the 'repeat' array
        if (repeatArray.contains(daysOfWeek[i])) {
          // Increment the corresponding index in the habitsCount array
          habitsCount[i]++;
        }
      }
    }
  }

  print('Due Habits: ${habitsCount}');

  return habitsCount;
}
