import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import '/index.dart';
import 'listening_m_c_q_screen_widget.dart' show ListeningMCQScreenWidget;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ListeningMCQScreenModel
    extends FlutterFlowModel<ListeningMCQScreenWidget> {
  ///  Local state fields for this page.

  List<HistoryQuestionsStruct> pageQuestions = [];
  void addToPageQuestions(HistoryQuestionsStruct item) =>
      pageQuestions.add(item);
  void removeFromPageQuestions(HistoryQuestionsStruct item) =>
      pageQuestions.remove(item);
  void removeAtIndexFromPageQuestions(int index) =>
      pageQuestions.removeAt(index);
  void insertAtIndexInPageQuestions(int index, HistoryQuestionsStruct item) =>
      pageQuestions.insert(index, item);
  void updatePageQuestionsAtIndex(
          int index, Function(HistoryQuestionsStruct) updateFn) =>
      pageQuestions[index] = updateFn(pageQuestions[index]);

  int? pageIndex;

  List<String> pageAnswers = [];
  void addToPageAnswers(String item) => pageAnswers.add(item);
  void removeFromPageAnswers(String item) => pageAnswers.remove(item);
  void removeAtIndexFromPageAnswers(int index) => pageAnswers.removeAt(index);
  void insertAtIndexInPageAnswers(int index, String item) =>
      pageAnswers.insert(index, item);
  void updatePageAnswersAtIndex(int index, Function(String) updateFn) =>
      pageAnswers[index] = updateFn(pageAnswers[index]);

  String? localSelected;

  bool? localShowFeedback;

  bool? localIsAnswered;

  int currentHistoryIndex = 1;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - fetchListeningFromURL] action in ListeningMCQScreen widget.
  List<HistoryQuestionsStruct>? listeningLoaded;
  // Stores action output result for [Custom Action - getRandomNumber] action in ListeningMCQScreen widget.
  int? randomHistory;
  // Stores action output result for [Custom Action - filterByHistory] action in ListeningMCQScreen widget.
  List<HistoryQuestionsStruct>? filtered;
  // Stores action output result for [Custom Action - getRandomNumber] action in Container widget.
  int? newHistoryValue;
  // Stores action output result for [Custom Action - filterByHistory] action in Container widget.
  List<HistoryQuestionsStruct>? nextFiltered;
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
