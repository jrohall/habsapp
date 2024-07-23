import '/components/mobile_menu_bar_widget.dart';
import '/components/web_landing_menu_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'license_page_model.dart';
export 'license_page_model.dart';

class LicensePageWidget extends StatefulWidget {
  const LicensePageWidget({super.key});

  @override
  State<LicensePageWidget> createState() => _LicensePageWidgetState();
}

class _LicensePageWidgetState extends State<LicensePageWidget>
    with TickerProviderStateMixin {
  late LicensePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LicensePageModel());

    animationsMap.addAll({
      'textOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(-30.0, 0.0),
            end: Offset(0.0, 0.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 110.0.ms,
            duration: 1000.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'textOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 600.0.ms,
            begin: Offset(-30.0, 0.0),
            end: Offset(0.0, 0.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 210.0.ms,
            duration: 1000.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'textOnPageLoadAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(-30.0, 0.0),
            end: Offset(0.0, 0.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 110.0.ms,
            duration: 1000.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'textOnPageLoadAnimation4': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 600.0.ms,
            begin: Offset(-30.0, 0.0),
            end: Offset(0.0, 0.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 210.0.ms,
            duration: 1000.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
    });

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
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        body: Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    if (responsiveVisibility(
                      context: context,
                      phone: false,
                      tablet: false,
                    ))
                      wrapWithModel(
                        model: _model.webLandingMenuModel,
                        updateCallback: () => setState(() {}),
                        child: WebLandingMenuWidget(),
                      ),
                    if (responsiveVisibility(
                      context: context,
                      tabletLandscape: false,
                      desktop: false,
                    ))
                      wrapWithModel(
                        model: _model.mobileMenuBarModel,
                        updateCallback: () => setState(() {}),
                        child: MobileMenuBarWidget(),
                      ),
                    if (responsiveVisibility(
                      context: context,
                      tabletLandscape: false,
                      desktop: false,
                    ))
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(0.0),
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10.0, 30.0, 90.0, 0.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 30.0),
                                    child: Text(
                                      'EULA',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily,
                                            fontSize: 40.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w800,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily),
                                          ),
                                    ).animateOnPageLoad(animationsMap[
                                        'textOnPageLoadAnimation1']!),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 100.0, 25.0),
                                    child: Text(
                                      'Please consult the following document for clarification.',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            fontSize: 15.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w500,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily),
                                          ),
                                    ).animateOnPageLoad(animationsMap[
                                        'textOnPageLoadAnimation2']!),
                                  ),
                                  Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.89,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderRadius: BorderRadius.circular(10.0),
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .lineColor,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(10.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            'End User License Agreement (EULA) for Habs',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily,
                                                  fontSize: 32.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.bold,
                                                  useGoogleFonts: GoogleFonts
                                                          .asMap()
                                                      .containsKey(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMediumFamily),
                                                ),
                                          ),
                                          Container(
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                1.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                            ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Last Updated: July 22, 2024\nPLEASE READ THIS END USER LICENSE AGREEMENT (\"EULA\") CAREFULLY BEFORE USING THE HABS APPLICATION.\n\nThis EULA is a legal agreement between you (either an individual or a single entity) and Jerroh (\"Developer\") concerning your use of the Habs application (\"App\") on both desktop (web) and mobile devices. By installing, copying, or otherwise using the App, you agree to be bound by the terms of this EULA. If you do not agree to the terms of this EULA, do not install or use this app.\n\n1. License Grant\n\nThe Developer grants you a revocable, non-exclusive, non-transferable, limited license to download, install, and use the App solely for your personal, non-commercial purposes strictly in accordance with the terms of this EULA.\n\n2. Restrictions\n\nYou agree not to, and you will not permit others to:\n\n-   Sell, transmit, host, or otherwise commercially exploit the App.\n-   Copy or use the App for any purpose other than personal, non-commercial purposes.\n-   Modify, decrypt, reverse compile, or reverse engineer the App.\n-   Attempt to gain unauthorized access to the App or its related systems or networks.\n\n3. Updates and Maintenance\n\nThe Developer may, from time to time, provide updates, enhancements, or improvements to the App. These may include bug fixes, new features, or modifications. These updates may be automatically installed without providing any additional notice or receiving any additional consent. By using the App, you agree to receive such updates under the terms of this EULA.\n\n4. User-Generated Content\n\nUsers are not permitted to create content within the App but may choose to upload a profile photo. By uploading a profile photo, you grant the Developer a non-exclusive, worldwide, royalty-free license to use, reproduce, and display the photo within the context of the App.\n\n5. Feedback and Suggestions\n\nIf you provide feedback or suggestions to the Developer regarding the App, you agree that the Developer may use such feedback and suggestions without any obligation to credit you or to implement them.\n\n6. Privacy and Data Collection\n\nThe Developer may collect certain personal information from you, such as your email address and name. This information will be used in accordance with the Developer\'s Privacy Policy, which is incorporated into this EULA by reference.\n\n7. Intellectual Property Rights\n\nThe App, including all code, content, and ideas, is the intellectual property of Jerroh. You acknowledge that all rights, title, and interest in and to the App, including any updates, enhancements, and modifications, remain with the Developer.\n\n8. User Support and Communication\n\nUsers can use the website to add suggestions and ask questions about the EULA, privacy policy, and the App in general. The Developer will make reasonable efforts to address user inquiries and feedback.\n\n9. Termination\n\nThis EULA is effective until terminated by the Developer. Your rights under this EULA will terminate automatically without notice if you fail to comply with any term(s) of this EULA. Upon termination, you shall cease all use of the App and uninstall all copies.\n\n10. Governing Law\n\nThis EULA shall be governed by and construed in accordance with the laws of the State of Ohio, United States, without regard to its conflict of law principles.\n\n11. Contact Information\n\nFor any questions or suggestions about this EULA, privacy policy, or the App, you may contact the Developer at the provided website.\n\nBy using the App, you acknowledge that you have read this EULA, understand it, and agree to be bound by its terms and conditions.\n',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily),
                                                      ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ].divide(SizedBox(height: 30.0)),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    if (responsiveVisibility(
                      context: context,
                      phone: false,
                      tablet: false,
                    ))
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(0.0),
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  75.0, 75.0, 300.0, 0.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 30.0),
                                    child: Text(
                                      'End User License Agreement',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily,
                                            fontSize: 75.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w800,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily),
                                          ),
                                    ).animateOnPageLoad(animationsMap[
                                        'textOnPageLoadAnimation3']!),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 300.0, 0.0),
                                    child: Text(
                                      'Please consult the following document for clarification.',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            fontSize: 30.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w500,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily),
                                          ),
                                    ).animateOnPageLoad(animationsMap[
                                        'textOnPageLoadAnimation4']!),
                                  ),
                                  Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.89,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderRadius: BorderRadius.circular(10.0),
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .lineColor,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(10.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            'End User License Agreement (EULA) for Habs',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily,
                                                  fontSize: 32.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.bold,
                                                  useGoogleFonts: GoogleFonts
                                                          .asMap()
                                                      .containsKey(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMediumFamily),
                                                ),
                                          ),
                                          Container(
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                1.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                            ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Last Updated: July 22, 2024\nPLEASE READ THIS END USER LICENSE AGREEMENT (\"EULA\") CAREFULLY BEFORE USING THE HABS APPLICATION.\n\nThis EULA is a legal agreement between you (either an individual or a single entity) and Jerroh (\"Developer\") concerning your use of the Habs application (\"App\") on both desktop (web) and mobile devices. By installing, copying, or otherwise using the App, you agree to be bound by the terms of this EULA. If you do not agree to the terms of this EULA, do not install or use this app.\n\n1. License Grant\n\nThe Developer grants you a revocable, non-exclusive, non-transferable, limited license to download, install, and use the App solely for your personal, non-commercial purposes strictly in accordance with the terms of this EULA.\n\n2. Restrictions\n\nYou agree not to, and you will not permit others to:\n\n-   Sell, transmit, host, or otherwise commercially exploit the App.\n-   Copy or use the App for any purpose other than personal, non-commercial purposes.\n-   Modify, decrypt, reverse compile, or reverse engineer the App.\n-   Attempt to gain unauthorized access to the App or its related systems or networks.\n\n3. Updates and Maintenance\n\nThe Developer may, from time to time, provide updates, enhancements, or improvements to the App. These may include bug fixes, new features, or modifications. These updates may be automatically installed without providing any additional notice or receiving any additional consent. By using the App, you agree to receive such updates under the terms of this EULA.\n\n4. User-Generated Content\n\nUsers are not permitted to create content within the App but may choose to upload a profile photo. By uploading a profile photo, you grant the Developer a non-exclusive, worldwide, royalty-free license to use, reproduce, and display the photo within the context of the App.\n\n5. Feedback and Suggestions\n\nIf you provide feedback or suggestions to the Developer regarding the App, you agree that the Developer may use such feedback and suggestions without any obligation to credit you or to implement them.\n\n6. Privacy and Data Collection\n\nThe Developer may collect certain personal information from you, such as your email address and name. This information will be used in accordance with the Developer\'s Privacy Policy, which is incorporated into this EULA by reference.\n\n7. Intellectual Property Rights\n\nThe App, including all code, content, and ideas, is the intellectual property of Jerroh. You acknowledge that all rights, title, and interest in and to the App, including any updates, enhancements, and modifications, remain with the Developer.\n\n8. User Support and Communication\n\nUsers can use the website to add suggestions and ask questions about the EULA, privacy policy, and the App in general. The Developer will make reasonable efforts to address user inquiries and feedback.\n\n9. Termination\n\nThis EULA is effective until terminated by the Developer. Your rights under this EULA will terminate automatically without notice if you fail to comply with any term(s) of this EULA. Upon termination, you shall cease all use of the App and uninstall all copies.\n\n10. Governing Law\n\nThis EULA shall be governed by and construed in accordance with the laws of the State of Ohio, United States, without regard to its conflict of law principles.\n\n11. Contact Information\n\nFor any questions or suggestions about this EULA, privacy policy, or the App, you may contact the Developer at the provided website.\n\nBy using the App, you acknowledge that you have read this EULA, understand it, and agree to be bound by its terms and conditions.',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily),
                                                      ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ].divide(SizedBox(height: 30.0)),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 20.0, 0.0, 0.0),
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            height: 100.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                            ),
                            child: Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  await launchURL('jerroh.com');
                                },
                                child: Text(
                                  'Made By Jerroh',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyMediumFamily,
                                        letterSpacing: 0.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily),
                                      ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
