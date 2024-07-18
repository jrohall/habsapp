import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'habit_action_sheet_widget.dart' show HabitActionSheetWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HabitActionSheetModel extends FlutterFlowModel<HabitActionSheetWidget> {
  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Custom Action - getDaysOfWeekHabits] action in Button widget.
  List<int>? daysOfWeekDueHabits;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  StatisticsRecord? statsRef;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
