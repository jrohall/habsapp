import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/side_bar_nav_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'habits_page_widget.dart' show HabitsPageWidget;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HabitsPageModel extends FlutterFlowModel<HabitsPageWidget> {
  ///  Local state fields for this page.

  int iterator = 0;

  bool allComplete = false;

  int? completeCount;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for sideBarNav component.
  late SideBarNavModel sideBarNavModel;
  // Stores action output result for [Firestore Query - Query a collection] action in Container widget.
  int? amountDueHabits;
  // Stores action output result for [Firestore Query - Query a collection] action in Container widget.
  int? amountCompleted;
  // Stores action output result for [Firestore Query - Query a collection] action in Container widget.
  StatisticsRecord? statsRef;
  // Stores action output result for [Custom Action - getDaysOfWeekHabits] action in Container widget.
  List<int>? daysOfWeekDueHabits;
  // Stores action output result for [Firestore Query - Query a collection] action in Container widget.
  StatisticsRecord? newStatsRef;

  @override
  void initState(BuildContext context) {
    sideBarNavModel = createModel(context, () => SideBarNavModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    sideBarNavModel.dispose();
  }

  /// Action blocks.
  Future test(BuildContext context) async {}
}
