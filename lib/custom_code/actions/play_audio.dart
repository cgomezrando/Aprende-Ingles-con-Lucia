// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:just_audio/just_audio.dart';

AudioPlayer? globalAudioPlayer;

Future playAudio(String audioUrl) async {
  globalAudioPlayer ??= AudioPlayer();

  if (globalAudioPlayer!.playing) {
    await globalAudioPlayer!.stop();
  }

  final cleanUrl = audioUrl.replaceAll('"', '').replaceAll("'", '').trim();

  if (cleanUrl.isEmpty || !cleanUrl.startsWith('http')) {
    return;
  }

  await globalAudioPlayer!.setVolume(1.0);
  await globalAudioPlayer!.setUrl(cleanUrl);
  globalAudioPlayer!.play();
}
