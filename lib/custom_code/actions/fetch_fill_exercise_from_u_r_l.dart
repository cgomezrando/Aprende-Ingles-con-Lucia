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

const String FILL_EXERCISES_URL =
    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/aprende-inglescon-lucia-cezp7v/assets/h09yv4u5yome/listening_fillwords.json';

Future<List<ListenAndFillStructStruct>> fetchFillExerciseFromURL() async {
  final response = await http.get(Uri.parse(FILL_EXERCISES_URL));
  if (response.statusCode != 200) return [];
  final List<dynamic> raw = json.decode(response.body);
  return raw
      .map((e) => ListenAndFillStructStruct(
            id: e['id'],
            title: e['title'],
            difficulty: e['difficulty'],
            audioURL: e['audioURL'],
            availableWords: List<String>.from(e['availableWords']),
            answer1: e['answer1'],
            answer2: e['answer2'],
            answer3: e['answer3'],
            answer4: e['answer4'],
            answer5: e['answer5'],
            textWithGaps: e['textWithGaps'],
          ))
      .toList();
}
