import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/side_bar_nav_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'habits_page_model.dart';
export 'habits_page_model.dart';

class HabitsPageWidget extends StatefulWidget {
  const HabitsPageWidget({super.key});

  @override
  State<HabitsPageWidget> createState() => _HabitsPageWidgetState();
}

class _HabitsPageWidgetState extends State<HabitsPageWidget> {
  late HabitsPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HabitsPageModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            if (responsiveVisibility(
              context: context,
              phone: false,
              tablet: false,
            ))
              wrapWithModel(
                model: _model.sideBarNavModel,
                updateCallback: () => setState(() {}),
                child: SideBarNavWidget(
                  oneBG: FlutterFlowTheme.of(context).secondaryBackground,
                  oneIcon: Icon(
                    Icons.bar_chart_rounded,
                    color: FlutterFlowTheme.of(context).primaryText,
                  ),
                  twoBG: FlutterFlowTheme.of(context).primaryBackground,
                  twoIcon: Icon(
                    Icons.school_outlined,
                    color: FlutterFlowTheme.of(context).primary,
                  ),
                  threeColor: FlutterFlowTheme.of(context).secondaryBackground,
                  threeIcon: Icon(
                    Icons.account_circle_outlined,
                    color: FlutterFlowTheme.of(context).primaryText,
                  ),
                ),
              ),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  if (responsiveVisibility(
                    context: context,
                    tabletLandscape: false,
                    desktop: false,
                  ))
                    Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Container(
                        width: double.infinity,
                        height: 44.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          borderRadius: BorderRadius.circular(0.0),
                        ),
                        alignment: AlignmentDirectional(0.0, 0.0),
                      ),
                    ),
                  Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 32.0, 16.0, 0.0),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 4.0,
                              color: Color(0x33000000),
                              offset: Offset(
                                0.0,
                                2.0,
                              ),
                            )
                          ],
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        alignment: AlignmentDirectional(0.0, -1.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 1.0),
                                  child: SingleChildScrollView(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 1.0, 0.0, 1.0),
                                          child: Container(
                                            width: double.infinity,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              boxShadow: [
                                                BoxShadow(
                                                  blurRadius: 0.0,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .lineColor,
                                                  offset: Offset(
                                                    0.0,
                                                    1.0,
                                                  ),
                                                )
                                              ],
                                              borderRadius: BorderRadius.only(
                                                bottomLeft:
                                                    Radius.circular(0.0),
                                                bottomRight:
                                                    Radius.circular(0.0),
                                                topLeft: Radius.circular(16.0),
                                                topRight: Radius.circular(16.0),
                                              ),
                                            ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.all(16.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Expanded(
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      8.0,
                                                                      0.0),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                'Your Habits',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .headlineSmall
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .headlineSmallFamily,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      useGoogleFonts: GoogleFonts
                                                                              .asMap()
                                                                          .containsKey(
                                                                              FlutterFlowTheme.of(context).headlineSmallFamily),
                                                                    ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            4.0,
                                                                            0.0,
                                                                            0.0),
                                                                child: Text(
                                                                  'Habits that must be completed today.',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmall
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).bodySmallFamily,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        useGoogleFonts:
                                                                            GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodySmallFamily),
                                                                      ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(5.0),
                                  child: StreamBuilder<List<HabitsRecord>>(
                                    stream: queryHabitsRecord(
                                      queryBuilder: (habitsRecord) =>
                                          habitsRecord
                                              .where(
                                                'repeat',
                                                arrayContains: dateTimeFormat(
                                                    'EEEE',
                                                    getCurrentTimestamp),
                                              )
                                              .where(
                                                'created_by',
                                                isEqualTo: currentUserReference,
                                              ),
                                    ),
                                    builder: (context, snapshot) {
                                      // Customize what your widget looks like when it's loading.
                                      if (!snapshot.hasData) {
                                        return Center(
                                          child: SizedBox(
                                            width: 50.0,
                                            height: 50.0,
                                            child: CircularProgressIndicator(
                                              valueColor:
                                                  AlwaysStoppedAnimation<Color>(
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                              ),
                                            ),
                                          ),
                                        );
                                      }
                                      List<HabitsRecord>
                                          listViewHabitsRecordList =
                                          snapshot.data!;

                                      return ListView.builder(
                                        padding: EdgeInsets.zero,
                                        shrinkWrap: true,
                                        scrollDirection: Axis.vertical,
                                        itemCount:
                                            listViewHabitsRecordList.length,
                                        itemBuilder: (context, listViewIndex) {
                                          final listViewHabitsRecord =
                                              listViewHabitsRecordList[
                                                  listViewIndex];
                                          return Opacity(
                                            opacity: listViewHabitsRecord
                                                        .completed
                                                        .contains(dateTimeFormat(
                                                            'd/M/y',
                                                            getCurrentTimestamp)) ==
                                                    false
                                                ? 1.0
                                                : 0.5,
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 2.0),
                                              child: Container(
                                                width: double.infinity,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  boxShadow: [
                                                    BoxShadow(
                                                      blurRadius: 0.0,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .lineColor,
                                                      offset: Offset(
                                                        0.0,
                                                        1.0,
                                                      ),
                                                    )
                                                  ],
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsets.all(12.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Expanded(
                                                        flex: 2,
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                AutoSizeText(
                                                                  listViewHabitsRecord
                                                                      .name
                                                                      .maybeHandleOverflow(
                                                                    maxChars:
                                                                        32,
                                                                    replacement:
                                                                        '…',
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).titleMediumFamily,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        useGoogleFonts:
                                                                            GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleMediumFamily),
                                                                      ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          2.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child: Text(
                                                                    listViewHabitsRecord
                                                                        .description
                                                                        .maybeHandleOverflow(
                                                                      maxChars:
                                                                          25,
                                                                      replacement:
                                                                          '…',
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodySmall
                                                                        .override(
                                                                          fontFamily:
                                                                              FlutterFlowTheme.of(context).bodySmallFamily,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          useGoogleFonts:
                                                                              GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodySmallFamily),
                                                                        ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .end,
                                                          children: [
                                                            InkWell(
                                                              splashColor: Colors
                                                                  .transparent,
                                                              focusColor: Colors
                                                                  .transparent,
                                                              hoverColor: Colors
                                                                  .transparent,
                                                              highlightColor:
                                                                  Colors
                                                                      .transparent,
                                                              onTap: () async {
                                                                if (listViewHabitsRecord
                                                                        .completed
                                                                        .contains(dateTimeFormat(
                                                                            'd/M/y',
                                                                            getCurrentTimestamp))
                                                                    ? true
                                                                    : false) {
                                                                  await listViewHabitsRecord
                                                                      .reference
                                                                      .update({
                                                                    ...createHabitsRecordData(
                                                                      completedToday:
                                                                          0,
                                                                    ),
                                                                    ...mapToFirestore(
                                                                      {
                                                                        'completed':
                                                                            FieldValue.arrayRemove([
                                                                          dateTimeFormat(
                                                                              'd/M/y',
                                                                              getCurrentTimestamp)
                                                                        ]),
                                                                      },
                                                                    ),
                                                                  });
                                                                } else {
                                                                  await listViewHabitsRecord
                                                                      .reference
                                                                      .update({
                                                                    ...createHabitsRecordData(
                                                                      completedToday: listViewHabitsRecord.repeat.contains(dateTimeFormat(
                                                                              'd/M/y',
                                                                              getCurrentTimestamp))
                                                                          ? 1
                                                                          : 0,
                                                                    ),
                                                                    ...mapToFirestore(
                                                                      {
                                                                        'completed':
                                                                            FieldValue.arrayUnion([
                                                                          dateTimeFormat(
                                                                              'd/M/y',
                                                                              getCurrentTimestamp)
                                                                        ]),
                                                                      },
                                                                    ),
                                                                  });
                                                                }

                                                                _model.amountDueHabits =
                                                                    await queryHabitsRecordCount(
                                                                  queryBuilder: (habitsRecord) =>
                                                                      habitsRecord
                                                                          .where(
                                                                            'repeat',
                                                                            arrayContains:
                                                                                dateTimeFormat('EEEE', getCurrentTimestamp),
                                                                          )
                                                                          .where(
                                                                            'created_by',
                                                                            isEqualTo:
                                                                                currentUserReference,
                                                                          ),
                                                                );
                                                                _model.amountCompleted =
                                                                    await queryHabitsRecordCount(
                                                                  queryBuilder: (habitsRecord) =>
                                                                      habitsRecord
                                                                          .where(
                                                                            'created_by',
                                                                            isEqualTo:
                                                                                currentUserReference,
                                                                          )
                                                                          .where(
                                                                            'completed',
                                                                            arrayContains:
                                                                                dateTimeFormat('d/M/y', getCurrentTimestamp),
                                                                          ),
                                                                );
                                                                _model.statsRef =
                                                                    await queryStatisticsRecordOnce(
                                                                  queryBuilder: (statisticsRecord) =>
                                                                      statisticsRecord
                                                                          .where(
                                                                            'monthYear',
                                                                            isEqualTo:
                                                                                dateTimeFormat('M/y', getCurrentTimestamp),
                                                                          )
                                                                          .where(
                                                                            'created_by',
                                                                            isEqualTo:
                                                                                currentUserReference,
                                                                          ),
                                                                  singleRecord:
                                                                      true,
                                                                ).then((s) => s
                                                                        .firstOrNull);
                                                                if ((_model.statsRef !=
                                                                        null) ==
                                                                    true) {
                                                                  await actions
                                                                      .editIndexInDocumentArray(
                                                                    functions
                                                                        .getDateIndex(),
                                                                    _model
                                                                        .amountCompleted!,
                                                                    _model
                                                                        .statsRef!
                                                                        .reference,
                                                                    'num_completed',
                                                                  );
                                                                } else {
                                                                  _model.daysOfWeekDueHabits =
                                                                      await actions
                                                                          .getDaysOfWeekHabits(
                                                                    currentUserReference!,
                                                                  );

                                                                  await StatisticsRecord
                                                                      .collection
                                                                      .doc()
                                                                      .set({
                                                                    ...createStatisticsRecordData(
                                                                      createdBy:
                                                                          currentUserReference,
                                                                      monthYear: dateTimeFormat(
                                                                          'M/y',
                                                                          getCurrentTimestamp),
                                                                    ),
                                                                    ...mapToFirestore(
                                                                      {
                                                                        'num_should_complete': functions.newDueHabitsList(
                                                                            _model.daysOfWeekDueHabits!
                                                                                .toList(),
                                                                            valueOrDefault<bool>(currentUserDocument?.newUser,
                                                                                false)),
                                                                        'num_completed':
                                                                            functions.defaultDocArr(),
                                                                      },
                                                                    ),
                                                                  });

                                                                  await currentUserReference!
                                                                      .update(
                                                                          createUsersRecordData(
                                                                    newUser:
                                                                        false,
                                                                  ));
                                                                  _model.newStatsRef =
                                                                      await queryStatisticsRecordOnce(
                                                                    queryBuilder: (statisticsRecord) =>
                                                                        statisticsRecord
                                                                            .where(
                                                                              'monthYear',
                                                                              isEqualTo: dateTimeFormat('M/y', getCurrentTimestamp),
                                                                            )
                                                                            .where(
                                                                              'created_by',
                                                                              isEqualTo: currentUserReference,
                                                                            ),
                                                                    singleRecord:
                                                                        true,
                                                                  ).then((s) =>
                                                                          s.firstOrNull);
                                                                  await actions
                                                                      .editIndexInDocumentArray(
                                                                    functions
                                                                        .getDateIndex(),
                                                                    _model
                                                                        .amountCompleted!,
                                                                    _model
                                                                        .newStatsRef!
                                                                        .reference,
                                                                    'num_completed',
                                                                  );
                                                                }

                                                                setState(() {});
                                                              },
                                                              child: Container(
                                                                width: 30.0,
                                                                height: 30.0,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: listViewHabitsRecord
                                                                          .completed
                                                                          .contains(dateTimeFormat(
                                                                              'd/M/y',
                                                                              getCurrentTimestamp))
                                                                      ? FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary
                                                                      : FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryBackground,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              10.0),
                                                                  border: Border
                                                                      .all(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .accent3,
                                                                  ),
                                                                ),
                                                                child:
                                                                    Visibility(
                                                                  visible: listViewHabitsRecord
                                                                          .completed
                                                                          .contains(dateTimeFormat(
                                                                              'd/M/y',
                                                                              getCurrentTimestamp))
                                                                      ? true
                                                                      : false,
                                                                  child: Icon(
                                                                    Icons
                                                                        .check_rounded,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                    size: 21.0,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FFButtonWidget(
                                    onPressed: () async {
                                      context.goNamed('homePage');
                                    },
                                    text: 'Habits Menu',
                                    icon: Icon(
                                      Icons.arrow_back,
                                      size: 15.0,
                                    ),
                                    options: FFButtonOptions(
                                      width: 150.0,
                                      height: 40.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          24.0, 0.0, 24.0, 0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmallFamily,
                                            color: Colors.white,
                                            letterSpacing: 0.0,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmallFamily),
                                          ),
                                      elevation: 3.0,
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(24.0),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
