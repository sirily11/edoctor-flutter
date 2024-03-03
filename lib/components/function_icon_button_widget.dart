import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'function_icon_button_model.dart';
export 'function_icon_button_model.dart';

class FunctionIconButtonWidget extends StatefulWidget {
  const FunctionIconButtonWidget({
    super.key,
    this.icon,
    this.title,
    this.desription,
  });

  final Widget? icon;
  final String? title;
  final String? desription;

  @override
  State<FunctionIconButtonWidget> createState() =>
      _FunctionIconButtonWidgetState();
}

class _FunctionIconButtonWidgetState extends State<FunctionIconButtonWidget> {
  late FunctionIconButtonModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FunctionIconButtonModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            width: 50.0,
            height: 50.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).primary,
              shape: BoxShape.circle,
            ),
            child: widget.icon!,
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
            child: Text(
              valueOrDefault<String>(
                widget.title,
                'title',
              ),
              textAlign: TextAlign.center,
              style: FlutterFlowTheme.of(context).bodyLarge,
            ),
          ),
          Text(
            valueOrDefault<String>(
              widget.desription,
              'description',
            ),
            textAlign: TextAlign.center,
            style: FlutterFlowTheme.of(context).bodySmall.override(
                  fontFamily: 'Readex Pro',
                  fontSize: 10.0,
                  fontWeight: FontWeight.w300,
                ),
          ),
        ],
      ),
    );
  }
}
