// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserAnswerStruct extends BaseStruct {
  UserAnswerStruct({
    int? questionId,
    String? selectedAnswer,
    String? correctAnswer,
    bool? isCorrect,
    String? front,
    String? block,
  })  : _questionId = questionId,
        _selectedAnswer = selectedAnswer,
        _correctAnswer = correctAnswer,
        _isCorrect = isCorrect,
        _front = front,
        _block = block;

  // "questionId" field.
  int? _questionId;
  int get questionId => _questionId ?? 0;
  set questionId(int? val) => _questionId = val;

  void incrementQuestionId(int amount) => questionId = questionId + amount;

  bool hasQuestionId() => _questionId != null;

  // "selectedAnswer" field.
  String? _selectedAnswer;
  String get selectedAnswer => _selectedAnswer ?? '';
  set selectedAnswer(String? val) => _selectedAnswer = val;

  bool hasSelectedAnswer() => _selectedAnswer != null;

  // "correctAnswer" field.
  String? _correctAnswer;
  String get correctAnswer => _correctAnswer ?? '';
  set correctAnswer(String? val) => _correctAnswer = val;

  bool hasCorrectAnswer() => _correctAnswer != null;

  // "isCorrect" field.
  bool? _isCorrect;
  bool get isCorrect => _isCorrect ?? false;
  set isCorrect(bool? val) => _isCorrect = val;

  bool hasIsCorrect() => _isCorrect != null;

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

  static UserAnswerStruct fromMap(Map<String, dynamic> data) =>
      UserAnswerStruct(
        questionId: castToType<int>(data['questionId']),
        selectedAnswer: data['selectedAnswer'] as String?,
        correctAnswer: data['correctAnswer'] as String?,
        isCorrect: data['isCorrect'] as bool?,
        front: data['front'] as String?,
        block: data['block'] as String?,
      );

  static UserAnswerStruct? maybeFromMap(dynamic data) => data is Map
      ? UserAnswerStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'questionId': _questionId,
        'selectedAnswer': _selectedAnswer,
        'correctAnswer': _correctAnswer,
        'isCorrect': _isCorrect,
        'front': _front,
        'block': _block,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'questionId': serializeParam(
          _questionId,
          ParamType.int,
        ),
        'selectedAnswer': serializeParam(
          _selectedAnswer,
          ParamType.String,
        ),
        'correctAnswer': serializeParam(
          _correctAnswer,
          ParamType.String,
        ),
        'isCorrect': serializeParam(
          _isCorrect,
          ParamType.bool,
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

  static UserAnswerStruct fromSerializableMap(Map<String, dynamic> data) =>
      UserAnswerStruct(
        questionId: deserializeParam(
          data['questionId'],
          ParamType.int,
          false,
        ),
        selectedAnswer: deserializeParam(
          data['selectedAnswer'],
          ParamType.String,
          false,
        ),
        correctAnswer: deserializeParam(
          data['correctAnswer'],
          ParamType.String,
          false,
        ),
        isCorrect: deserializeParam(
          data['isCorrect'],
          ParamType.bool,
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
  String toString() => 'UserAnswerStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UserAnswerStruct &&
        questionId == other.questionId &&
        selectedAnswer == other.selectedAnswer &&
        correctAnswer == other.correctAnswer &&
        isCorrect == other.isCorrect &&
        front == other.front &&
        block == other.block;
  }

  @override
  int get hashCode => const ListEquality().hash(
      [questionId, selectedAnswer, correctAnswer, isCorrect, front, block]);
}

UserAnswerStruct createUserAnswerStruct({
  int? questionId,
  String? selectedAnswer,
  String? correctAnswer,
  bool? isCorrect,
  String? front,
  String? block,
}) =>
    UserAnswerStruct(
      questionId: questionId,
      selectedAnswer: selectedAnswer,
      correctAnswer: correctAnswer,
      isCorrect: isCorrect,
      front: front,
      block: block,
    );
