// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<String> getBlockDisplayName(String block) async {
  final Map<String, String> names = {
    'verbs': 'Regular Verbs',
    'irregular_verbs_past_simple': 'Irregular Verbs (Past Simple)',
    'irregular_verbs_past_participle': 'Irregular Verbs (Past Participle)',
    'synonyms': 'Synonyms',
    'antonyms': 'Antonyms',
    'phrasal_verbs': 'Phrasal Verbs',
    'sentence_order': 'Sentence Order',
    'prepositions': 'Prepositions',
    'confusing_words': 'Confusing Words',
    'vocabulary': 'Vocabulary',
  };
  return names[block] ?? block;
}
