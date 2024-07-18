import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'habit_action_sheet_model.dart';
export 'habit_action_sheet_model.dart';

class HabitActionSheetWidget extends StatefulWidget {
  const HabitActionSheetWidget({
    super.key,
    required this.habitRef,
    required this.habitName,
    required this.habitDesc,
    required this.habitRepeat,
  });

  final DocumentReference? habitRef;
  final String? habitName;
  final String? habitDesc;
  final List<String>? habitRepeat;

  @override
  State<HabitActionSheetWidget> createState() => _HabitActionSheetWidgetState();
}

class _HabitActionSheetWidgetState extends State<HabitActionSheetWidget> {
  late HabitActionSheetModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HabitActionSheetModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 270.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        boxShadow: [
          BoxShadow(
            blurRadius: 5.0,
            color: Color(0x3B1D2429),
            offset: Offset(
              0.0,
              -3.0,
            ),
          )
        ],
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(0.0),
          bottomRight: Radius.circular(0.0),
          topLeft: Radius.circular(16.0),
          topRight: Radius.circular(16.0),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            FFButtonWidget(
              onPressed: () async {
                context.pushNamed(
                  'editHabitForm',
                  queryParameters: {
                    'habitRef': serializeParam(
                      widget!.habitRef,
                      ParamType.DocumentReference,
                    ),
                    'habitName': serializeParam(
                      widget!.habitName,
                      ParamType.String,
                    ),
                    'habitDesc': serializeParam(
                      widget!.habitDesc,
                      ParamType.String,
                    ),
                    'habitRepeat': serializeParam(
                      widget!.habitRepeat,
                      ParamType.String,
                      isList: true,
                    ),
                  }.withoutNulls,
                );
              },
              text: 'Edit',
              icon: Icon(
                Icons.edit,
                color: FlutterFlowTheme.of(context).secondaryBackground,
                size: 15.0,
              ),
              options: FFButtonOptions(
                width: double.infinity,
                height: 60.0,
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                color: FlutterFlowTheme.of(context).primary,
                textStyle: FlutterFlowTheme.of(context).bodyLarge.override(
                      fontFamily: FlutterFlowTheme.of(context).bodyLargeFamily,
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      letterSpacing: 0.0,
                      useGoogleFonts: GoogleFonts.asMap().containsKey(
                          FlutterFlowTheme.of(context).bodyLargeFamily),
                    ),
                elevation: 2.0,
                borderSide: BorderSide(
                  width: 1.0,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
              child: FFButtonWidget(
                onPressed: () async {
                  await widget!.habitRef!.delete();
                  _model.daysOfWeekDueHabits =
                      await actions.getDaysOfWeekHabits(
                    currentUserReference!,
                  );
                  _model.statsRef = await queryStatisticsRecordOnce(
                    queryBuilder: (statisticsRecord) => statisticsRecord
                        .where(
                          'created_by',
                          isEqualTo: currentUserReference,
                        )
                        .where(
                          'monthYear',
                          isEqualTo: dateTimeFormat('M/y', getCurrentTimestamp),
                        ),
                    singleRecord: true,
                  ).then((s) => s.firstOrNull);
                  if ((_model.statsRef != null) == true) {
                    await _model.statsRef!.reference.update({
                      ...mapToFirestore(
                        {
                          'num_should_complete': functions.updateDueHabitList(
                              _model.daysOfWeekDueHabits!.toList(),
                              _model.statsRef!.numShouldComplete.toList()),
                        },
                      ),
                    });
                  } else {
                    await StatisticsRecord.collection.doc().set({
                      ...createStatisticsRecordData(
                        createdBy: currentUserReference,
                        monthYear: dateTimeFormat('M/y', getCurrentTimestamp),
                      ),
                      ...mapToFirestore(
                        {
                          'num_should_complete': functions.newDueHabitsList(
                              _model.daysOfWeekDueHabits!.toList(),
                              valueOrDefault<bool>(
                                  currentUserDocument?.newUser, false)),
                          'num_completed': functions.defaultDocArr(),
                        },
                      ),
                    });

                    await currentUserReference!.update(createUsersRecordData(
                      newUser: false,
                    ));
                  }

                  Navigator.pop(context);

                  setState(() {});
                },
                text: 'Delete',
                icon: Icon(
                  Icons.delete_forever_rounded,
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  size: 15.0,
                ),
                options: FFButtonOptions(
                  width: double.infinity,
                  height: 60.0,
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).error,
                  textStyle: FlutterFlowTheme.of(context).bodyLarge.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).bodyLargeFamily,
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        letterSpacing: 0.0,
                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                            FlutterFlowTheme.of(context).bodyLargeFamily),
                      ),
                  elevation: 2.0,
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1.0,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
              child: FFButtonWidget(
                onPressed: () async {
                  Navigator.pop(context);
                },
                text: 'Cancel',
                options: FFButtonOptions(
                  width: double.infinity,
                  height: 60.0,
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Lexend Deca',
                        color: FlutterFlowTheme.of(context).secondaryText,
                        fontSize: 16.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.normal,
                        useGoogleFonts:
                            GoogleFonts.asMap().containsKey('Lexend Deca'),
                      ),
                  elevation: 0.0,
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).accent3,
                    width: 0.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
