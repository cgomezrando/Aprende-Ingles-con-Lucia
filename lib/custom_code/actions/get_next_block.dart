// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<String> getNextBlock(String currentBlock) async {
  final Map<String, String> nextBlocks = {
    'verbs': 'irregular_verbs_past_simple',
    'irregular_verbs_past_simple': 'irregular_verbs_past_participle',
    'irregular_verbs_past_participle': 'synonyms',
    'synonyms': 'antonyms',
    'antonyms': 'phrasal_verbs',
    'phrasal_verbs': 'sentence_order', // nuevo (grammar)
    'sentence_order': 'prepositions',
    'prepositions': 'confusing_words', // nuevo (vocabulary)
    'confusing_words': 'vocabulary',
    'vocabulary': 'DONE',
  };
  return nextBlocks[currentBlock] ?? 'DONE';
}
