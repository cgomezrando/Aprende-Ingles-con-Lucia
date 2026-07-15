// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import '/custom_code/actions/index.dart';

Future<int> countExamCorrect(List<UserAnswerStruct> answers) async {
  int correct = 0;
  for (final a in answers) {
    // Cuenta aciertos del examen: todo lo que NO sea listening
    if (a.front != 'listening_mcq' && a.isCorrect) {
      correct++;
    }
  }
  return correct;
}
