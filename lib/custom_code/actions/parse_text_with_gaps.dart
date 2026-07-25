// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<List<String>> parseTextWithGaps(String textWithGaps) async {
  final RegExp gapPattern = RegExp(r'(\[\d\])');
  final List<String> parts = textWithGaps.split(gapPattern);
  final List<String> markers =
      gapPattern.allMatches(textWithGaps).map((m) => m.group(0)!).toList();
  final List<String> result = [];
  for (int i = 0; i < parts.length; i++) {
    if (parts[i].isNotEmpty) result.add(parts[i]);
    if (i < markers.length) result.add(markers[i]);
  }
  return result;
}
