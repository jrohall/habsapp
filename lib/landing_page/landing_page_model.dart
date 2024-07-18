import '/components/mobile_devies_widget.dart';
import '/components/mobile_menu_bar_widget.dart';
import '/components/web_landing_menu_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'landing_page_widget.dart' show LandingPageWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LandingPageModel extends FlutterFlowModel<LandingPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for web_landing_menu component.
  late WebLandingMenuModel webLandingMenuModel;
  // Model for mobile_menu_bar component.
  late MobileMenuBarModel mobileMenuBarModel;
  // Model for mobileDevies component.
  late MobileDeviesModel mobileDeviesModel;

  @override
  void initState(BuildContext context) {
    webLandingMenuModel = createModel(context, () => WebLandingMenuModel());
    mobileMenuBarModel = createModel(context, () => MobileMenuBarModel());
    mobileDeviesModel = createModel(context, () => MobileDeviesModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    webLandingMenuModel.dispose();
    mobileMenuBarModel.dispose();
    mobileDeviesModel.dispose();
  }
}
