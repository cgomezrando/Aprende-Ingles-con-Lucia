import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'category_card2_model.dart';
export 'category_card2_model.dart';

class CategoryCard2Widget extends StatefulWidget {
  const CategoryCard2Widget({
    super.key,
    Color? bgColor,
    this.icon,
    Color? iconColor,
    String? title,
  })  : this.bgColor = bgColor ?? const Color(0xFFE3F2FD),
        this.iconColor = iconColor ?? const Color(0xFF1E88E5),
        this.title = title ?? 'Irregular Verbs';

  final Color bgColor;
  final Widget? icon;
  final Color iconColor;
  final String title;

  @override
  State<CategoryCard2Widget> createState() => _CategoryCard2WidgetState();
}

class _CategoryCard2WidgetState extends State<CategoryCard2Widget> {
  late CategoryCard2Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CategoryCard2Model());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 119.09,
      decoration: BoxDecoration(
        color: valueOrDefault<Color>(
          widget!.bgColor,
          Color(0xFFE3F2FD),
        ),
        borderRadius: BorderRadius.circular(24.0),
        shape: BoxShape.rectangle,
        border: Border.all(
          color: Color(0xFFE395E3),
          width: 4.0,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(12.0),
        child: Container(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Color(0x66FFFFFF),
                  borderRadius: BorderRadius.circular(9999.0),
                  shape: BoxShape.rectangle,
                ),
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Container(
                    child: Container(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: widget!.icon!,
                    ),
                  ),
                ),
              ),
              Text(
                valueOrDefault<String>(
                  widget!.title,
                  'Irregular Verbs',
                ),
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).labelLarge.override(
                      font: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        fontStyle:
                            FlutterFlowTheme.of(context).labelLarge.fontStyle,
                      ),
                      color: Colors.black,
                      fontSize: 20.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w600,
                      fontStyle:
                          FlutterFlowTheme.of(context).labelLarge.fontStyle,
                      lineHeight: 1.4,
                    ),
              ),
            ].divide(SizedBox(height: 16.0)),
          ),
        ),
      ),
    );
  }
}
