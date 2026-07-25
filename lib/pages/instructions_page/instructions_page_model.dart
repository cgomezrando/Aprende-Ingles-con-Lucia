import '/components/guide_section_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'instructions_page_widget.dart' show InstructionsPageWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class InstructionsPageModel extends FlutterFlowModel<InstructionsPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for GuideSection.
  late GuideSectionModel guideSectionModel1;
  // Model for GuideSection.
  late GuideSectionModel guideSectionModel2;
  // Model for GuideSection.
  late GuideSectionModel guideSectionModel3;
  // Model for GuideSection.
  late GuideSectionModel guideSectionModel4;
  // Model for GuideSection.
  late GuideSectionModel guideSectionModel5;
  // Model for GuideSection.
  late GuideSectionModel guideSectionModel6;

  @override
  void initState(BuildContext context) {
    guideSectionModel1 = createModel(context, () => GuideSectionModel());
    guideSectionModel2 = createModel(context, () => GuideSectionModel());
    guideSectionModel3 = createModel(context, () => GuideSectionModel());
    guideSectionModel4 = createModel(context, () => GuideSectionModel());
    guideSectionModel5 = createModel(context, () => GuideSectionModel());
    guideSectionModel6 = createModel(context, () => GuideSectionModel());
  }

  @override
  void dispose() {
    guideSectionModel1.dispose();
    guideSectionModel2.dispose();
    guideSectionModel3.dispose();
    guideSectionModel4.dispose();
    guideSectionModel5.dispose();
    guideSectionModel6.dispose();
  }
}
