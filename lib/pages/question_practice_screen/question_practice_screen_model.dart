import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import '/index.dart';
import 'question_practice_screen_widget.dart' show QuestionPracticeScreenWidget;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class QuestionPracticeScreenModel
    extends FlutterFlowModel<QuestionPracticeScreenWidget> {
  ///  Local state fields for this page.

  List<QuestionItemStruct> practiceQuestions = [];
  void addToPracticeQuestions(QuestionItemStruct item) =>
      practiceQuestions.add(item);
  void removeFromPracticeQuestions(QuestionItemStruct item) =>
      practiceQuestions.remove(item);
  void removeAtIndexFromPracticeQuestions(int index) =>
      practiceQuestions.removeAt(index);
  void insertAtIndexInPracticeQuestions(int index, QuestionItemStruct item) =>
      practiceQuestions.insert(index, item);
  void updatePracticeQuestionsAtIndex(
          int index, Function(QuestionItemStruct) updateFn) =>
      practiceQuestions[index] = updateFn(practiceQuestions[index]);

  int practiceIndex = 0;

  String? localSelected;

  bool localShowFeedback = false;

  String? displayBlockName;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - fetchQuestionsFromURL] action in QuestionPracticeScreen widget.
  List<QuestionItemStruct>? loadedQuestions;
  // Stores action output result for [Custom Action - getBlockDisplayName] action in QuestionPracticeScreen widget.
  String? blockName;
  // Stores action output result for [Custom Action - evaluateAnswer] action in Container widget.
  bool? isCorrectResult;
  // Stores action output result for [Custom Action - evaluateAnswer] action in Container widget.
  bool? isCorrectResultB;
  // Stores action output result for [Custom Action - evaluateAnswer] action in Container widget.
  bool? isCorrectResultC;
  // Stores action output result for [Custom Action - evaluateAnswer] action in Container widget.
  bool? isCorrectResultD;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
