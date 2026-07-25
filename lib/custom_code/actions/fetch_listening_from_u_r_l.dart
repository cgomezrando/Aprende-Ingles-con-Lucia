// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:convert';
import 'package:http/http.dart' as http;

const String LISTENING_MCQ_URL =
    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/aprende-inglescon-lucia-cezp7v/assets/ofqm42gpi3gq/listening_mcq.json';

Future<List<HistoryQuestionsStruct>> fetchListeningFromURL() async {
  final response = await http.get(Uri.parse(LISTENING_MCQ_URL));
  if (response.statusCode != 200) return [];
  final List<dynamic> raw = json.decode(response.body);
  return raw
      .map((e) => HistoryQuestionsStruct(
            id: e['id'],
            history: e['history'],
            historyTitle: e['historyTitle'],
            question: e['question'],
            optionA: e['optionA'],
            optionB: e['optionB'],
            optionC: e['optionC'],
            optionD: e['optionD'],
            correctAnswer: e['correctAnswer'],
            audioURL: e['audioURL'],
          ))
      .toList();
}
