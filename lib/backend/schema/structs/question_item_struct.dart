// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class QuestionItemStruct extends BaseStruct {
  QuestionItemStruct({
    int? id,
    String? question,
    String? optionA,
    String? optionB,
    String? optionC,
    String? optionD,
    String? correctAnswer,
    String? front,
    String? block,
  })  : _id = id,
        _question = question,
        _optionA = optionA,
        _optionB = optionB,
        _optionC = optionC,
        _optionD = optionD,
        _correctAnswer = correctAnswer,
        _front = front,
        _block = block;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

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

  // "front" field.
  String? _front;
  String get front => _front ?? '';
  set front(String? val) => _front = val;

  bool hasFront() => _front != null;

  // "block" field.
  String? _block;
  String get block => _block ?? '';
  set block(String? val) => _block = val;

  bool hasBlock() => _block != null;

  static QuestionItemStruct fromMap(Map<String, dynamic> data) =>
      QuestionItemStruct(
        id: castToType<int>(data['id']),
        question: data['question'] as String?,
        optionA: data['optionA'] as String?,
        optionB: data['optionB'] as String?,
        optionC: data['optionC'] as String?,
        optionD: data['optionD'] as String?,
        correctAnswer: data['correctAnswer'] as String?,
        front: data['front'] as String?,
        block: data['block'] as String?,
      );

  static QuestionItemStruct? maybeFromMap(dynamic data) => data is Map
      ? QuestionItemStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'question': _question,
        'optionA': _optionA,
        'optionB': _optionB,
        'optionC': _optionC,
        'optionD': _optionD,
        'correctAnswer': _correctAnswer,
        'front': _front,
        'block': _block,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
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
        'front': serializeParam(
          _front,
          ParamType.String,
        ),
        'block': serializeParam(
          _block,
          ParamType.String,
        ),
      }.withoutNulls;

  static QuestionItemStruct fromSerializableMap(Map<String, dynamic> data) =>
      QuestionItemStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
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
        front: deserializeParam(
          data['front'],
          ParamType.String,
          false,
        ),
        block: deserializeParam(
          data['block'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'QuestionItemStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is QuestionItemStruct &&
        id == other.id &&
        question == other.question &&
        optionA == other.optionA &&
        optionB == other.optionB &&
        optionC == other.optionC &&
        optionD == other.optionD &&
        correctAnswer == other.correctAnswer &&
        front == other.front &&
        block == other.block;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        question,
        optionA,
        optionB,
        optionC,
        optionD,
        correctAnswer,
        front,
        block
      ]);
}

QuestionItemStruct createQuestionItemStruct({
  int? id,
  String? question,
  String? optionA,
  String? optionB,
  String? optionC,
  String? optionD,
  String? correctAnswer,
  String? front,
  String? block,
}) =>
    QuestionItemStruct(
      id: id,
      question: question,
      optionA: optionA,
      optionB: optionB,
      optionC: optionC,
      optionD: optionD,
      correctAnswer: correctAnswer,
      front: front,
      block: block,
    );
