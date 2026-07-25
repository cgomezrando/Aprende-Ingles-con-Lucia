// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<bool> evaluateAnswer(
  String selectedAnswer,
  String correctAnswer,
) async {
  return selectedAnswer.trim().toUpperCase() ==
      correctAnswer.trim().toUpperCase();
}
