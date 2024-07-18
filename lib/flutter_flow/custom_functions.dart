import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

List<String> daysDatesInCurrentMonth() {
  // Calculate the number of days in the current month
  var now = DateTime.now();
  var daysInMonth = DateTime(now.year, now.month + 1, 0).day;

  // Prepare a list to hold the formatted dates
  List<String> dates = [];

  // Iterate through each day of the month
  for (int day = 1; day <= daysInMonth; day++) {
    var date = DateTime(now.year, now.month, day);
    var formattedDate = DateFormat('d/M/y').format(date);
    dates.add(formattedDate);
  }

  // Return the list of formatted dates
  return dates;
}

int getDateIndex() {
  // function that returns an integer of the current day of the month minus one.
  return DateTime.now().day - 1;
}

List<int> defaultDocArr() {
  // Get the current date
  DateTime now = DateTime.now();

  // Determine the number of days in the current month
  int daysInMonth = DateTime(now.year, now.month + 1, 0).day;

  // Create a list with the length of daysInMonth filled with zeros
  List<int> daysList = List.filled(daysInMonth, 0);

  return daysList;
}

List<int> newDueHabitsList(
  List<int> weeklyDueHabits,
  bool newUserStatistic,
) {
  // Get the current date
  DateTime now = DateTime.now();

  // Determine the number of days in the current month
  int daysInMonth = DateTime(now.year, now.month + 1, 0).day;

  // Determine the day of the week the month begins on (0 = Monday, ..., 6 = Sunday)
  int startDayOfWeek = (DateTime(now.year, now.month, 1).weekday % 7) - 1;

  // Initialize an array to hold the number of habits due for each day of the month
  List<int> monthlyDueHabits = List.filled(daysInMonth, 0);

  // Populate the monthlyDueHabits array using the weeklyDueHabits data
  for (int i = 0; i < daysInMonth; i++) {
    if (i < (now.day - 1)) {
      monthlyDueHabits[i] = 0;
    } else {
      // Calculate the day of the week for each day in the month
      int dayOfWeek = (startDayOfWeek + i) % 7;
      // Assign the corresponding habits due count from weeklyDueHabits
      monthlyDueHabits[i] = weeklyDueHabits[dayOfWeek];
    }
  }

  return monthlyDueHabits;
}

double getHeatmapConsistency(
  int numerator,
  int denominator,
) {
  // takes in two numbers, a numerator and denominator and returns the numerators divided by the denominator rounded to two decimal places.
  double result = numerator / denominator;
  return double.parse(result.toStringAsFixed(2));
}

double getMonthlyConsistency(
  List<int> numerator,
  List<int> denominator,
) {
  // Get the current day of the month
  int currentDay = DateTime.now().day;

  // Slice the lists up to the current day
  List<int?> numeratorSlice = numerator.take(currentDay).toList();
  List<int> denominatorSlice = denominator.take(currentDay).toList();

  // Sum the elements in the sliced numerator list, ignoring null values
  int numeratorSum =
      numeratorSlice.fold(0, (sum, element) => sum + (element ?? 0));

  // Sum the elements in the sliced denominator list
  int denominatorSum =
      denominatorSlice.fold(0, (sum, element) => sum + element);

  // Avoid division by zero
  if (denominatorSum == 0) {
    return 0.0;
  }

  // Return the ratio of the sums
  return numeratorSum / denominatorSum;
}

bool indicateCurrentDay(int index) {
  // takes in an index and if it equal to the current day of the month minus one, then return true, otherwise return false
  final now = DateTime.now();
  final currentDay = now.day;
  return index == currentDay - 1;
}

List<int> updateDueHabitList(
  List<int> weeklyDueHabits,
  List<int> originalDueHabits,
) {
  // the habit bool checks whether or not we should be incrementing (true) or decrementing (false)

  // Get the current date
  DateTime now = DateTime.now();

  // Determine the number of days in the current month
  int daysInMonth = DateTime(now.year, now.month + 1, 0).day;

  // Determine the day of the week the month begins on (0 = Monday, ..., 6 = Sunday)
  int startDayOfWeek = (DateTime(now.year, now.month, 1).weekday % 7) - 1;

  // Initialize an array to hold the number of habits due for each day of the month
  List<int> monthlyDueHabits = List.filled(daysInMonth, 0);

  // Populate the monthlyDueHabits array using the weeklyDueHabits data
  for (int i = 0; i < daysInMonth; i++) {
    if (i < (now.day - 1)) {
      // Calculate the day of the week for each day in the month
      int dayOfWeek = (startDayOfWeek + i) % 7;
      // Assign the corresponding habits due count from weeklyDueHabits
      monthlyDueHabits[i] = originalDueHabits[i];
    } else {
      // Calculate the day of the week for each day in the month
      int dayOfWeek = (startDayOfWeek + i) % 7;
      // Assign the corresponding habits due count from weeklyDueHabits
      monthlyDueHabits[i] = weeklyDueHabits[dayOfWeek];
    }
  }

  return monthlyDueHabits;
}

List<int> editIndexInDocumentArr(
  int index,
  int value,
  List<int> oldArray,
) {
  // Make a copy of the old array to avoid modifying the original parameter
  List<int> array = List.from(oldArray);

  // Check if the index is within the bounds of the array
  if (index >= 0 && index < array.length) {
    // Update the specific index with the new value
    array[index] = value;
  } else {
    throw RangeError('Index out of range');
  }

  // Return the modified array
  return array;
}
