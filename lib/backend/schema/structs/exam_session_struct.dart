// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ExamSessionStruct extends BaseStruct {
  ExamSessionStruct({
    String? sessionId,
    String? mode,
    String? currentFront,
    String? currentBlock,
    int? currentQIndex,
    int? score,
    int? totalAnswered,
  })  : _sessionId = sessionId,
        _mode = mode,
        _currentFront = currentFront,
        _currentBlock = currentBlock,
        _currentQIndex = currentQIndex,
        _score = score,
        _totalAnswered = totalAnswered;

  // "sessionId" field.
  String? _sessionId;
  String get sessionId => _sessionId ?? '';
  set sessionId(String? val) => _sessionId = val;

  bool hasSessionId() => _sessionId != null;

  // "mode" field.
  String? _mode;
  String get mode => _mode ?? '';
  set mode(String? val) => _mode = val;

  bool hasMode() => _mode != null;

  // "currentFront" field.
  String? _currentFront;
  String get currentFront => _currentFront ?? '';
  set currentFront(String? val) => _currentFront = val;

  bool hasCurrentFront() => _currentFront != null;

  // "currentBlock" field.
  String? _currentBlock;
  String get currentBlock => _currentBlock ?? '';
  set currentBlock(String? val) => _currentBlock = val;

  bool hasCurrentBlock() => _currentBlock != null;

  // "currentQIndex" field.
  int? _currentQIndex;
  int get currentQIndex => _currentQIndex ?? 0;
  set currentQIndex(int? val) => _currentQIndex = val;

  void incrementCurrentQIndex(int amount) =>
      currentQIndex = currentQIndex + amount;

  bool hasCurrentQIndex() => _currentQIndex != null;

  // "score" field.
  int? _score;
  int get score => _score ?? 0;
  set score(int? val) => _score = val;

  void incrementScore(int amount) => score = score + amount;

  bool hasScore() => _score != null;

  // "totalAnswered" field.
  int? _totalAnswered;
  int get totalAnswered => _totalAnswered ?? 0;
  set totalAnswered(int? val) => _totalAnswered = val;

  void incrementTotalAnswered(int amount) =>
      totalAnswered = totalAnswered + amount;

  bool hasTotalAnswered() => _totalAnswered != null;

  static ExamSessionStruct fromMap(Map<String, dynamic> data) =>
      ExamSessionStruct(
        sessionId: data['sessionId'] as String?,
        mode: data['mode'] as String?,
        currentFront: data['currentFront'] as String?,
        currentBlock: data['currentBlock'] as String?,
        currentQIndex: castToType<int>(data['currentQIndex']),
        score: castToType<int>(data['score']),
        totalAnswered: castToType<int>(data['totalAnswered']),
      );

  static ExamSessionStruct? maybeFromMap(dynamic data) => data is Map
      ? ExamSessionStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'sessionId': _sessionId,
        'mode': _mode,
        'currentFront': _currentFront,
        'currentBlock': _currentBlock,
        'currentQIndex': _currentQIndex,
        'score': _score,
        'totalAnswered': _totalAnswered,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'sessionId': serializeParam(
          _sessionId,
          ParamType.String,
        ),
        'mode': serializeParam(
          _mode,
          ParamType.String,
        ),
        'currentFront': serializeParam(
          _currentFront,
          ParamType.String,
        ),
        'currentBlock': serializeParam(
          _currentBlock,
          ParamType.String,
        ),
        'currentQIndex': serializeParam(
          _currentQIndex,
          ParamType.int,
        ),
        'score': serializeParam(
          _score,
          ParamType.int,
        ),
        'totalAnswered': serializeParam(
          _totalAnswered,
          ParamType.int,
        ),
      }.withoutNulls;

  static ExamSessionStruct fromSerializableMap(Map<String, dynamic> data) =>
      ExamSessionStruct(
        sessionId: deserializeParam(
          data['sessionId'],
          ParamType.String,
          false,
        ),
        mode: deserializeParam(
          data['mode'],
          ParamType.String,
          false,
        ),
        currentFront: deserializeParam(
          data['currentFront'],
          ParamType.String,
          false,
        ),
        currentBlock: deserializeParam(
          data['currentBlock'],
          ParamType.String,
          false,
        ),
        currentQIndex: deserializeParam(
          data['currentQIndex'],
          ParamType.int,
          false,
        ),
        score: deserializeParam(
          data['score'],
          ParamType.int,
          false,
        ),
        totalAnswered: deserializeParam(
          data['totalAnswered'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'ExamSessionStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ExamSessionStruct &&
        sessionId == other.sessionId &&
        mode == other.mode &&
        currentFront == other.currentFront &&
        currentBlock == other.currentBlock &&
        currentQIndex == other.currentQIndex &&
        score == other.score &&
        totalAnswered == other.totalAnswered;
  }

  @override
  int get hashCode => const ListEquality().hash([
        sessionId,
        mode,
        currentFront,
        currentBlock,
        currentQIndex,
        score,
        totalAnswered
      ]);
}

ExamSessionStruct createExamSessionStruct({
  String? sessionId,
  String? mode,
  String? currentFront,
  String? currentBlock,
  int? currentQIndex,
  int? score,
  int? totalAnswered,
}) =>
    ExamSessionStruct(
      sessionId: sessionId,
      mode: mode,
      currentFront: currentFront,
      currentBlock: currentBlock,
      currentQIndex: currentQIndex,
      score: score,
      totalAnswered: totalAnswered,
    );
