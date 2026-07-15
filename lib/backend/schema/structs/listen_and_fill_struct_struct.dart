// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ListenAndFillStructStruct extends BaseStruct {
  ListenAndFillStructStruct({
    int? id,
    String? title,
    String? difficulty,
    List<String>? availableWords,
    String? answer1,
    String? answer2,
    String? answer3,
    String? answer4,
    String? answer5,
    String? textWithGaps,
    String? audioURL,
  })  : _id = id,
        _title = title,
        _difficulty = difficulty,
        _availableWords = availableWords,
        _answer1 = answer1,
        _answer2 = answer2,
        _answer3 = answer3,
        _answer4 = answer4,
        _answer5 = answer5,
        _textWithGaps = textWithGaps,
        _audioURL = audioURL;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;

  bool hasTitle() => _title != null;

  // "difficulty" field.
  String? _difficulty;
  String get difficulty => _difficulty ?? '';
  set difficulty(String? val) => _difficulty = val;

  bool hasDifficulty() => _difficulty != null;

  // "availableWords" field.
  List<String>? _availableWords;
  List<String> get availableWords => _availableWords ?? const [];
  set availableWords(List<String>? val) => _availableWords = val;

  void updateAvailableWords(Function(List<String>) updateFn) {
    updateFn(_availableWords ??= []);
  }

  bool hasAvailableWords() => _availableWords != null;

  // "answer1" field.
  String? _answer1;
  String get answer1 => _answer1 ?? '';
  set answer1(String? val) => _answer1 = val;

  bool hasAnswer1() => _answer1 != null;

  // "answer2" field.
  String? _answer2;
  String get answer2 => _answer2 ?? '';
  set answer2(String? val) => _answer2 = val;

  bool hasAnswer2() => _answer2 != null;

  // "answer3" field.
  String? _answer3;
  String get answer3 => _answer3 ?? '';
  set answer3(String? val) => _answer3 = val;

  bool hasAnswer3() => _answer3 != null;

  // "answer4" field.
  String? _answer4;
  String get answer4 => _answer4 ?? '';
  set answer4(String? val) => _answer4 = val;

  bool hasAnswer4() => _answer4 != null;

  // "answer5" field.
  String? _answer5;
  String get answer5 => _answer5 ?? '';
  set answer5(String? val) => _answer5 = val;

  bool hasAnswer5() => _answer5 != null;

  // "textWithGaps" field.
  String? _textWithGaps;
  String get textWithGaps => _textWithGaps ?? '';
  set textWithGaps(String? val) => _textWithGaps = val;

  bool hasTextWithGaps() => _textWithGaps != null;

  // "audioURL" field.
  String? _audioURL;
  String get audioURL => _audioURL ?? '';
  set audioURL(String? val) => _audioURL = val;

  bool hasAudioURL() => _audioURL != null;

  static ListenAndFillStructStruct fromMap(Map<String, dynamic> data) =>
      ListenAndFillStructStruct(
        id: castToType<int>(data['id']),
        title: data['title'] as String?,
        difficulty: data['difficulty'] as String?,
        availableWords: getDataList(data['availableWords']),
        answer1: data['answer1'] as String?,
        answer2: data['answer2'] as String?,
        answer3: data['answer3'] as String?,
        answer4: data['answer4'] as String?,
        answer5: data['answer5'] as String?,
        textWithGaps: data['textWithGaps'] as String?,
        audioURL: data['audioURL'] as String?,
      );

  static ListenAndFillStructStruct? maybeFromMap(dynamic data) => data is Map
      ? ListenAndFillStructStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'title': _title,
        'difficulty': _difficulty,
        'availableWords': _availableWords,
        'answer1': _answer1,
        'answer2': _answer2,
        'answer3': _answer3,
        'answer4': _answer4,
        'answer5': _answer5,
        'textWithGaps': _textWithGaps,
        'audioURL': _audioURL,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'difficulty': serializeParam(
          _difficulty,
          ParamType.String,
        ),
        'availableWords': serializeParam(
          _availableWords,
          ParamType.String,
          isList: true,
        ),
        'answer1': serializeParam(
          _answer1,
          ParamType.String,
        ),
        'answer2': serializeParam(
          _answer2,
          ParamType.String,
        ),
        'answer3': serializeParam(
          _answer3,
          ParamType.String,
        ),
        'answer4': serializeParam(
          _answer4,
          ParamType.String,
        ),
        'answer5': serializeParam(
          _answer5,
          ParamType.String,
        ),
        'textWithGaps': serializeParam(
          _textWithGaps,
          ParamType.String,
        ),
        'audioURL': serializeParam(
          _audioURL,
          ParamType.String,
        ),
      }.withoutNulls;

  static ListenAndFillStructStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ListenAndFillStructStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
        difficulty: deserializeParam(
          data['difficulty'],
          ParamType.String,
          false,
        ),
        availableWords: deserializeParam<String>(
          data['availableWords'],
          ParamType.String,
          true,
        ),
        answer1: deserializeParam(
          data['answer1'],
          ParamType.String,
          false,
        ),
        answer2: deserializeParam(
          data['answer2'],
          ParamType.String,
          false,
        ),
        answer3: deserializeParam(
          data['answer3'],
          ParamType.String,
          false,
        ),
        answer4: deserializeParam(
          data['answer4'],
          ParamType.String,
          false,
        ),
        answer5: deserializeParam(
          data['answer5'],
          ParamType.String,
          false,
        ),
        textWithGaps: deserializeParam(
          data['textWithGaps'],
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
  String toString() => 'ListenAndFillStructStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is ListenAndFillStructStruct &&
        id == other.id &&
        title == other.title &&
        difficulty == other.difficulty &&
        listEquality.equals(availableWords, other.availableWords) &&
        answer1 == other.answer1 &&
        answer2 == other.answer2 &&
        answer3 == other.answer3 &&
        answer4 == other.answer4 &&
        answer5 == other.answer5 &&
        textWithGaps == other.textWithGaps &&
        audioURL == other.audioURL;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        title,
        difficulty,
        availableWords,
        answer1,
        answer2,
        answer3,
        answer4,
        answer5,
        textWithGaps,
        audioURL
      ]);
}

ListenAndFillStructStruct createListenAndFillStructStruct({
  int? id,
  String? title,
  String? difficulty,
  String? answer1,
  String? answer2,
  String? answer3,
  String? answer4,
  String? answer5,
  String? textWithGaps,
  String? audioURL,
}) =>
    ListenAndFillStructStruct(
      id: id,
      title: title,
      difficulty: difficulty,
      answer1: answer1,
      answer2: answer2,
      answer3: answer3,
      answer4: answer4,
      answer5: answer5,
      textWithGaps: textWithGaps,
      audioURL: audioURL,
    );
