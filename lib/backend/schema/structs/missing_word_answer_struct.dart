// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MissingWordAnswerStruct extends BaseStruct {
  MissingWordAnswerStruct({
    int? wordIndex,
    String? selectedWord,
    String? correctWord,
    bool? isCorrect,
  })  : _wordIndex = wordIndex,
        _selectedWord = selectedWord,
        _correctWord = correctWord,
        _isCorrect = isCorrect;

  // "wordIndex" field.
  int? _wordIndex;
  int get wordIndex => _wordIndex ?? 0;
  set wordIndex(int? val) => _wordIndex = val;

  void incrementWordIndex(int amount) => wordIndex = wordIndex + amount;

  bool hasWordIndex() => _wordIndex != null;

  // "selectedWord" field.
  String? _selectedWord;
  String get selectedWord => _selectedWord ?? '';
  set selectedWord(String? val) => _selectedWord = val;

  bool hasSelectedWord() => _selectedWord != null;

  // "correctWord" field.
  String? _correctWord;
  String get correctWord => _correctWord ?? '';
  set correctWord(String? val) => _correctWord = val;

  bool hasCorrectWord() => _correctWord != null;

  // "isCorrect" field.
  bool? _isCorrect;
  bool get isCorrect => _isCorrect ?? false;
  set isCorrect(bool? val) => _isCorrect = val;

  bool hasIsCorrect() => _isCorrect != null;

  static MissingWordAnswerStruct fromMap(Map<String, dynamic> data) =>
      MissingWordAnswerStruct(
        wordIndex: castToType<int>(data['wordIndex']),
        selectedWord: data['selectedWord'] as String?,
        correctWord: data['correctWord'] as String?,
        isCorrect: data['isCorrect'] as bool?,
      );

  static MissingWordAnswerStruct? maybeFromMap(dynamic data) => data is Map
      ? MissingWordAnswerStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'wordIndex': _wordIndex,
        'selectedWord': _selectedWord,
        'correctWord': _correctWord,
        'isCorrect': _isCorrect,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'wordIndex': serializeParam(
          _wordIndex,
          ParamType.int,
        ),
        'selectedWord': serializeParam(
          _selectedWord,
          ParamType.String,
        ),
        'correctWord': serializeParam(
          _correctWord,
          ParamType.String,
        ),
        'isCorrect': serializeParam(
          _isCorrect,
          ParamType.bool,
        ),
      }.withoutNulls;

  static MissingWordAnswerStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      MissingWordAnswerStruct(
        wordIndex: deserializeParam(
          data['wordIndex'],
          ParamType.int,
          false,
        ),
        selectedWord: deserializeParam(
          data['selectedWord'],
          ParamType.String,
          false,
        ),
        correctWord: deserializeParam(
          data['correctWord'],
          ParamType.String,
          false,
        ),
        isCorrect: deserializeParam(
          data['isCorrect'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'MissingWordAnswerStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is MissingWordAnswerStruct &&
        wordIndex == other.wordIndex &&
        selectedWord == other.selectedWord &&
        correctWord == other.correctWord &&
        isCorrect == other.isCorrect;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([wordIndex, selectedWord, correctWord, isCorrect]);
}

MissingWordAnswerStruct createMissingWordAnswerStruct({
  int? wordIndex,
  String? selectedWord,
  String? correctWord,
  bool? isCorrect,
}) =>
    MissingWordAnswerStruct(
      wordIndex: wordIndex,
      selectedWord: selectedWord,
      correctWord: correctWord,
      isCorrect: isCorrect,
    );
