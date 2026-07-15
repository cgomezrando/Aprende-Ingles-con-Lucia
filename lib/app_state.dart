import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _UserName = prefs.getString('ff_UserName') ?? _UserName;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  ExamSessionStruct _currentSession = ExamSessionStruct();
  ExamSessionStruct get currentSession => _currentSession;
  set currentSession(ExamSessionStruct value) {
    _currentSession = value;
  }

  void updateCurrentSessionStruct(Function(ExamSessionStruct) updateFn) {
    updateFn(_currentSession);
  }

  List<UserAnswerStruct> _allAnswers = [];
  List<UserAnswerStruct> get allAnswers => _allAnswers;
  set allAnswers(List<UserAnswerStruct> value) {
    _allAnswers = value;
  }

  void addToAllAnswers(UserAnswerStruct value) {
    allAnswers.add(value);
  }

  void removeFromAllAnswers(UserAnswerStruct value) {
    allAnswers.remove(value);
  }

  void removeAtIndexFromAllAnswers(int index) {
    allAnswers.removeAt(index);
  }

  void updateAllAnswersAtIndex(
    int index,
    UserAnswerStruct Function(UserAnswerStruct) updateFn,
  ) {
    allAnswers[index] = updateFn(_allAnswers[index]);
  }

  void insertAtIndexInAllAnswers(int index, UserAnswerStruct value) {
    allAnswers.insert(index, value);
  }

  List<MissingWordAnswerStruct> _missingAnswers = [];
  List<MissingWordAnswerStruct> get missingAnswers => _missingAnswers;
  set missingAnswers(List<MissingWordAnswerStruct> value) {
    _missingAnswers = value;
  }

  void addToMissingAnswers(MissingWordAnswerStruct value) {
    missingAnswers.add(value);
  }

  void removeFromMissingAnswers(MissingWordAnswerStruct value) {
    missingAnswers.remove(value);
  }

  void removeAtIndexFromMissingAnswers(int index) {
    missingAnswers.removeAt(index);
  }

  void updateMissingAnswersAtIndex(
    int index,
    MissingWordAnswerStruct Function(MissingWordAnswerStruct) updateFn,
  ) {
    missingAnswers[index] = updateFn(_missingAnswers[index]);
  }

  void insertAtIndexInMissingAnswers(int index, MissingWordAnswerStruct value) {
    missingAnswers.insert(index, value);
  }

  int _listeningScore = 0;
  int get listeningScore => _listeningScore;
  set listeningScore(int value) {
    _listeningScore = value;
  }

  int _fillScore = 0;
  int get fillScore => _fillScore;
  set fillScore(int value) {
    _fillScore = value;
  }

  List<HistoryQuestionsStruct> _listeningQuestions = [];
  List<HistoryQuestionsStruct> get listeningQuestions => _listeningQuestions;
  set listeningQuestions(List<HistoryQuestionsStruct> value) {
    _listeningQuestions = value;
  }

  void addToListeningQuestions(HistoryQuestionsStruct value) {
    listeningQuestions.add(value);
  }

  void removeFromListeningQuestions(HistoryQuestionsStruct value) {
    listeningQuestions.remove(value);
  }

  void removeAtIndexFromListeningQuestions(int index) {
    listeningQuestions.removeAt(index);
  }

  void updateListeningQuestionsAtIndex(
    int index,
    HistoryQuestionsStruct Function(HistoryQuestionsStruct) updateFn,
  ) {
    listeningQuestions[index] = updateFn(_listeningQuestions[index]);
  }

  void insertAtIndexInListeningQuestions(
      int index, HistoryQuestionsStruct value) {
    listeningQuestions.insert(index, value);
  }

  HistoryQuestionsStruct _currentListeningQ = HistoryQuestionsStruct();
  HistoryQuestionsStruct get currentListeningQ => _currentListeningQ;
  set currentListeningQ(HistoryQuestionsStruct value) {
    _currentListeningQ = value;
  }

  void updateCurrentListeningQStruct(
      Function(HistoryQuestionsStruct) updateFn) {
    updateFn(_currentListeningQ);
  }

  ListenAndFillStructStruct _currentFillExercise = ListenAndFillStructStruct();
  ListenAndFillStructStruct get currentFillExercise => _currentFillExercise;
  set currentFillExercise(ListenAndFillStructStruct value) {
    _currentFillExercise = value;
  }

  void updateCurrentFillExerciseStruct(
      Function(ListenAndFillStructStruct) updateFn) {
    updateFn(_currentFillExercise);
  }

  List<String> _shuffledWordBank = [];
  List<String> get shuffledWordBank => _shuffledWordBank;
  set shuffledWordBank(List<String> value) {
    _shuffledWordBank = value;
  }

  void addToShuffledWordBank(String value) {
    shuffledWordBank.add(value);
  }

  void removeFromShuffledWordBank(String value) {
    shuffledWordBank.remove(value);
  }

  void removeAtIndexFromShuffledWordBank(int index) {
    shuffledWordBank.removeAt(index);
  }

  void updateShuffledWordBankAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    shuffledWordBank[index] = updateFn(_shuffledWordBank[index]);
  }

  void insertAtIndexInShuffledWordBank(int index, String value) {
    shuffledWordBank.insert(index, value);
  }

  List<String> _userFillAnswers = [];
  List<String> get userFillAnswers => _userFillAnswers;
  set userFillAnswers(List<String> value) {
    _userFillAnswers = value;
  }

  void addToUserFillAnswers(String value) {
    userFillAnswers.add(value);
  }

  void removeFromUserFillAnswers(String value) {
    userFillAnswers.remove(value);
  }

  void removeAtIndexFromUserFillAnswers(int index) {
    userFillAnswers.removeAt(index);
  }

  void updateUserFillAnswersAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    userFillAnswers[index] = updateFn(_userFillAnswers[index]);
  }

  void insertAtIndexInUserFillAnswers(int index, String value) {
    userFillAnswers.insert(index, value);
  }

  String _selectedOptionLetter = '';
  String get selectedOptionLetter => _selectedOptionLetter;
  set selectedOptionLetter(String value) {
    _selectedOptionLetter = value;
  }

  bool _showFeedback = false;
  bool get showFeedback => _showFeedback;
  set showFeedback(bool value) {
    _showFeedback = value;
  }

  bool _isAnswered = false;
  bool get isAnswered => _isAnswered;
  set isAnswered(bool value) {
    _isAnswered = value;
  }

  bool _audioIsPlaying = false;
  bool get audioIsPlaying => _audioIsPlaying;
  set audioIsPlaying(bool value) {
    _audioIsPlaying = value;
  }

  int _selectedFillSlot = 0;
  int get selectedFillSlot => _selectedFillSlot;
  set selectedFillSlot(int value) {
    _selectedFillSlot = value;
  }

  int _currentMCQIndex = 0;
  int get currentMCQIndex => _currentMCQIndex;
  set currentMCQIndex(int value) {
    _currentMCQIndex = value;
  }

  List<QuestionItemStruct> _practiceQuestions = [];
  List<QuestionItemStruct> get practiceQuestions => _practiceQuestions;
  set practiceQuestions(List<QuestionItemStruct> value) {
    _practiceQuestions = value;
  }

  void addToPracticeQuestions(QuestionItemStruct value) {
    practiceQuestions.add(value);
  }

  void removeFromPracticeQuestions(QuestionItemStruct value) {
    practiceQuestions.remove(value);
  }

  void removeAtIndexFromPracticeQuestions(int index) {
    practiceQuestions.removeAt(index);
  }

  void updatePracticeQuestionsAtIndex(
    int index,
    QuestionItemStruct Function(QuestionItemStruct) updateFn,
  ) {
    practiceQuestions[index] = updateFn(_practiceQuestions[index]);
  }

  void insertAtIndexInPracticeQuestions(int index, QuestionItemStruct value) {
    practiceQuestions.insert(index, value);
  }

  int _practiceIndex = 0;
  int get practiceIndex => _practiceIndex;
  set practiceIndex(int value) {
    _practiceIndex = value;
  }

  String _localSelected = '';
  String get localSelected => _localSelected;
  set localSelected(String value) {
    _localSelected = value;
  }

  bool _localShowFeedback = false;
  bool get localShowFeedback => _localShowFeedback;
  set localShowFeedback(bool value) {
    _localShowFeedback = value;
  }

  String _UserName = '';
  String get UserName => _UserName;
  set UserName(String value) {
    _UserName = value;
    prefs.setString('ff_UserName', value);
  }

  List<ListenAndFillStructStruct> _allFillExercises = [];
  List<ListenAndFillStructStruct> get allFillExercises => _allFillExercises;
  set allFillExercises(List<ListenAndFillStructStruct> value) {
    _allFillExercises = value;
  }

  void addToAllFillExercises(ListenAndFillStructStruct value) {
    allFillExercises.add(value);
  }

  void removeFromAllFillExercises(ListenAndFillStructStruct value) {
    allFillExercises.remove(value);
  }

  void removeAtIndexFromAllFillExercises(int index) {
    allFillExercises.removeAt(index);
  }

  void updateAllFillExercisesAtIndex(
    int index,
    ListenAndFillStructStruct Function(ListenAndFillStructStruct) updateFn,
  ) {
    allFillExercises[index] = updateFn(_allFillExercises[index]);
  }

  void insertAtIndexInAllFillExercises(
      int index, ListenAndFillStructStruct value) {
    allFillExercises.insert(index, value);
  }

  int _currentFillExerciseIndex = 0;
  int get currentFillExerciseIndex => _currentFillExerciseIndex;
  set currentFillExerciseIndex(int value) {
    _currentFillExerciseIndex = value;
  }

  List<HistoryQuestionsStruct> _allListeningQuestions = [];
  List<HistoryQuestionsStruct> get allListeningQuestions =>
      _allListeningQuestions;
  set allListeningQuestions(List<HistoryQuestionsStruct> value) {
    _allListeningQuestions = value;
  }

  void addToAllListeningQuestions(HistoryQuestionsStruct value) {
    allListeningQuestions.add(value);
  }

  void removeFromAllListeningQuestions(HistoryQuestionsStruct value) {
    allListeningQuestions.remove(value);
  }

  void removeAtIndexFromAllListeningQuestions(int index) {
    allListeningQuestions.removeAt(index);
  }

  void updateAllListeningQuestionsAtIndex(
    int index,
    HistoryQuestionsStruct Function(HistoryQuestionsStruct) updateFn,
  ) {
    allListeningQuestions[index] = updateFn(_allListeningQuestions[index]);
  }

  void insertAtIndexInAllListeningQuestions(
      int index, HistoryQuestionsStruct value) {
    allListeningQuestions.insert(index, value);
  }

  int _mcqPlayed = 0;
  int get mcqPlayed => _mcqPlayed;
  set mcqPlayed(int value) {
    _mcqPlayed = value;
  }

  int _fillPlayed = 0;
  int get fillPlayed => _fillPlayed;
  set fillPlayed(int value) {
    _fillPlayed = value;
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
