import '/backend/schema/structs/index.dart';
import '/components/category_card2_widget.dart';
import '/components/section_header_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'block_selection_screen_model.dart';
export 'block_selection_screen_model.dart';

class BlockSelectionScreenWidget extends StatefulWidget {
  const BlockSelectionScreenWidget({super.key});

  static String routeName = 'BlockSelectionScreen';
  static String routePath = '/blockSelectionScreen';

  @override
  State<BlockSelectionScreenWidget> createState() =>
      _BlockSelectionScreenWidgetState();
}

class _BlockSelectionScreenWidgetState
    extends State<BlockSelectionScreenWidget> {
  late BlockSelectionScreenModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BlockSelectionScreenModel());
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
        body: Stack(
          alignment: AlignmentDirectional(-1.0, -1.0),
          children: [
            Container(
              decoration: BoxDecoration(
                color: Color(0x26000000),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: Image.asset(
                    'assets/images/Designer_(24).png',
                  ).image,
                ),
                shape: BoxShape.rectangle,
              ),
            ),
            SingleChildScrollView(
              primary: false,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: EdgeInsets.all(24.0),
                    child: Container(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Align(
                            alignment: AlignmentDirectional(1.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(1.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Align(
                                        alignment:
                                            AlignmentDirectional(-1.0, 0.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Hi ${FFAppState().UserName}!! 👋',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .headlineLarge
                                                  .override(
                                                    font: GoogleFonts.poppins(
                                                      fontWeight:
                                                          FontWeight.w800,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .headlineLarge
                                                              .fontStyle,
                                                    ),
                                                    color: Color(0xFFE395E3),
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w800,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .headlineLarge
                                                            .fontStyle,
                                                    lineHeight: 1.4,
                                                  ),
                                            ),
                                            Text(
                                              'What would you like to practice today?',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyLarge
                                                  .override(
                                                    font: GoogleFonts.poppins(
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyLarge
                                                              .fontStyle,
                                                    ),
                                                    color: Color(0xFFE395E3),
                                                    fontSize: 30.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w600,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyLarge
                                                            .fontStyle,
                                                    lineHeight: 1.4,
                                                  ),
                                            ),
                                          ].divide(SizedBox(height: 4.0)),
                                        ),
                                      ),
                                      Flexible(
                                        child: Align(
                                          alignment:
                                              AlignmentDirectional(1.0, 0.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    15.0, 0.0, 0.0, 0.0),
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                FFAppState().allAnswers = [];
                                                FFAppState()
                                                    .allListeningQuestions = [];
                                                FFAppState().fillScore = 0;
                                                FFAppState().listeningScore = 0;
                                                FFAppState()
                                                    .currentFillExerciseIndex = 0;
                                                FFAppState().mcqPlayed = 0;
                                                FFAppState().fillPlayed = 0;
                                                safeSetState(() {});

                                                context.pushNamed(
                                                    HomeScreenWidget.routeName);
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
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondary,
                                                  size: 90.0,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            20.0, 0.0, 0.0, 0.0),
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            context.pushNamed(
                                                InstructionsPageWidget
                                                    .routeName);
                                          },
                                          child: Container(
                                            width: 100.0,
                                            height: 100.0,
                                            decoration: BoxDecoration(
                                              color: Color(0xFFE395E3),
                                              borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(12.0),
                                                topRight: Radius.circular(12.0),
                                                bottomLeft:
                                                    Radius.circular(12.0),
                                                bottomRight:
                                                    Radius.circular(12.0),
                                              ),
                                              border: Border.all(
                                                color: Colors.white,
                                                width: 2.0,
                                              ),
                                            ),
                                            child: Icon(
                                              Icons.help_outline,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondary,
                                              size: 90.0,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ].divide(SizedBox(height: 16.0)),
                            ),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              wrapWithModel(
                                model: _model.sectionHeaderModel1,
                                updateCallback: () => safeSetState(() {}),
                                child: SectionHeaderWidget(
                                  title: 'Grammar',
                                ),
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        flex: 1,
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            FFAppState().currentSession =
                                                ExamSessionStruct(
                                              mode: 'practice',
                                              currentFront: 'grammar',
                                              currentBlock:
                                                  'irregular_verbs_past_simple',
                                              currentQIndex: 0,
                                              score: 0,
                                              totalAnswered: 0,
                                              sessionId: 'session1',
                                            );
                                            safeSetState(() {});

                                            context.pushNamed(
                                                QuestionPracticeScreenWidget
                                                    .routeName);
                                          },
                                          child: wrapWithModel(
                                            model: _model.categoryCardModel1,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: CategoryCard2Widget(
                                              bgColor: Color(0xFFE3F2FD),
                                              icon: Icon(
                                                Icons.auto_stories_rounded,
                                                color: Color(0xFF1E88E5),
                                                size: 28.0,
                                              ),
                                              iconColor: Color(0xFF1E88E5),
                                              title:
                                                  'Irregular Verbs - Past Simple',
                                            ),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            FFAppState().currentSession =
                                                ExamSessionStruct(
                                              mode: 'practice',
                                              currentFront: 'grammar',
                                              currentBlock:
                                                  'irregular_verbs_past_participle',
                                              currentQIndex: 0,
                                              score: 0,
                                              totalAnswered: 0,
                                              sessionId: 'session1',
                                            );
                                            safeSetState(() {});

                                            context.pushNamed(
                                                QuestionPracticeScreenWidget
                                                    .routeName);
                                          },
                                          child: wrapWithModel(
                                            model: _model.categoryCardModel2,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: CategoryCard2Widget(
                                              bgColor: Color(0xFFF3E5F5),
                                              icon: Icon(
                                                Icons.history_rounded,
                                                color: Color(0xFF8E24AA),
                                                size: 28.0,
                                              ),
                                              iconColor: Color(0xFF8E24AA),
                                              title:
                                                  'Irregular Verbs - Past Participle',
                                            ),
                                          ),
                                        ),
                                      ),
                                    ].divide(SizedBox(width: 16.0)),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        flex: 1,
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            FFAppState().currentSession =
                                                ExamSessionStruct(
                                              mode: 'practice',
                                              currentFront: 'grammar',
                                              currentBlock: 'verbs',
                                              currentQIndex: 0,
                                              score: 0,
                                              totalAnswered: 0,
                                              sessionId: 'session1',
                                            );
                                            safeSetState(() {});

                                            context.pushNamed(
                                                QuestionPracticeScreenWidget
                                                    .routeName);
                                          },
                                          child: wrapWithModel(
                                            model: _model.categoryCardModel3,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: CategoryCard2Widget(
                                              bgColor: Color(0xFFE8F5E9),
                                              icon: Icon(
                                                Icons.spellcheck_rounded,
                                                color: Color(0xFF43A047),
                                                size: 28.0,
                                              ),
                                              iconColor: Color(0xFF43A047),
                                              title: 'Regular Verbs',
                                            ),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            FFAppState().currentSession =
                                                ExamSessionStruct(
                                              mode: 'practice',
                                              currentFront: 'grammar',
                                              currentBlock: 'prepositions',
                                              currentQIndex: 0,
                                              score: 0,
                                              totalAnswered: 0,
                                              sessionId: 'session1',
                                            );
                                            safeSetState(() {});

                                            context.pushNamed(
                                                QuestionPracticeScreenWidget
                                                    .routeName);
                                          },
                                          child: wrapWithModel(
                                            model: _model.categoryCardModel4,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: CategoryCard2Widget(
                                              bgColor: Color(0xFFFFF3E0),
                                              icon: Icon(
                                                Icons.place_rounded,
                                                color: Color(0xFFFB8C00),
                                                size: 28.0,
                                              ),
                                              iconColor: Color(0xFFFB8C00),
                                              title: 'Prepositions',
                                            ),
                                          ),
                                        ),
                                      ),
                                    ].divide(SizedBox(width: 16.0)),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        flex: 1,
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            FFAppState().currentSession =
                                                ExamSessionStruct(
                                              mode: 'practice',
                                              currentFront: 'grammar',
                                              currentBlock: 'phrasal_verbs',
                                              currentQIndex: 0,
                                              score: 0,
                                              totalAnswered: 0,
                                              sessionId: 'session1',
                                            );
                                            safeSetState(() {});

                                            context.pushNamed(
                                                QuestionPracticeScreenWidget
                                                    .routeName);
                                          },
                                          child: wrapWithModel(
                                            model: _model.categoryCardModel5,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: CategoryCard2Widget(
                                              bgColor: Color(0xFFFCE4EC),
                                              icon: Icon(
                                                Icons.menu_book_rounded,
                                                color: Color(0xFFD81B60),
                                                size: 28.0,
                                              ),
                                              iconColor: Color(0xFFD81B60),
                                              title: 'Phrasal Verbs',
                                            ),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            FFAppState().currentSession =
                                                ExamSessionStruct(
                                              mode: 'practice',
                                              currentFront: 'grammar',
                                              currentBlock: 'sentence_order',
                                              currentQIndex: 0,
                                              score: 0,
                                              totalAnswered: 0,
                                              sessionId: 'session1',
                                            );
                                            safeSetState(() {});

                                            context.pushNamed(
                                                QuestionPracticeScreenWidget
                                                    .routeName);
                                          },
                                          child: wrapWithModel(
                                            model: _model.categoryCardModel6,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: CategoryCard2Widget(
                                              bgColor: Color(0xFFFCE4EC),
                                              icon: Icon(
                                                Icons.read_more,
                                                color: Color(0xFFD81B60),
                                                size: 28.0,
                                              ),
                                              iconColor: Color(0xFFD81B60),
                                              title: 'Sentence Order',
                                            ),
                                          ),
                                        ),
                                      ),
                                    ].divide(SizedBox(width: 16.0)),
                                  ),
                                ].divide(SizedBox(height: 16.0)),
                              ),
                            ].divide(SizedBox(height: 16.0)),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              wrapWithModel(
                                model: _model.sectionHeaderModel2,
                                updateCallback: () => safeSetState(() {}),
                                child: SectionHeaderWidget(
                                  title: 'Listening',
                                ),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        FFAppState().currentFillExerciseIndex =
                                            0;
                                        safeSetState(() {});
                                        FFAppState().fillScore = 0;
                                        FFAppState().listeningScore = 0;
                                        FFAppState().allAnswers = [];
                                        safeSetState(() {});

                                        context.pushNamed(
                                            ListeningFillWordsScreenWidget
                                                .routeName);
                                      },
                                      child: wrapWithModel(
                                        model: _model.categoryCardModel7,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: CategoryCard2Widget(
                                          bgColor: Color(0xFFE0F7FA),
                                          icon: Icon(
                                            Icons.graphic_eq_rounded,
                                            color: Color(0xFF00ACC1),
                                            size: 28.0,
                                          ),
                                          iconColor: Color(0xFF00ACC1),
                                          title: 'Listening Fill',
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        FFAppState().allAnswers = [];
                                        safeSetState(() {});
                                        FFAppState().listeningScore = 0;
                                        FFAppState().fillScore = 0;
                                        safeSetState(() {});

                                        context.pushNamed(
                                            ListeningMCQScreenWidget.routeName);
                                      },
                                      child: wrapWithModel(
                                        model: _model.categoryCardModel8,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: CategoryCard2Widget(
                                          bgColor: Color(0xFFF9FBE7),
                                          icon: Icon(
                                            Icons.record_voice_over_rounded,
                                            color: Color(0xFFC0CA33),
                                            size: 28.0,
                                          ),
                                          iconColor: Color(0xFFC0CA33),
                                          title: 'Listen & Answer',
                                        ),
                                      ),
                                    ),
                                  ),
                                ].divide(SizedBox(width: 16.0)),
                              ),
                            ].divide(SizedBox(height: 16.0)),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              wrapWithModel(
                                model: _model.sectionHeaderModel3,
                                updateCallback: () => safeSetState(() {}),
                                child: SectionHeaderWidget(
                                  title: 'Vocabulary',
                                ),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        FFAppState().currentSession =
                                            ExamSessionStruct(
                                          mode: 'practice',
                                          currentFront: 'vocabulary',
                                          currentBlock: 'vocabulary',
                                          currentQIndex: 0,
                                          score: 0,
                                          totalAnswered: 0,
                                          sessionId: 'session1',
                                        );
                                        safeSetState(() {});

                                        context.pushNamed(
                                            QuestionPracticeScreenWidget
                                                .routeName);
                                      },
                                      child: wrapWithModel(
                                        model: _model.categoryCardModel9,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: CategoryCard2Widget(
                                          bgColor: Color(0xFFFFFDE7),
                                          icon: Icon(
                                            Icons.translate_rounded,
                                            color: Color(0xFFFBC02D),
                                            size: 28.0,
                                          ),
                                          iconColor: Color(0xFFFBC02D),
                                          title: 'Vocabulary',
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        FFAppState().currentSession =
                                            ExamSessionStruct(
                                          mode: 'practice',
                                          currentFront: 'grammar',
                                          currentBlock: 'confusing_words',
                                          currentQIndex: 0,
                                          score: 0,
                                          totalAnswered: 0,
                                          sessionId: 'session1',
                                        );
                                        safeSetState(() {});

                                        context.pushNamed(
                                            QuestionPracticeScreenWidget
                                                .routeName);
                                      },
                                      child: wrapWithModel(
                                        model: _model.categoryCardModel10,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: CategoryCard2Widget(
                                          bgColor: Color(0xFFEFEBE9),
                                          icon: Icon(
                                            Icons.link,
                                            color: Color(0xFF6D4C41),
                                            size: 28.0,
                                          ),
                                          iconColor: Color(0xFF6D4C41),
                                          title: 'Confusing Words',
                                        ),
                                      ),
                                    ),
                                  ),
                                ].divide(SizedBox(width: 16.0)),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        FFAppState().currentSession =
                                            ExamSessionStruct(
                                          mode: 'practice',
                                          currentFront: 'grammar',
                                          currentBlock: 'synonyms',
                                          currentQIndex: 0,
                                          score: 0,
                                          totalAnswered: 0,
                                          sessionId: 'session1',
                                        );
                                        safeSetState(() {});

                                        context.pushNamed(
                                            QuestionPracticeScreenWidget
                                                .routeName);
                                      },
                                      child: wrapWithModel(
                                        model: _model.categoryCardModel11,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: CategoryCard2Widget(
                                          bgColor: Color(0xFFEFEBE9),
                                          icon: Icon(
                                            Icons.compare_arrows_rounded,
                                            color: Color(0xFF6D4C41),
                                            size: 28.0,
                                          ),
                                          iconColor: Color(0xFF6D4C41),
                                          title: 'Synonyms',
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        FFAppState().currentSession =
                                            ExamSessionStruct(
                                          mode: 'practice',
                                          currentFront: 'grammar',
                                          currentBlock: 'antonyms',
                                          currentQIndex: 0,
                                          score: 0,
                                          totalAnswered: 0,
                                          sessionId: 'session1',
                                        );
                                        safeSetState(() {});

                                        context.pushNamed(
                                            QuestionPracticeScreenWidget
                                                .routeName);
                                      },
                                      child: wrapWithModel(
                                        model: _model.categoryCardModel12,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: CategoryCard2Widget(
                                          bgColor: Color(0xFFF1F8E9),
                                          icon: Icon(
                                            Icons.swap_horiz_rounded,
                                            color: Color(0xFF7CB342),
                                            size: 28.0,
                                          ),
                                          iconColor: Color(0xFF7CB342),
                                          title: 'Antonyms',
                                        ),
                                      ),
                                    ),
                                  ),
                                ].divide(SizedBox(width: 16.0)),
                              ),
                            ].divide(SizedBox(height: 16.0)),
                          ),
                          Container(
                            height: 32.0,
                          ),
                        ].divide(SizedBox(height: 24.0)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
