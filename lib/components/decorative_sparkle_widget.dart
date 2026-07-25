import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'decorative_sparkle_model.dart';
export 'decorative_sparkle_model.dart';

class DecorativeSparkleWidget extends StatefulWidget {
  const DecorativeSparkleWidget({
    super.key,
    double? top,
    double? left,
    double? size,
  })  : this.top = top ?? 120.0,
        this.left = left ?? 80.0,
        this.size = size ?? 24.0;

  final double top;
  final double left;
  final double size;

  @override
  State<DecorativeSparkleWidget> createState() =>
      _DecorativeSparkleWidgetState();
}

class _DecorativeSparkleWidgetState extends State<DecorativeSparkleWidget> {
  late DecorativeSparkleModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DecorativeSparkleModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 0.6,
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(
            0.0,
            valueOrDefault<double>(
              widget!.top,
              120.0,
            ),
            valueOrDefault<double>(
              widget!.left,
              80.0,
            ),
            0.0),
        child: Container(
          alignment: AlignmentDirectional(-1.0, -1.0),
          child: Container(
            child: Icon(
              Icons.auto_awesome_rounded,
              color: Color(0xFFFFD93D),
              size: valueOrDefault<double>(
                widget!.size,
                24.0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
