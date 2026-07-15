import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import '/index.dart';
import 'exam_question_screen_widget.dart' show ExamQuestionScreenWidget;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ExamQuestionScreenModel
    extends FlutterFlowModel<ExamQuestionScreenWidget> {
  ///  Local state fields for this page.

  List<QuestionItemStruct> examQuestions = [];
  void addToExamQuestions(QuestionItemStruct item) => examQuestions.add(item);
  void removeFromExamQuestions(QuestionItemStruct item) =>
      examQuestions.remove(item);
  void removeAtIndexFromExamQuestions(int index) =>
      examQuestions.removeAt(index);
  void insertAtIndexInExamQuestions(int index, QuestionItemStruct item) =>
      examQuestions.insert(index, item);
  void updateExamQuestionsAtIndex(
          int index, Function(QuestionItemStruct) updateFn) =>
      examQuestions[index] = updateFn(examQuestions[index]);

  int examIndex = 0;

  String? localSelected;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - fetchQuestionsFromURL] action in ExamQuestionScreen widget.
  List<QuestionItemStruct>? loadedQuestions;
  // Stores action output result for [Custom Action - pickRandomQuestions] action in ExamQuestionScreen widget.
  List<QuestionItemStruct>? examQ;
  // Stores action output result for [Custom Action - evaluateAnswer] action in Container widget.
  bool? isCorrectResultA;
  // Stores action output result for [Custom Action - getNextBlock] action in Container widget.
  String? nextBlockA;
  // Stores action output result for [Custom Action - fetchQuestionsFromURL] action in Container widget.
  List<QuestionItemStruct>? newLoadedA;
  // Stores action output result for [Custom Action - pickRandomQuestions] action in Container widget.
  List<QuestionItemStruct>? newExamQA;
  // Stores action output result for [Custom Action - evaluateAnswer] action in Container widget.
  bool? isCorrectResultB;
  // Stores action output result for [Custom Action - getNextBlock] action in Container widget.
  String? nextBlockB;
  // Stores action output result for [Custom Action - fetchQuestionsFromURL] action in Container widget.
  List<QuestionItemStruct>? newLoadedB;
  // Stores action output result for [Custom Action - pickRandomQuestions] action in Container widget.
  List<QuestionItemStruct>? newExamQB;
  // Stores action output result for [Custom Action - evaluateAnswer] action in Container widget.
  bool? isCorrectResultC;
  // Stores action output result for [Custom Action - getNextBlock] action in Container widget.
  String? nextBlockC;
  // Stores action output result for [Custom Action - fetchQuestionsFromURL] action in Container widget.
  List<QuestionItemStruct>? newLoadedC;
  // Stores action output result for [Custom Action - pickRandomQuestions] action in Container widget.
  List<QuestionItemStruct>? newExamQC;
  // Stores action output result for [Custom Action - evaluateAnswer] action in Container widget.
  bool? isCorrectResultD;
  // Stores action output result for [Custom Action - getNextBlock] action in Container widget.
  String? nextBlockD;
  // Stores action output result for [Custom Action - fetchQuestionsFromURL] action in Container widget.
  List<QuestionItemStruct>? newLoadedD;
  // Stores action output result for [Custom Action - pickRandomQuestions] action in Container widget.
  List<QuestionItemStruct>? newExamQD;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
