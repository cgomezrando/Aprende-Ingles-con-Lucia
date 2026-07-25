import '/backend/schema/structs/index.dart';
import '/components/breakdown_card_widget.dart';
import '/components/decorative_sparkle_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'results_screen_model.dart';
export 'results_screen_model.dart';

/// Create a PREMIUM, visually stunning results screen for an English learning
/// app called "Aprende Inglés con Lucía", optimized for iPad.
///
/// Think Duolingo-quality polish and delight.
///
/// DESIGN LANGUAGE:
/// - Modern, premium mobile game aesthetic
/// - Sky-blue to soft-pink gradient background with subtle floating
/// decorative elements (stars, sparkles, small clouds)
/// - Glassmorphism cards (frosted glass effect with blur, semi-transparent
/// white, subtle borders)
/// - Vibrant but tasteful color palette: coral pink (#FF6B9D), sky blue
/// (#4A9EFF), mint green (#3EDBB0), sunny yellow (#FFD93D)
/// - Poppins font family throughout
/// - Generous whitespace, everything breathes
/// - Rounded corners everywhere (20-28px radius)
/// - Soft layered shadows for depth
///
/// LAYOUT (top to bottom):
///
/// 1. Celebration header:
///    - Animated-looking trophy or medal illustration/emoji at top center,
/// large
///    - "¡Felicidades!" in bold gradient text, size 36
///    - User's name in a decorative pill badge below (bound to UserName)
///
/// 2. Hero score circle (the centerpiece):
///    - A large circular progress ring showing the percentage
///    - The percentage number huge in the center (size 56, bold)
///    - The ring should be a gradient stroke
///    - Small "Puntuación total" label below the number
///    - Surround with subtle glow effect
///
/// 3. Total correct answers card (glassmorphism):
///    - "Respuestas correctas" label
///    - Large fraction display "23 / 30" with the 23 emphasized in accent
/// color
///
/// 4. Breakdown cards (three separate glassmorphic cards in a column, each
/// distinct):
///    - Card 1 "Examen" — with a document/pencil icon, blue accent, score on
/// the right in a colored badge
///    - Card 2 "Listening MCQ" — with a headphones icon, green accent, score
/// badge
///    - Card 3 "Fill Words" — with a pencil/edit icon, pink accent, score
/// badge
///    - Each card has icon on left, label in middle, score badge on right
///    - Subtle hover/press states
///
/// 5. Motivational message banner:
///    - A small pill or banner with an encouraging message like "¡Sigue así!
/// 🌟"
///
/// 6. Premium CTA button:
///    - Large "Volver al Inicio" button
///    - Gradient fill (coral to pink), full width with side margins
///    - White bold text, size 20
///    - Rounded 24px, prominent drop shadow
///    - Small home icon on the left of the text
///
/// DETAILS THAT MATTER:
/// - Add depth with layered shadows
/// - Use gradients on key elements, not flat colors
/// - Consistent 16-24px spacing rhythm
/// - Make the percentage circle the clear focal point
/// - Decorative sparkle/star elements scattered subtly in the background
/// - Everything should feel celebratory, rewarding, and high-quality
///
/// Use placeholder values for now (name: "Carlos", percentage: 85%, correct:
/// 23/30, exam: 8/10, listening: 45/100, fill: 30/50). No logic or actions
/// needed, just the premium visual layout.
class ResultsScreenWidget extends StatefulWidget {
  const ResultsScreenWidget({super.key});

  static String routeName = 'ResultsScreen';
  static String routePath = '/resultsScreen';

  @override
  State<ResultsScreenWidget> createState() => _ResultsScreenWidgetState();
}

