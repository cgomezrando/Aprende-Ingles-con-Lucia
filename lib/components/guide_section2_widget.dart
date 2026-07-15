import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'guide_section2_model.dart';
export 'guide_section2_model.dart';

class GuideSection2Widget extends StatefulWidget {
  const GuideSection2Widget({
    super.key,
    String? emoji,
    String? title,
    bool? open,
    String? content,
  })  : this.emoji = emoji ?? '🏠',
        this.title = title ?? 'Pantalla Principal',
        this.open = open ?? false,
        this.content = content ??
            'Cuando abres la app, ves 3 actividades:\n\n• Examen\n• Listening MCQ: Escucha historias en inglés y responde preguntas\n• Fill Words: Completa palabras que faltan en un texto';

  final String emoji;
  final String title;
  final bool open;
  final String content;

  @override
  State<GuideSection2Widget> createState() => _GuideSection2WidgetState();
}

class _GuideSection2WidgetState extends State<GuideSection2Widget> {
  late GuideSection2Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GuideSection2Model());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 15.0),
      child: Container(
        child: Container(
          decoration: BoxDecoration(
            color: Color(0xFFF9F9F9),
            borderRadius: BorderRadius.circular(12.0),
            shape: BoxShape.rectangle,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Container(
                    child: Container(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            flex: 1,
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  valueOrDefault<String>(
                                    widget!.emoji,
                                    '🏠',
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: GoogleFonts.poppins(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                        fontSize: 32.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                        lineHeight: 1.4,
                                      ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Text(
                                    valueOrDefault<String>(
                                      widget!.title,
                                      'Pantalla Principal',
                                    ),
                                    maxLines: 1,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          font: GoogleFonts.poppins(
                                            fontWeight: FontWeight.bold,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                          color: Color(0xFF333333),
                                          fontSize: 22.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.bold,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                          lineHeight: 1.4,
                                        ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ].divide(SizedBox(width: 16.0)),
                            ),
                          ),
                          Container(
                            width: 28.0,
                            height: 28.0,
                            child: Stack(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              children: [
                                if (valueOrDefault<bool>(
                                  valueOrDefault<bool>(
                                    widget!.open,
                                    false,
                                  )
                                      ? true
                                      : false,
                                  false,
                                ))
                                  Icon(
                                    Icons.keyboard_arrow_up_rounded,
                                    color: Color(0xFF666666),
                                    size: 28.0,
                                  ),
                                if (valueOrDefault<bool>(
                                  valueOrDefault<bool>(
                                    widget!.open,
                                    false,
                                  )
                                      ? false
                                      : true,
                                  false,
                                ))
                                  Icon(
                                    Icons.keyboard_arrow_down_rounded,
                                    color: Color(0xFF666666),
                                    size: 28.0,
                                  ),
                              ],
                            ),
                          ),
                        ].divide(SizedBox(width: 16.0)),
                      ),
                    ),
                  ),
                ),
              ),
              if (valueOrDefault<bool>(
                widget!.open,
                false,
              ))
                Container(
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 20.0),
                    child: Container(
                      child: Text(
                        valueOrDefault<String>(
                          widget!.content,
                          'Cuando abres la app, ves 3 actividades:\n\n• Examen\n• Listening MCQ: Escucha historias en inglés y responde preguntas\n• Fill Words: Completa palabras que faltan en un texto',
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              font: GoogleFonts.poppins(
                                fontWeight: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontStyle,
                              ),
                              color: Color(0xFF666666),
                              letterSpacing: 0.0,
                              fontWeight: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                              lineHeight: 1.6,
                            ),
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
