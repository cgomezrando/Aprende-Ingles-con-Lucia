import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import '/index.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'exam_question_screen_model.dart';
export 'exam_question_screen_model.dart';

class ExamQuestionScreenWidget extends StatefulWidget {
  const ExamQuestionScreenWidget({super.key});

  static String routeName = 'ExamQuestionScreen';
  static String routePath = '/examQuestionScreen';

  @override
  State<ExamQuestionScreenWidget> createState() =>
      _ExamQuestionScreenWidgetState();
}

class _ExamQuestionScreenWidgetState extends State<ExamQuestionScreenWidget> {
  late ExamQuestionScreenModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ExamQuestionScreenModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.loadedQuestions = await actions.fetchQuestionsFromURL(
        FFAppState().currentSession.currentBlock,
        FFAppState().currentSession.currentFront,
      );
      FFAppState().practiceQuestions =
          _model.loadedQuestions!.toList().cast<QuestionItemStruct>();
      safeSetState(() {});
      _model.examQ = await actions.pickRandomQuestions(
        _model.loadedQuestions!.toList(),
        10,
      );
      _model.examQuestions = _model.examQ!.toList().cast<QuestionItemStruct>();
      safeSetState(() {});
      _model.examIndex = 0;
      safeSetState(() {});
      _model.localSelected = null;
      safeSetState(() {});
    });
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: Image.asset(
                'assets/images/Designer_(24).png',
              ).image,
            ),
          ),
          child: Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Align(
                      alignment: AlignmentDirectional(-1.0, -1.0),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                        child: Container(
                          width: 550.0,
                          height: 150.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).primary,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(32.0),
                              topRight: Radius.circular(32.0),
                              bottomLeft: Radius.circular(32.0),
                              bottomRight: Radius.circular(32.0),
                            ),
                            shape: BoxShape.rectangle,
                            border: Border.all(
                              color: Color(0xFFE395E3),
                              width: 4.0,
                            ),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsets.all(24.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .transparent,
                                    border: Border.all(
                                      color: FlutterFlowTheme.of(context)
                                          .transparent,
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    FFAppState().UserName,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .titleLarge
                                                        .override(
                                                          font: GoogleFonts
                                                              .poppins(
                                                            fontWeight:
                                                                FontWeight.w800,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleLarge
                                                                    .fontStyle,
                                                          ),
                                                          color:
                                                              Color(0xFFE395E3),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w800,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleLarge
                                                                  .fontStyle,
                                                          lineHeight: 1.3,
                                                        ),
                                                  ),
                                                  Text(
                                                    'Question ${(_model.examIndex + 1).toString()} of 10',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .titleLarge
                                                        .override(
                                                          font: GoogleFonts
                                                              .poppins(
                                                            fontWeight:
                                                                FontWeight.w800,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleLarge
                                                                    .fontStyle,
                                                          ),
                                                          color:
                                                              Color(0xFFE395E3),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w800,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleLarge
                                                                  .fontStyle,
                                                          lineHeight: 1.3,
                                                        ),
                                                  ),
                                                  Text(
                                                    (String block) {
                                                      return {
                                                            'verbs': 'Verbs',
                                                            'irregular_verbs_past_simple':
                                                                'Irregular Verbs (Past Simple)',
                                                            'irregular_verbs_past_participle':
                                                                'Irregular Verbs (Past Participle)',
                                                            'synonyms':
                                                                'Synonyms',
                                                            'antonyms':
                                                                'Antonyms',
                                                            'phrasal_verbs':
                                                                'Phrasal Verbs',
                                                            'sentence_order':
                                                                'Sentence Order',
                                                            'prepositions':
                                                                'Prepositions',
                                                            'confusing_words':
                                                                'Confusing Words',
                                                            'vocabulary':
                                                                'Vocabulary',
                                                          }[block] ??
                                                          block;
                                                    }(FFAppState()
                                                        .currentSession
                                                        .currentBlock),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .titleLarge
                                                        .override(
                                                          font: GoogleFonts
                                                              .poppins(
                                                            fontWeight:
                                                                FontWeight.w800,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleLarge
                                                                    .fontStyle,
                                                          ),
                                                          color:
                                                              Color(0xFFE395E3),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w800,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleLarge
                                                                  .fontStyle,
                                                          lineHeight: 1.3,
                                                        ),
                                                  ),
                                                ].divide(SizedBox(height: 4.0)),
                                              ),
                                            ],
                                          ),
                                        ].divide(SizedBox(height: 4.0)),
                                      ),
                                    ].divide(SizedBox(height: 16.0)),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 560.5,
                      height: 200.0,
                      decoration: BoxDecoration(),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                15.0, 0.0, 0.0, 0.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                FFAppState().allAnswers = [];
                                FFAppState().allListeningQuestions = [];
                                FFAppState().fillScore = 0;
                                FFAppState().listeningScore = 0;
                                FFAppState().currentFillExerciseIndex = 0;
                                FFAppState().mcqPlayed = 0;
                                FFAppState().fillPlayed = 0;
                                safeSetState(() {});

                                context.pushNamed(HomeScreenWidget.routeName);
                              },
                              child: Container(
                                width: 100.0,
                                height: 100.0,
                                decoration: BoxDecoration(
                                  color: Color(0xFFE395E3),
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: Colors.white,
                                    width: 2.0,
                                  ),
                                ),
                                child: Icon(
                                  Icons.home,
                                  color: FlutterFlowTheme.of(context).secondary,
                                  size: 90.0,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0.0, -1.0),
                          child: Stack(
                            alignment: AlignmentDirectional(0.0, -1.0),
                            children: [
                              Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      25.0, 0.0, 25.0, 0.0),
                                  child: Container(
                                    width: 976.7,
                                    height: 100.0,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(24.0),
                                        topRight: Radius.circular(24.0),
                                        bottomLeft: Radius.circular(24.0),
                                        bottomRight: Radius.circular(24.0),
                                      ),
                                      border: Border.all(
                                        color: Color(0xFFE395E3),
                                        width: 5.0,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          15.0, 10.0, 15.0, 10.0),
                                      child: AutoSizeText(
                                        valueOrDefault<String>(
                                          _model.examQuestions
                                              .elementAtOrNull(_model.examIndex)
                                              ?.question,
                                          '...',
                                        ),
                                        maxLines: 2,
                                        style: FlutterFlowTheme.of(context)
                                            .headlineSmall
                                            .override(
                                              font: GoogleFonts.poppins(
                                                fontWeight: FontWeight.bold,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .headlineSmall
                                                        .fontStyle,
                                              ),
                                              color: Color(0xFF0700FF),
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.bold,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .headlineSmall
                                                      .fontStyle,
                                              lineHeight: 1.4,
                                            ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(50.0, 0.0, 50.0, 0.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          _model.localSelected = 'A';
                          safeSetState(() {});
                          _model.isCorrectResultA =
                              await actions.evaluateAnswer(
                            'A',
                            valueOrDefault<String>(
                              _model.examQuestions
                                  .elementAtOrNull(_model.examIndex)
                                  ?.correctAnswer,
                              ',,',
                            ),
                          );
                          FFAppState().addToAllAnswers(UserAnswerStruct(
                            questionId: _model.examQuestions
                                .elementAtOrNull(_model.examIndex)
                                ?.id,
                            selectedAnswer: 'A',
                            correctAnswer: _model.examQuestions
                                .elementAtOrNull(_model.examIndex)
                                ?.correctAnswer,
                            isCorrect: _model.isCorrectResultA,
                            front: FFAppState().currentSession.currentFront,
                            block: FFAppState().currentSession.currentBlock,
                          ));
                          if (_model.examIndex == 9) {
                            _model.nextBlockA = await actions.getNextBlock(
                              FFAppState().currentSession.currentBlock,
                            );
                            if (_model.nextBlockA == 'DONE') {
                              context.pushNamed(
                                  ListeningMCQScreenWidget.routeName);
                            } else {
                              FFAppState().currentSession = ExamSessionStruct(
                                sessionId:
                                    FFAppState().currentSession.sessionId,
                                mode: FFAppState().currentSession.mode,
                                currentFront:
                                    FFAppState().currentSession.currentFront,
                                currentBlock: _model.nextBlockA,
                                currentQIndex: 0,
                                score: FFAppState().currentSession.score,
                                totalAnswered:
                                    FFAppState().currentSession.totalAnswered,
                              );
                              safeSetState(() {});
                              _model.newLoadedA =
                                  await actions.fetchQuestionsFromURL(
                                _model.nextBlockA!,
                                FFAppState().currentSession.currentFront,
                              );
                              _model.newExamQA =
                                  await actions.pickRandomQuestions(
                                _model.newLoadedA!.toList(),
                                10,
                              );
                              _model.examQuestions = _model.newExamQA!
                                  .toList()
                                  .cast<QuestionItemStruct>();
                              safeSetState(() {});
                              _model.examIndex = 0;
                              safeSetState(() {});
                            }
                          } else {
                            _model.examIndex = _model.examIndex + 1;
                            safeSetState(() {});
                          }

                          safeSetState(() {});
                        },
                        child: Container(
                          width: 100.0,
                          height: 90.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(25.0),
                              topRight: Radius.circular(25.0),
                              bottomLeft: Radius.circular(25.0),
                              bottomRight: Radius.circular(25.0),
                            ),
                            border: Border.all(
                              color: Color(0xFFE395E3),
                              width: 5.0,
                            ),
                          ),
                          child: Stack(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(24.0),
                                child: Container(
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 40.0,
                                        height: 40.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          borderRadius:
                                              BorderRadius.circular(9999.0),
                                          shape: BoxShape.rectangle,
                                        ),
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Text(
                                          'A',
                                          style: FlutterFlowTheme.of(context)
                                              .titleMedium
                                              .override(
                                                font: GoogleFonts.poppins(
                                                  fontWeight: FontWeight.bold,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleMedium
                                                          .fontStyle,
                                                ),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .onPrimary,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.bold,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleMedium
                                                        .fontStyle,
                                                lineHeight: 1.4,
                                              ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: Text(
                                          valueOrDefault<String>(
                                            _model.examQuestions
                                                .elementAtOrNull(
                                                    _model.examIndex)
                                                ?.optionA,
                                            '...',
                                          ),
                                          maxLines: 2,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyLarge
                                              .override(
                                                font: GoogleFonts.poppins(
                                                  fontWeight: FontWeight.bold,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyLarge
                                                          .fontStyle,
                                                ),
                                                color: Color(0xFF0700FF),
                                                fontSize: 20.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.bold,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyLarge
                                                        .fontStyle,
                                                lineHeight: 1.5,
                                              ),
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                    ].divide(SizedBox(width: 16.0)),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(50.0, 0.0, 50.0, 0.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          _model.localSelected = 'B';
                          safeSetState(() {});
                          _model.isCorrectResultB =
                              await actions.evaluateAnswer(
                            'B',
                            valueOrDefault<String>(
                              _model.examQuestions
                                  .elementAtOrNull(_model.examIndex)
                                  ?.correctAnswer,
                              ',,',
                            ),
                          );
                          FFAppState().addToAllAnswers(UserAnswerStruct(
                            questionId: _model.examQuestions
                                .elementAtOrNull(_model.examIndex)
                                ?.id,
                            selectedAnswer: 'B',
                            correctAnswer: _model.examQuestions
                                .elementAtOrNull(_model.examIndex)
                                ?.correctAnswer,
                            isCorrect: _model.isCorrectResultB,
                            front: FFAppState().currentSession.currentFront,
                            block: FFAppState().currentSession.currentBlock,
                          ));
                          if (_model.examIndex == 9) {
                            _model.nextBlockB = await actions.getNextBlock(
                              FFAppState().currentSession.currentBlock,
                            );
                            if (_model.nextBlockB == 'DONE') {
                              context.pushNamed(
                                  ListeningMCQScreenWidget.routeName);
                            } else {
                              FFAppState().currentSession = ExamSessionStruct(
                                sessionId:
                                    FFAppState().currentSession.sessionId,
                                mode: FFAppState().currentSession.mode,
                                currentFront:
                                    FFAppState().currentSession.currentFront,
                                currentBlock: _model.nextBlockB,
                                currentQIndex: 0,
                                score: FFAppState().currentSession.score,
                                totalAnswered:
                                    FFAppState().currentSession.totalAnswered,
                              );
                              safeSetState(() {});
                              _model.newLoadedB =
                                  await actions.fetchQuestionsFromURL(
                                _model.nextBlockB!,
                                FFAppState().currentSession.currentFront,
                              );
                              _model.newExamQB =
                                  await actions.pickRandomQuestions(
                                _model.newLoadedB!.toList(),
                                10,
                              );
                              _model.examQuestions = _model.newExamQB!
                                  .toList()
                                  .cast<QuestionItemStruct>();
                              safeSetState(() {});
                              _model.examIndex = 0;
                              safeSetState(() {});
                            }
                          } else {
                            _model.examIndex = _model.examIndex + 1;
                            safeSetState(() {});
                          }

                          safeSetState(() {});
                        },
                        child: Container(
                          width: 100.0,
                          height: 90.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(25.0),
                              topRight: Radius.circular(25.0),
                              bottomLeft: Radius.circular(25.0),
                              bottomRight: Radius.circular(25.0),
                            ),
                            border: Border.all(
                              color: Color(0xFFE395E3),
                              width: 5.0,
                            ),
                          ),
                          child: Stack(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(24.0),
                                child: Container(
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 40.0,
                                        height: 40.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          borderRadius:
                                              BorderRadius.circular(9999.0),
                                          shape: BoxShape.rectangle,
                                        ),
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Text(
                                          'B',
                                          style: FlutterFlowTheme.of(context)
                                              .titleMedium
                                              .override(
                                                font: GoogleFonts.poppins(
                                                  fontWeight: FontWeight.bold,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleMedium
                                                          .fontStyle,
                                                ),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .onPrimary,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.bold,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleMedium
                                                        .fontStyle,
                                                lineHeight: 1.4,
                                              ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: Text(
                                          valueOrDefault<String>(
                                            _model.examQuestions
                                                .elementAtOrNull(
                                                    _model.examIndex)
                                                ?.optionB,
                                            '...',
                                          ),
                                          maxLines: 2,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyLarge
                                              .override(
                                                font: GoogleFonts.poppins(
                                                  fontWeight: FontWeight.bold,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyLarge
                                                          .fontStyle,
                                                ),
                                                color: Color(0xFF0700FF),
                                                fontSize: 20.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.bold,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyLarge
                                                        .fontStyle,
                                                lineHeight: 1.5,
                                              ),
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                    ].divide(SizedBox(width: 16.0)),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(50.0, 0.0, 50.0, 0.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          _model.localSelected = 'C';
                          safeSetState(() {});
                          _model.isCorrectResultC =
                              await actions.evaluateAnswer(
                            'C',
                            valueOrDefault<String>(
                              _model.examQuestions
                                  .elementAtOrNull(_model.examIndex)
                                  ?.correctAnswer,
                              ',,',
                            ),
                          );
                          FFAppState().addToAllAnswers(UserAnswerStruct(
                            questionId: _model.examQuestions
                                .elementAtOrNull(_model.examIndex)
                                ?.id,
                            selectedAnswer: 'C',
                            correctAnswer: _model.examQuestions
                                .elementAtOrNull(_model.examIndex)
                                ?.correctAnswer,
                            isCorrect: _model.isCorrectResultC,
                            front: FFAppState().currentSession.currentFront,
                            block: FFAppState().currentSession.currentBlock,
                          ));
                          if (_model.examIndex == 9) {
                            _model.nextBlockC = await actions.getNextBlock(
                              FFAppState().currentSession.currentBlock,
                            );
                            if (_model.nextBlockC == 'DONE') {
                              context.pushNamed(
                                  ListeningMCQScreenWidget.routeName);
                            } else {
                              FFAppState().currentSession = ExamSessionStruct(
                                sessionId:
                                    FFAppState().currentSession.sessionId,
                                mode: FFAppState().currentSession.mode,
                                currentFront:
                                    FFAppState().currentSession.currentFront,
                                currentBlock: _model.nextBlockC,
                                currentQIndex: 0,
                                score: FFAppState().currentSession.score,
                                totalAnswered:
                                    FFAppState().currentSession.totalAnswered,
                              );
                              safeSetState(() {});
                              _model.newLoadedC =
                                  await actions.fetchQuestionsFromURL(
                                _model.nextBlockC!,
                                FFAppState().currentSession.currentFront,
                              );
                              _model.newExamQC =
                                  await actions.pickRandomQuestions(
                                _model.newLoadedC!.toList(),
                                10,
                              );
                              _model.examQuestions = _model.newExamQC!
                                  .toList()
                                  .cast<QuestionItemStruct>();
                              safeSetState(() {});
                              _model.examIndex = 0;
                              safeSetState(() {});
                            }
                          } else {
                            _model.examIndex = _model.examIndex + 1;
                            safeSetState(() {});
                          }

                          safeSetState(() {});
                        },
                        child: Container(
                          width: 100.0,
                          height: 90.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(25.0),
                              topRight: Radius.circular(25.0),
                              bottomLeft: Radius.circular(25.0),
                              bottomRight: Radius.circular(25.0),
                            ),
                            border: Border.all(
                              color: Color(0xFFE395E3),
                              width: 5.0,
                            ),
                          ),
                          child: Stack(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(24.0),
                                child: Container(
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 40.0,
                                        height: 40.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          borderRadius:
                                              BorderRadius.circular(9999.0),
                                          shape: BoxShape.rectangle,
                                        ),
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Text(
                                          'C',
                                          style: FlutterFlowTheme.of(context)
                                              .titleMedium
                                              .override(
                                                font: GoogleFonts.poppins(
                                                  fontWeight: FontWeight.bold,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleMedium
                                                          .fontStyle,
                                                ),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .onPrimary,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.bold,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleMedium
                                                        .fontStyle,
                                                lineHeight: 1.4,
                                              ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: Text(
                                          valueOrDefault<String>(
                                            _model.examQuestions
                                                .elementAtOrNull(
                                                    _model.examIndex)
                                                ?.optionC,
                                            '...',
                                          ),
                                          maxLines: 2,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyLarge
                                              .override(
                                                font: GoogleFonts.poppins(
                                                  fontWeight: FontWeight.bold,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyLarge
                                                          .fontStyle,
                                                ),
                                                color: Color(0xFF0700FF),
                                                fontSize: 20.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.bold,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyLarge
                                                        .fontStyle,
                                                lineHeight: 1.5,
                                              ),
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                    ].divide(SizedBox(width: 16.0)),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(50.0, 0.0, 50.0, 0.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          _model.localSelected = 'D';
                          safeSetState(() {});
                          _model.isCorrectResultD =
                              await actions.evaluateAnswer(
                            'D',
                            valueOrDefault<String>(
                              _model.examQuestions
                                  .elementAtOrNull(_model.examIndex)
                                  ?.correctAnswer,
                              ',,',
                            ),
                          );
                          FFAppState().addToAllAnswers(UserAnswerStruct(
                            questionId: _model.examQuestions
                                .elementAtOrNull(_model.examIndex)
                                ?.id,
                            selectedAnswer: 'D',
                            correctAnswer: _model.examQuestions
                                .elementAtOrNull(_model.examIndex)
                                ?.correctAnswer,
                            isCorrect: _model.isCorrectResultD,
                            front: FFAppState().currentSession.currentFront,
                            block: FFAppState().currentSession.currentBlock,
                          ));
                          if (_model.examIndex == 9) {
                            _model.nextBlockD = await actions.getNextBlock(
                              FFAppState().currentSession.currentBlock,
                            );
                            if (_model.nextBlockD == 'DONE') {
                              context.pushNamed(
                                  ListeningMCQScreenWidget.routeName);
                            } else {
                              FFAppState().currentSession = ExamSessionStruct(
                                sessionId:
                                    FFAppState().currentSession.sessionId,
                                mode: FFAppState().currentSession.mode,
                                currentFront:
                                    FFAppState().currentSession.currentFront,
                                currentBlock: _model.nextBlockD,
                                currentQIndex: 0,
                                score: FFAppState().currentSession.score,
                                totalAnswered:
                                    FFAppState().currentSession.totalAnswered,
                              );
                              safeSetState(() {});
                              _model.newLoadedD =
                                  await actions.fetchQuestionsFromURL(
                                _model.nextBlockD!,
                                FFAppState().currentSession.currentFront,
                              );
                              _model.newExamQD =
                                  await actions.pickRandomQuestions(
                                _model.newLoadedD!.toList(),
                                10,
                              );
                              _model.examQuestions = _model.newExamQD!
                                  .toList()
                                  .cast<QuestionItemStruct>();
                              safeSetState(() {});
                              _model.examIndex = 0;
                              safeSetState(() {});
                            }
                          } else {
                            _model.examIndex = _model.examIndex + 1;
                            safeSetState(() {});
                          }

                          safeSetState(() {});
                        },
                        child: Container(
                          width: 100.0,
                          height: 90.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(25.0),
                              topRight: Radius.circular(25.0),
                              bottomLeft: Radius.circular(25.0),
                              bottomRight: Radius.circular(25.0),
                            ),
                            border: Border.all(
                              color: Color(0xFFE395E3),
                              width: 5.0,
                            ),
                          ),
                          child: Stack(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(24.0),
                                child: Container(
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 40.0,
                                        height: 40.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          borderRadius:
                                              BorderRadius.circular(9999.0),
                                          shape: BoxShape.rectangle,
                                        ),
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Text(
                                          'D',
                                          style: FlutterFlowTheme.of(context)
                                              .titleMedium
                                              .override(
                                                font: GoogleFonts.poppins(
                                                  fontWeight: FontWeight.bold,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleMedium
                                                          .fontStyle,
                                                ),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .onPrimary,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.bold,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleMedium
                                                        .fontStyle,
                                                lineHeight: 1.4,
                                              ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: Text(
                                          valueOrDefault<String>(
                                            _model.examQuestions
                                                .elementAtOrNull(
                                                    _model.examIndex)
                                                ?.optionD,
                                            '...',
                                          ),
                                          maxLines: 2,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyLarge
                                              .override(
                                                font: GoogleFonts.poppins(
                                                  fontWeight: FontWeight.bold,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyLarge
                                                          .fontStyle,
                                                ),
                                                color: Color(0xFF0700FF),
                                                fontSize: 20.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.bold,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyLarge
                                                        .fontStyle,
                                                lineHeight: 1.5,
                                              ),
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                    ].divide(SizedBox(width: 16.0)),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ].divide(SizedBox(height: 24.0)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