class _ResultsScreenWidgetState extends State<ResultsScreenWidget> {
  late ResultsScreenModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ResultsScreenModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.countResult = await actions.countCorrectAnswers(
        FFAppState().allAnswers.toList(),
      );
      _model.correctCount = _model.countResult;
      safeSetState(() {});
      _model.totalCount = FFAppState().allAnswers.length;
      safeSetState(() {});
      _model.percentResult = await actions.calculatePercentage(
        _model.correctCount!,
        _model.totalCount!,
      );
      _model.percentageText = _model.percentResult;
      safeSetState(() {});
      _model.examCorrect = await actions.countExamCorrect(
        FFAppState().allAnswers.toList(),
      );
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
        body: Stack(
          alignment: AlignmentDirectional(-1.0, -1.0),
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: Image.asset(
                    'assets/images/Designer_(24).png',
                  ).image,
                ),
                gradient: LinearGradient(
                  colors: [Color(0xFF4A9EFF), Color(0xFFFF6B9D)],
                  stops: [0.0, 1.0],
                  begin: AlignmentDirectional(1.0, 1.0),
                  end: AlignmentDirectional(-1.0, -1.0),
                ),
                shape: BoxShape.rectangle,
              ),
            ),
            wrapWithModel(
              model: _model.decorativeSparkleModel1,
              updateCallback: () => safeSetState(() {}),
              child: DecorativeSparkleWidget(
                top: 120.0,
                left: 80.0,
                size: 24.0,
              ),
            ),
            wrapWithModel(
              model: _model.decorativeSparkleModel2,
              updateCallback: () => safeSetState(() {}),
              child: DecorativeSparkleWidget(
                top: 400.0,
                left: 50.0,
                size: 16.0,
              ),
            ),
            wrapWithModel(
              model: _model.decorativeSparkleModel3,
              updateCallback: () => safeSetState(() {}),
              child: DecorativeSparkleWidget(
                top: 150.0,
                left: 700.0,
                size: 32.0,
              ),
            ),
            wrapWithModel(
              model: _model.decorativeSparkleModel4,
              updateCallback: () => safeSetState(() {}),
              child: DecorativeSparkleWidget(
                top: 600.0,
                left: 800.0,
                size: 20.0,
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
                    padding: EdgeInsetsDirectional.fromSTEB(
                        120.0, 40.0, 120.0, 40.0),
                    child: Container(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Align(
                            alignment: AlignmentDirectional(-1.0, -1.0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  25.0, 25.0, 0.0, 0.0),
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
                                    color:
                                        FlutterFlowTheme.of(context).secondary,
                                    size: 90.0,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Lottie.network(
                                'https://dimg.dreamflow.cloud/v1/lottie/animated+gold+trophy',
                                width: 180.0,
                                height: 180.0,
                                fit: BoxFit.contain,
                                animate: true,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 8.0,
                                      color: Color(0x20000000),
                                      offset: Offset(
                                        0.0,
                                        4.0,
                                      ),
                                      spreadRadius: 0.0,
                                    )
                                  ],
                                  shape: BoxShape.rectangle,
                                ),
                                child: Text(
                                  '¡Felicidades!',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w900,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                        color: Colors.black,
                                        fontSize: 42.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w900,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                        lineHeight: 1.4,
                                      ),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100.0),
                                  shape: BoxShape.rectangle,
                                  border: Border.all(
                                    color: Colors.transparent,
                                    width: 1.0,
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      24.0, 8.0, 24.0, 8.0),
                                  child: Container(
                                    child: Text(
                                      FFAppState().UserName,
                                      style: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .override(
                                            font: GoogleFonts.poppins(
                                              fontWeight: FontWeight.w600,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .titleMedium
                                                      .fontStyle,
                                            ),
                                            color: Colors.black,
                                            fontSize: 24.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w600,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleMedium
                                                    .fontStyle,
                                            lineHeight: 1.4,
                                          ),
                                    ),
                                  ),
                                ),
                              ),
                            ].divide(SizedBox(height: 16.0)),
                          ),
                          Container(
                            height: 40.0,
                          ),
                          Stack(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            children: [
                              ClipRect(
                                child: ImageFiltered(
                                  imageFilter: ImageFilter.blur(
                                    sigmaX: 40.0,
                                    sigmaY: 40.0,
                                  ),
                                  child: Container(
                                    width: 240.0,
                                    height: 240.0,
                                    decoration: BoxDecoration(
                                      color: Color(0x4DFFD93D),
                                      borderRadius:
                                          BorderRadius.circular(9999.0),
                                      shape: BoxShape.rectangle,
                                    ),
                                  ),
                                ),
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(9999.0),
                                child: BackdropFilter(
                                  filter: ImageFilter.blur(
                                    sigmaX: 10.0,
                                    sigmaY: 10.0,
                                  ),
                                  child: Container(
                                    width: 220.0,
                                    height: 220.0,
                                    decoration: BoxDecoration(
                                      color: Color(0x4DFFFFFF),
                                      borderRadius:
                                          BorderRadius.circular(9999.0),
                                      shape: BoxShape.rectangle,
                                      border: Border.all(
                                        color: Colors.transparent,
                                        width: 2.0,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(12.0),
                                      child: Container(
                                        child: Stack(
                                          alignment:
                                              AlignmentDirectional(0.0, 0.0),
                                          children: [
                                            CircularPercentIndicator(
                                              percent: 0.85,
                                              radius: 100.0,
                                              lineWidth: 16.0,
                                              animation: true,
                                              animateFromLastPercent: true,
                                              progressColor: Color(0xFFE395E3),
                                              backgroundColor: Colors.white,
                                            ),
                                            Column(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Text(
                                                  valueOrDefault<String>(
                                                    _model.percentageText,
                                                    '85%',
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        font:
                                                            GoogleFonts.poppins(
                                                          fontWeight:
                                                              FontWeight.w900,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                        color: Colors.black,
                                                        fontSize: 45.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w900,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                        lineHeight: 1.4,
                                                      ),
                                                ),
                                                Text(
                                                  'Puntuación total',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .labelSmall
                                                      .override(
                                                        font:
                                                            GoogleFonts.poppins(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelSmall
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelSmall
                                                                  .fontStyle,
                                                        ),
                                                        color: Colors.black,
                                                        fontSize: 15.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelSmall
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelSmall
                                                                .fontStyle,
                                                        lineHeight: 1.4,
                                                      ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            height: 40.0,
                          ),
                          Container(
                            constraints: BoxConstraints(
                              maxWidth: 600.0,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(28.0),
                                  child: BackdropFilter(
                                    filter: ImageFilter.blur(
                                      sigmaX: 25.0,
                                      sigmaY: 25.0,
                                    ),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                            blurRadius: 25.0,
                                            color: Color(0x15000000),
                                            offset: Offset(
                                              0.0,
                                              10.0,
                                            ),
                                            spreadRadius: 0.0,
                                          )
                                        ],
                                        borderRadius:
                                            BorderRadius.circular(28.0),
                                        shape: BoxShape.rectangle,
                                        border: Border.all(
                                          color: Color(0xFFE395E3),
                                          width: 5.0,
                                        ),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(32.0),
                                        child: Container(
                                          child: Row(
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
                                                    'TOTAL respuestas correctas',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .titleLarge
                                                        .override(
                                                          font: GoogleFonts
                                                              .poppins(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleLarge
                                                                    .fontStyle,
                                                          ),
                                                          color: Colors.black,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleLarge
                                                                  .fontStyle,
                                                          lineHeight: 1.4,
                                                        ),
                                                  ),
                                                  Text(
                                                    '¡Excelente progreso hoy!',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          font: GoogleFonts
                                                              .poppins(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                          ),
                                                          color: Colors.black,
                                                          fontSize: 18.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                          lineHeight: 1.4,
                                                        ),
                                                  ),
                                                ].divide(SizedBox(height: 4.0)),
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    valueOrDefault<String>(
                                                      '${_model.correctCount?.toString()}/${_model.totalCount?.toString()}',
                                                      '1/7',
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          font: GoogleFonts
                                                              .poppins(
                                                            fontWeight:
                                                                FontWeight.w900,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                          ),
                                                          color:
                                                              Color(0xFFFF6B9D),
                                                          fontSize: 36.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w900,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                          lineHeight: 1.4,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    wrapWithModel(
                                      model: _model.breakdownCardModel1,
                                      updateCallback: () => safeSetState(() {}),
                                      child: BreakdownCardWidget(
                                        tone: Color(0xFF4A9EFF),
                                        icon: Icon(
                                          Icons.description_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          size: 24.0,
                                        ),
                                        title: 'Examen de 100 preguntas',
                                        score:
                                            '${_model.examCorrect?.toString()}/100',
                                        total: '',
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.breakdownCardModel2,
                                      updateCallback: () => safeSetState(() {}),
                                      child: BreakdownCardWidget(
                                        tone: Color(0xFF3EDBB0),
                                        icon: Icon(
                                          Icons.headphones_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          size: 24.0,
                                        ),
                                        title: 'Listening and Answer',
                                        score:
                                            '${FFAppState().listeningScore.toString()}${FFAppState().currentSession.mode == 'exam' ? '/5' : '/25'}',
                                        total: '',
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.breakdownCardModel3,
                                      updateCallback: () => safeSetState(() {}),
                                      child: BreakdownCardWidget(
                                        tone: Color(0xFFFF6B9D),
                                        icon: Icon(
                                          Icons.edit_note_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          size: 24.0,
                                        ),
                                        title: 'Listening and Fill',
                                        score:
                                            '${FFAppState().fillScore.toString()}${FFAppState().currentSession.mode == 'exam' ? '/5' : '/25'}',
                                        total: '',
                                      ),
                                    ),
                                  ].divide(SizedBox(height: 16.0)),
                                ),
                                Container(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 20.0,
                                        color: Color(0x60FF6B9D),
                                        offset: Offset(
                                          0.0,
                                          8.0,
                                        ),
                                        spreadRadius: 0.0,
                                      )
                                    ],
                                    shape: BoxShape.rectangle,
                                  ),
                                  child: Container(
                                    width: 0.0,
                                    height: 0.0,
                                  ),
                                ),
                              ].divide(SizedBox(height: 24.0)),
                            ),
                          ),
                        ],
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
