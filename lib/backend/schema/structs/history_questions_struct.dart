// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class HistoryQuestionsStruct extends BaseStruct {
  HistoryQuestionsStruct({
    int? id,
    String? history,
    String? question,
    String? optionA,
    String? optionB,
    String? optionC,
    String? optionD,
    String? correctAnswer,
    String? historyTitle,
    String? audioURL,
  })  : _id = id,
        _history = history,
        _question = question,
        _optionA = optionA,
        _optionB = optionB,
        _optionC = optionC,
        _optionD = optionD,
        _correctAnswer = correctAnswer,
        _historyTitle = historyTitle,
        _audioURL = audioURL;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "history" field.
  String? _history;
  String get history => _history ?? '';
  set history(String? val) => _history = val;

  bool hasHistory() => _history != null;

  // "question" field.
  String? _question;
  String get question => _question ?? '';
  set question(String? val) => _question = val;

  bool hasQuestion() => _question != null;

  // "optionA" field.
  String? _optionA;
  String get optionA => _optionA ?? '';
  set optionA(String? val) => _optionA = val;

  bool hasOptionA() => _optionA != null;

  // "optionB" field.
  String? _optionB;
  String get optionB => _optionB ?? '';
  set optionB(String? val) => _optionB = val;

  bool hasOptionB() => _optionB != null;

  // "optionC" field.
  String? _optionC;
  String get optionC => _optionC ?? '';
  set optionC(String? val) => _optionC = val;

  bool hasOptionC() => _optionC != null;

  // "optionD" field.
  String? _optionD;
  String get optionD => _optionD ?? '';
  set optionD(String? val) => _optionD = val;

  bool hasOptionD() => _optionD != null;

  // "correctAnswer" field.
  String? _correctAnswer;
  String get correctAnswer => _correctAnswer ?? '';
  set correctAnswer(String? val) => _correctAnswer = val;

  bool hasCorrectAnswer() => _correctAnswer != null;

  // "historyTitle" field.
  String? _historyTitle;
  String get historyTitle => _historyTitle ?? '';
  set historyTitle(String? val) => _historyTitle = val;

  bool hasHistoryTitle() => _historyTitle != null;

  // "audioURL" field.
  String? _audioURL;
  String get audioURL => _audioURL ?? '';
  set audioURL(String? val) => _audioURL = val;

  bool hasAudioURL() => _audioURL != null;

  static HistoryQuestionsStruct fromMap(Map<String, dynamic> data) =>
      HistoryQuestionsStruct(
        id: castToType<int>(data['id']),
        history: data['history'] as String?,
        question: data['question'] as String?,
        optionA: data['optionA'] as String?,
        optionB: data['optionB'] as String?,
        optionC: data['optionC'] as String?,
        optionD: data['optionD'] as String?,
        correctAnswer: data['correctAnswer'] as String?,
        historyTitle: data['historyTitle'] as String?,
        audioURL: data['audioURL'] as String?,
      );

  static HistoryQuestionsStruct? maybeFromMap(dynamic data) => data is Map
      ? HistoryQuestionsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'history': _history,
        'question': _question,
        'optionA': _optionA,
        'optionB': _optionB,
        'optionC': _optionC,
        'optionD': _optionD,
        'correctAnswer': _correctAnswer,
        'historyTitle': _historyTitle,
        'audioURL': _audioURL,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'history': serializeParam(
          _history,
          ParamType.String,
        ),
        'question': serializeParam(
          _question,
          ParamType.String,
        ),
        'optionA': serializeParam(
          _optionA,
          ParamType.String,
        ),
        'optionB': serializeParam(
          _optionB,
          ParamType.String,
        ),
        'optionC': serializeParam(
          _optionC,
          ParamType.String,
        ),
        'optionD': serializeParam(
          _optionD,
          ParamType.String,
        ),
        'correctAnswer': serializeParam(
          _correctAnswer,
          ParamType.String,
        ),
        'historyTitle': serializeParam(
          _historyTitle,
          ParamType.String,
        ),
        'audioURL': serializeParam(
          _audioURL,
          ParamType.String,
        ),
      }.withoutNulls;

  static HistoryQuestionsStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      HistoryQuestionsStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        history: deserializeParam(
          data['history'],
          ParamType.String,
          false,
        ),
        question: deserializeParam(
          data['question'],
          ParamType.String,
          false,
        ),
        optionA: deserializeParam(
          data['optionA'],
          ParamType.String,
          false,
        ),
        optionB: deserializeParam(
          data['optionB'],
          ParamType.String,
          false,
        ),
        optionC: deserializeParam(
          data['optionC'],
          ParamType.String,
          false,
        ),
        optionD: deserializeParam(
          data['optionD'],
          ParamType.String,
          false,
        ),
        correctAnswer: deserializeParam(
          data['correctAnswer'],
          ParamType.String,
          false,
        ),
        historyTitle: deserializeParam(
          data['historyTitle'],
          ParamType.String,
          false,
        ),
        audioURL: deserializeParam(
          data['audioURL'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'HistoryQuestionsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is HistoryQuestionsStruct &&
        id == other.id &&
        history == other.history &&
        question == other.question &&
        optionA == other.optionA &&
        optionB == other.optionB &&
        optionC == other.optionC &&
        optionD == other.optionD &&
        correctAnswer == other.correctAnswer &&
        historyTitle == other.historyTitle &&
        audioURL == other.audioURL;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        history,
        question,
        optionA,
        optionB,
        optionC,
        optionD,
        correctAnswer,
        historyTitle,
        audioURL
      ]);
}

HistoryQuestionsStruct createHistoryQuestionsStruct({
  int? id,
  String? history,
  String? question,
  String? optionA,
  String? optionB,
  String? optionC,
  String? optionD,
  String? correctAnswer,
  String? historyTitle,
  String? audioURL,
}) =>
    HistoryQuestionsStruct(
      id: id,
      history: history,
      question: question,
      optionA: optionA,
      optionB: optionB,
      optionC: optionC,
      optionD: optionD,
      correctAnswer: correctAnswer,
      historyTitle: historyTitle,
      audioURL: audioURL,
    );
