import '/components/mobile_menu_bar_widget.dart';
import '/components/web_landing_menu_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'support_page_widget.dart' show SupportPageWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class SupportPageModel extends FlutterFlowModel<SupportPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for web_landing_menu component.
  late WebLandingMenuModel webLandingMenuModel;
  // Model for mobile_menu_bar component.
  late MobileMenuBarModel mobileMenuBarModel;
  // State field(s) for subject widget.
  FocusNode? subjectFocusNode1;
  TextEditingController? subjectTextController1;
  String? Function(BuildContext, String?)? subjectTextController1Validator;
  // State field(s) for message widget.
  FocusNode? messageFocusNode1;
  TextEditingController? messageTextController1;
  String? Function(BuildContext, String?)? messageTextController1Validator;
  // State field(s) for subject widget.
  FocusNode? subjectFocusNode2;
  TextEditingController? subjectTextController2;
  String? Function(BuildContext, String?)? subjectTextController2Validator;
  // State field(s) for message widget.
  FocusNode? messageFocusNode2;
  TextEditingController? messageTextController2;
  String? Function(BuildContext, String?)? messageTextController2Validator;

  @override
  void initState(BuildContext context) {
    webLandingMenuModel = createModel(context, () => WebLandingMenuModel());
    mobileMenuBarModel = createModel(context, () => MobileMenuBarModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    webLandingMenuModel.dispose();
    mobileMenuBarModel.dispose();
    subjectFocusNode1?.dispose();
    subjectTextController1?.dispose();

    messageFocusNode1?.dispose();
    messageTextController1?.dispose();

    subjectFocusNode2?.dispose();
    subjectTextController2?.dispose();

    messageFocusNode2?.dispose();
    messageTextController2?.dispose();
  }
}
