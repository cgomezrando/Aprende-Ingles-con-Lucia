import '/backend/schema/structs/index.dart';
import '/components/breakdown_card_widget.dart';
import '/components/decorative_sparkle_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import '/index.dart';
import 'results_screen_widget.dart' show ResultsScreenWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';

class ResultsScreenModel extends FlutterFlowModel<ResultsScreenWidget> {
  ///  Local state fields for this page.

  int? correctCount;

  int? totalCount;

  String? percentageText;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - countCorrectAnswers] action in ResultsScreen widget.
  int? countResult;
  // Stores action output result for [Custom Action - calculatePercentage] action in ResultsScreen widget.
  String? percentResult;
  // Stores action output result for [Custom Action - countExamCorrect] action in ResultsScreen widget.
  int? examCorrect;
  // Model for DecorativeSparkle.
  late DecorativeSparkleModel decorativeSparkleModel1;
  // Model for DecorativeSparkle.
  late DecorativeSparkleModel decorativeSparkleModel2;
  // Model for DecorativeSparkle.
  late DecorativeSparkleModel decorativeSparkleModel3;
  // Model for DecorativeSparkle.
  late DecorativeSparkleModel decorativeSparkleModel4;
  // Model for BreakdownCard.
  late BreakdownCardModel breakdownCardModel1;
  // Model for BreakdownCard.
  late BreakdownCardModel breakdownCardModel2;
  // Model for BreakdownCard.
  late BreakdownCardModel breakdownCardModel3;

  @override
  void initState(BuildContext context) {
    decorativeSparkleModel1 =
        createModel(context, () => DecorativeSparkleModel());
    decorativeSparkleModel2 =
        createModel(context, () => DecorativeSparkleModel());
    decorativeSparkleModel3 =
        createModel(context, () => DecorativeSparkleModel());
    decorativeSparkleModel4 =
        createModel(context, () => DecorativeSparkleModel());
    breakdownCardModel1 = createModel(context, () => BreakdownCardModel());
    breakdownCardModel2 = createModel(context, () => BreakdownCardModel());
    breakdownCardModel3 = createModel(context, () => BreakdownCardModel());
  }

  @override
  void dispose() {
    decorativeSparkleModel1.dispose();
    decorativeSparkleModel2.dispose();
    decorativeSparkleModel3.dispose();
    decorativeSparkleModel4.dispose();
    breakdownCardModel1.dispose();
    breakdownCardModel2.dispose();
    breakdownCardModel3.dispose();
  }
}
