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
import 'listening_m_c_q_screen_model.dart';
export 'listening_m_c_q_screen_model.dart';

class ListeningMCQScreenWidget extends StatefulWidget {
  const ListeningMCQScreenWidget({super.key});

  static String routeName = 'ListeningMCQScreen';
  static String routePath = '/listeningMCQScreen';

  @override
  State<ListeningMCQScreenWidget> createState() =>
      _ListeningMCQScreenWidgetState();
}

class _ListeningMCQScreenWidgetState extends State<ListeningMCQScreenWidget> {
  late ListeningMCQScreenModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ListeningMCQScreenModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.listeningLoaded = await actions.fetchListeningFromURL();
      FFAppState().allListeningQuestions =
          _model.listeningLoaded!.toList().cast<HistoryQuestionsStruct>();
      safeSetState(() {});
      _model.pageQuestions =
          _model.listeningLoaded!.toList().cast<HistoryQuestionsStruct>();
      safeSetState(() {});
      FFAppState().currentListeningQ = _model.pageQuestions.elementAtOrNull(0)!;
      safeSetState(() {});
      _model.randomHistory = await actions.getRandomNumber(
        1,
        20,
      );
      _model.currentHistoryIndex = _model.randomHistory!;
      safeSetState(() {});
      _model.filtered = await actions.filterByHistory(
        FFAppState().allListeningQuestions.toList(),
        _model.randomHistory!,
      );
      _model.pageQuestions =
          _model.filtered!.toList().cast<HistoryQuestionsStruct>();
      safeSetState(() {});
      FFAppState().currentListeningQ = _model.pageQuestions.elementAtOrNull(0)!;
      safeSetState(() {});
      _model.pageIndex = 0;
      safeSetState(() {});
      await actions.playAudio(
        FFAppState().currentListeningQ.audioURL,
      );
      _model.localShowFeedback = false;
      _model.localSelected = '';
      _model.localIsAnswered = false;
      safeSetState(() {});
      FFAppState().mcqPlayed = 1;
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
                          width: 508.92,
                          height: 140.0,
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
                                padding: EdgeInsets.all(10.0),
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
                                                          lineHeight: 0.0,
                                                        ),
                                                  ),
                                                  Text(
                                                    'History: ${_model.pageQuestions.elementAtOrNull(_model.pageIndex!)?.historyTitle}',
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
                                                          lineHeight: 0.0,
                                                        ),
                                                  ),
                                                  Text(
                                                    'Question ${((_model.pageIndex!) + 1).toString()} of 5',
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
                                                          lineHeight: 0.0,
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
                                await actions.playAudio(
                                  '',
                                );
                                _model.localShowFeedback = false;
                                _model.localSelected = '';
                                safeSetState(() {});
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
                          if (FFAppState().currentSession.mode != 'exam')
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  20.0, 0.0, 0.0, 0.0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  await actions.playAudio(
                                    FFAppState().currentListeningQ.audioURL,
                                  );
                                },
                                child: Container(
                                  width: 100.0,
                                  height: 100.0,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFE395E3),
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(12.0),
                                      topRight: Radius.circular(12.0),
                                      bottomLeft: Radius.circular(12.0),
                                      bottomRight: Radius.circular(12.0),
                                    ),
                                    border: Border.all(
                                      color: Colors.white,
                                      width: 2.0,
                                    ),
                                  ),
                                  child: Icon(
                                    Icons.play_circle_outlined,
                                    color:
                                        FlutterFlowTheme.of(context).secondary,
                                    size: 90.0,
                                  ),
                                ),
                              ),
                            ),
                          if (FFAppState().currentSession.mode == 'practice')
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  15.0, 0.0, 0.0, 0.0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  await actions.playAudio(
                                    '',
                                  );
                                  _model.localShowFeedback = false;
                                  _model.localSelected = null;
                                  _model.pageIndex = 0;
                                  safeSetState(() {});

                                  context.pushNamed(
                                      BlockSelectionScreenWidget.routeName);
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
                                    Icons.arrow_back,
                                    color:
                                        FlutterFlowTheme.of(context).secondary,
                                    size: 90.0,
                                  ),
                                ),
                              ),
                            ),
                          if ((_model.pageIndex == 4) &&
                              (_model.localIsAnswered == true))
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  15.0, 0.0, 0.0, 0.0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  if ((FFAppState().mcqPlayed >= 5) ||
                                      (FFAppState().currentSession.mode ==
                                          'exam')) {
                                    await actions.playAudio(
                                      '',
                                    );

                                    context.pushNamed(
                                        ListeningFillWordsScreenWidget
                                            .routeName);
                                  } else {
                                    _model.newHistoryValue =
                                        await actions.getRandomNumber(
                                      1,
                                      20,
                                    );
                                    _model.currentHistoryIndex =
                                        _model.newHistoryValue!;
                                    safeSetState(() {});
                                    FFAppState().mcqPlayed =
                                        FFAppState().mcqPlayed + 1;
                                    safeSetState(() {});
                                    FFAppState().currentListeningQ = _model
                                        .pageQuestions
                                        .elementAtOrNull(0)!;
                                    safeSetState(() {});
                                    _model.nextFiltered =
                                        await actions.filterByHistory(
                                      FFAppState()
                                          .allListeningQuestions
                                          .toList(),
                                      _model.currentHistoryIndex,
                                    );
                                    _model.pageQuestions = _model.nextFiltered!
                                        .toList()
                                        .cast<HistoryQuestionsStruct>();
                                    safeSetState(() {});
                                    FFAppState().currentListeningQ = _model
                                        .pageQuestions
                                        .elementAtOrNull(0)!;
                                    safeSetState(() {});
                                    _model.pageIndex = 0;
                                    safeSetState(() {});
                                    await actions.playAudio(
                                      FFAppState().currentListeningQ.audioURL,
                                    );
                                  }

                                  safeSetState(() {});
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
                                    Icons.arrow_forward,
                                    color:
                                        FlutterFlowTheme.of(context).secondary,
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
                                          10.0, 10.0, 0.0, 0.0),
                                      child: AutoSizeText(
                                        valueOrDefault<String>(
                                          _model.pageQuestions
                                              .elementAtOrNull(
                                                  _model.pageIndex!)
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
                          if (_model.localIsAnswered == false) {
                            _model.localSelected = 'A';
                            safeSetState(() {});
                            _model.isCorrectResult =
                                await actions.evaluateAnswer(
                              'A',
                              _model.pageQuestions
                                  .elementAtOrNull(_model.pageIndex!)!
                                  .correctAnswer,
                            );
                            FFAppState().addToAllAnswers(UserAnswerStruct(
                              questionId: _model.pageQuestions
                                  .elementAtOrNull(_model.pageIndex!)
                                  ?.id,
                              selectedAnswer: 'A',
                              correctAnswer: _model.pageQuestions
                                  .elementAtOrNull(_model.pageIndex!)
                                  ?.correctAnswer,
                              isCorrect: _model.isCorrectResult,
                              front: 'listening_mcq',
                              block: 'listening_mcq',
                            ));
                            if (_model.isCorrectResult == true) {
                              FFAppState().listeningScore =
                                  FFAppState().listeningScore + 1;
                              safeSetState(() {});
                            }
                            _model.localShowFeedback = true;
                            safeSetState(() {});
                            _model.localIsAnswered = true;
                            safeSetState(() {});
                            await Future.delayed(
                              Duration(
                                milliseconds: 1000,
                              ),
                            );
                            if (_model.pageIndex! < 4) {
                              _model.localShowFeedback = false;
                              _model.localIsAnswered = false;
                              _model.localSelected = '';
                              safeSetState(() {});
                              _model.pageIndex = _model.pageIndex! + 1;
                              safeSetState(() {});
                            }
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
                              if ((_model.localShowFeedback == true) &&
                                  (_model.localSelected == 'A') &&
                                  (_model.isCorrectResult == false))
                                Align(
                                  alignment: AlignmentDirectional(1.0, 0.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 10.0, 0.0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
                                      child: Image.asset(
                                        'assets/images/Copilot_20260618_063912.png',
                                        width: 100.0,
                                        height: 100.0,
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                ),
                              if ((_model.localShowFeedback == true) &&
                                  (_model.localSelected == 'A') &&
                                  (_model.isCorrectResult == true))
                                Align(
                                  alignment: AlignmentDirectional(1.0, 0.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 10.0, 0.0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
                                      child: Image.asset(
                                        'assets/images/Copilot_20260618_063817.png',
                                        width: 100.0,
                                        height: 100.0,
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                ),
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
                                            _model.pageQuestions
                                                .elementAtOrNull(
                                                    _model.pageIndex!)
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
                          if (_model.localIsAnswered == false) {
                            _model.localSelected = 'B';
                            safeSetState(() {});
                            _model.isCorrectResultB =
                                await actions.evaluateAnswer(
                              'B',
                              _model.pageQuestions
                                  .elementAtOrNull(_model.pageIndex!)!
                                  .correctAnswer,
                            );
                            FFAppState().addToAllAnswers(UserAnswerStruct(
                              questionId: _model.pageQuestions
                                  .elementAtOrNull(_model.pageIndex!)
                                  ?.id,
                              selectedAnswer: 'B',
                              correctAnswer: _model.pageQuestions
                                  .elementAtOrNull(_model.pageIndex!)
                                  ?.correctAnswer,
                              isCorrect: _model.isCorrectResultB,
                              front: 'listening_mcq',
                              block: 'listening_mcq',
                            ));
                            if (_model.isCorrectResultB == true) {
                              FFAppState().listeningScore =
                                  FFAppState().listeningScore + 1;
                              safeSetState(() {});
                            }
                            _model.localShowFeedback = true;
                            safeSetState(() {});
                            _model.localIsAnswered = true;
                            safeSetState(() {});
                            await Future.delayed(
                              Duration(
                                milliseconds: 1000,
                              ),
                            );
                            if (_model.pageIndex! < 4) {
                              _model.localShowFeedback = false;
                              _model.localIsAnswered = false;
                              _model.localSelected = '';
                              safeSetState(() {});
                              _model.pageIndex = _model.pageIndex! + 1;
                              safeSetState(() {});
                            }
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
                              if ((_model.localShowFeedback == true) &&
                                  (_model.localSelected == 'B') &&
                                  (_model.isCorrectResultB == false))
                                Align(
                                  alignment: AlignmentDirectional(1.0, 0.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 10.0, 0.0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
                                      child: Image.asset(
                                        'assets/images/Copilot_20260618_063912.png',
                                        width: 100.0,
                                        height: 100.0,
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                ),
                              if ((_model.localShowFeedback == true) &&
                                  (_model.localSelected == 'B') &&
                                  (_model.isCorrectResultB == true))
                                Align(
                                  alignment: AlignmentDirectional(1.0, 0.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 10.0, 0.0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
                                      child: Image.asset(
                                        'assets/images/Copilot_20260618_063817.png',
                                        width: 100.0,
                                        height: 100.0,
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                ),
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
                                            _model.pageQuestions
                                                .elementAtOrNull(
                                                    _model.pageIndex!)
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
                          if (_model.localIsAnswered == false) {
                            _model.localSelected = 'C';
                            safeSetState(() {});
                            _model.isCorrectResultC =
                                await actions.evaluateAnswer(
                              'C',
                              _model.pageQuestions
                                  .elementAtOrNull(_model.pageIndex!)!
                                  .correctAnswer,
                            );
                            FFAppState().addToAllAnswers(UserAnswerStruct(
                              questionId: _model.pageQuestions
                                  .elementAtOrNull(_model.pageIndex!)
                                  ?.id,
                              selectedAnswer: 'C',
                              correctAnswer: _model.pageQuestions
                                  .elementAtOrNull(_model.pageIndex!)
                                  ?.correctAnswer,
                              isCorrect: _model.isCorrectResultC,
                              front: 'listening_mcq',
                              block: 'listening_mcq',
                            ));
                            if (_model.isCorrectResultC == true) {
                              FFAppState().listeningScore =
                                  FFAppState().listeningScore + 1;
                              safeSetState(() {});
                            }
                            _model.localShowFeedback = true;
                            safeSetState(() {});
                            _model.localIsAnswered = true;
                            safeSetState(() {});
                            await Future.delayed(
                              Duration(
                                milliseconds: 1000,
                              ),
                            );
                            if (_model.pageIndex! < 4) {
                              _model.localShowFeedback = false;
                              _model.localIsAnswered = false;
                              _model.localSelected = '';
                              safeSetState(() {});
                              _model.pageIndex = _model.pageIndex! + 1;
                              safeSetState(() {});
                            }
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
                              if ((_model.localShowFeedback == true) &&
                                  (_model.localSelected == 'C') &&
                                  (_model.isCorrectResultC == false))
                                Align(
                                  alignment: AlignmentDirectional(1.0, 0.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 10.0, 0.0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
                                      child: Image.asset(
                                        'assets/images/Copilot_20260618_063912.png',
                                        width: 100.0,
                                        height: 100.0,
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                ),
                              if ((_model.localShowFeedback == true) &&
                                  (_model.localSelected == 'C') &&
                                  (_model.isCorrectResultC == true))
                                Align(
                                  alignment: AlignmentDirectional(1.0, 0.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 10.0, 0.0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
                                      child: Image.asset(
                                        'assets/images/Copilot_20260618_063817.png',
                                        width: 100.0,
                                        height: 100.0,
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                ),
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
                                            _model.pageQuestions
                                                .elementAtOrNull(
                                                    _model.pageIndex!)
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
                          if (_model.localIsAnswered == false) {
                            _model.localSelected = 'D';
                            safeSetState(() {});
                            _model.isCorrectResultD =
                                await actions.evaluateAnswer(
                              'D',
                              _model.pageQuestions
                                  .elementAtOrNull(_model.pageIndex!)!
                                  .correctAnswer,
                            );
                            FFAppState().addToAllAnswers(UserAnswerStruct(
                              questionId: _model.pageQuestions
                                  .elementAtOrNull(_model.pageIndex!)
                                  ?.id,
                              selectedAnswer: 'D',
                              correctAnswer: _model.pageQuestions
                                  .elementAtOrNull(_model.pageIndex!)
                                  ?.correctAnswer,
                              isCorrect: _model.isCorrectResultD,
                              front: 'listening_mcq',
                              block: 'listening_mcq',
                            ));
                            if (_model.isCorrectResultD == true) {
                              FFAppState().listeningScore =
                                  FFAppState().listeningScore + 1;
                              safeSetState(() {});
                            }
                            _model.localShowFeedback = true;
                            safeSetState(() {});
                            _model.localIsAnswered = true;
                            safeSetState(() {});
                            await Future.delayed(
                              Duration(
                                milliseconds: 1000,
                              ),
                            );
                            if (_model.pageIndex! < 4) {
                              _model.localShowFeedback = false;
                              _model.localIsAnswered = false;
                              _model.localSelected = '';
                              safeSetState(() {});
                              _model.pageIndex = _model.pageIndex! + 1;
                              safeSetState(() {});
                            }
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
                              if ((_model.localShowFeedback == true) &&
                                  (_model.localSelected == 'D') &&
                                  (_model.isCorrectResultD == false))
                                Align(
                                  alignment: AlignmentDirectional(1.0, 0.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 10.0, 0.0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
                                      child: Image.asset(
                                        'assets/images/Copilot_20260618_063912.png',
                                        width: 100.0,
                                        height: 100.0,
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                ),
                              if ((_model.localShowFeedback == true) &&
                                  (_model.localSelected == 'D') &&
                                  (_model.isCorrectResultD == true))
                                Align(
                                  alignment: AlignmentDirectional(1.0, 0.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 10.0, 0.0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
                                      child: Image.asset(
                                        'assets/images/Copilot_20260618_063817.png',
                                        width: 100.0,
                                        height: 100.0,
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                ),
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
                                            _model.pageQuestions
                                                .elementAtOrNull(
                                                    _model.pageIndex!)
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
