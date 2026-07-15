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

const Map<String, String> JSON_URLS = {
  'verbs':
      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/aprende-inglescon-lucia-cezp7v/assets/t5u92krcoz3f/verbos.json',
  'irregular_verbs_past_simple':
      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/aprende-inglescon-lucia-cezp7v/assets/1wc04hderuzb/irregular_verbs_past_simple.json',
  'irregular_verbs_past_participle':
      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/aprende-inglescon-lucia-cezp7v/assets/o4y31xzvhthh/irregular_verbs_past_participle.json',
  'synonyms':
      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/aprende-inglescon-lucia-cezp7v/assets/qi0hrkkz51i6/sinonimos.json',
  'antonyms':
      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/aprende-inglescon-lucia-cezp7v/assets/idoda3718fus/antonimos.json',
  'phrasal_verbs':
      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/aprende-inglescon-lucia-cezp7v/assets/zrqdfapmjfaf/phrasal_verbs.json',
  'prepositions':
      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/aprende-inglescon-lucia-cezp7v/assets/u1m26rg0nf74/prepositions.json',
  'vocabulary':
      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/aprende-inglescon-lucia-cezp7v/assets/u446bioxavo5/vocabulario.json',
  'sentence_order':
      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/aprende-inglescon-lucia-cezp7v/assets/j4j6srvmjip3/Sentence_Order.json',
  'confusing_words':
      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/aprende-inglescon-lucia-cezp7v/assets/7371mb63n5ub/Confusing_Words.json',
};

Future<List<QuestionItemStruct>> fetchQuestionsFromURL(
  String block,
  String front,
) async {
  final url = JSON_URLS[block];
  if (url == null) return [];
  final response = await http.get(Uri.parse(url));
  if (response.statusCode != 200) return [];
  final List<dynamic> raw = json.decode(response.body);
  return raw
      .map((e) => QuestionItemStruct(
            id: e['id'] ?? 0,
            question: e['question'] ?? e['Words'] ?? '',
            optionA: e['optionA'] ?? '',
            optionB: e['optionB'] ?? '',
            optionC: e['optionC'] ?? '',
            optionD: e['optionD'] ?? '',
            correctAnswer: e['correctAnswer'] ?? '',
            front: e['front'] ?? '',
            block: e['block'] ?? '',
          ))
      .toList();
}
