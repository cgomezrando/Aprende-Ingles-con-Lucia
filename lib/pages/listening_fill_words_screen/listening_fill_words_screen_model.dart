import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import '/index.dart';
import 'listening_fill_words_screen_widget.dart'
    show ListeningFillWordsScreenWidget;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ListeningFillWordsScreenModel
    extends FlutterFlowModel<ListeningFillWordsScreenWidget> {
  ///  Local state fields for this page.

  List<String> textSegments = [];
  void addToTextSegments(String item) => textSegments.add(item);
  void removeFromTextSegments(String item) => textSegments.remove(item);
  void removeAtIndexFromTextSegments(int index) => textSegments.removeAt(index);
  void insertAtIndexInTextSegments(int index, String item) =>
      textSegments.insert(index, item);
  void updateTextSegmentsAtIndex(int index, Function(String) updateFn) =>
      textSegments[index] = updateFn(textSegments[index]);

  List<String> localFillAnswers = [];
  void addToLocalFillAnswers(String item) => localFillAnswers.add(item);
  void removeFromLocalFillAnswers(String item) => localFillAnswers.remove(item);
  void removeAtIndexFromLocalFillAnswers(int index) =>
      localFillAnswers.removeAt(index);
  void insertAtIndexInLocalFillAnswers(int index, String item) =>
      localFillAnswers.insert(index, item);
  void updateLocalFillAnswersAtIndex(int index, Function(String) updateFn) =>
      localFillAnswers[index] = updateFn(localFillAnswers[index]);

  int? activeSlot;

  List<String> localWordBank = [];
  void addToLocalWordBank(String item) => localWordBank.add(item);
  void removeFromLocalWordBank(String item) => localWordBank.remove(item);
  void removeAtIndexFromLocalWordBank(int index) =>
      localWordBank.removeAt(index);
  void insertAtIndexInLocalWordBank(int index, String item) =>
      localWordBank.insert(index, item);
  void updateLocalWordBankAtIndex(int index, Function(String) updateFn) =>
      localWordBank[index] = updateFn(localWordBank[index]);

  int? fillResult;

  bool showEvaluation = false;

  bool isHole1Correct = false;

  bool isHole2Correct = false;

  bool isHole3Correct = false;

  bool isHole4Correct = false;

  bool isHole5Correct = false;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - fetchFillExerciseFromURL] action in ListeningFillWordsScreen widget.
  List<ListenAndFillStructStruct>? allExercises;
  // Stores action output result for [Custom Action - getRandomNumber] action in ListeningFillWordsScreen widget.
  int? randomFill;
  // Stores action output result for [Custom Action - shuffleList] action in ListeningFillWordsScreen widget.
  List<String>? shuffledBank;
  // Stores action output result for [Custom Action - initUserFillAnswers] action in ListeningFillWordsScreen widget.
  List<String>? emptyAnswers;
  // Stores action output result for [Custom Action - parseTextWithGaps] action in ListeningFillWordsScreen widget.
  List<String>? segments;
  // Stores action output result for [Custom Action - getRandomNumber] action in Container widget.
  int? newFillValue;
  // Stores action output result for [Custom Action - shuffleList] action in Container widget.
  List<String>? shuffledNext;
  // Stores action output result for [Custom Action - initUserFillAnswers] action in Container widget.
  List<String>? emptyNext;
  // Stores action output result for [Custom Action - parseTextWithGaps] action in Container widget.
  List<String>? segmentsNext;
  // Stores action output result for [Custom Action - evaluateFillAnswers] action in Container widget.
  int? evaluationResult;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
