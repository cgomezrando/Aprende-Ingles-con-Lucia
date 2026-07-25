// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<int> evaluateFillAnswers(
  List<String> userAnswers,
  String answer1,
  String answer2,
  String answer3,
  String answer4,
  String answer5,
) async {
  final List<String> correct = [answer1, answer2, answer3, answer4, answer5];
  int score = 0;
  for (int i = 0; i < 5; i++) {
    if (userAnswers.length > i &&
        userAnswers[i].trim().toLowerCase() == correct[i].trim().toLowerCase())
      score++;
  }
  return score;
}
