import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'tag_widget_model.dart';
export 'tag_widget_model.dart';

class TagWidgetWidget extends StatefulWidget {
  const TagWidgetWidget({
    super.key,
    this.title,
  });

  final String? title;

  @override
  State<TagWidgetWidget> createState() => _TagWidgetWidgetState();
}

class _TagWidgetWidgetState extends State<TagWidgetWidget> {
  late TagWidgetModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TagWidgetModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(4.0),
      child: Container(
        height: 20.0,
        constraints: const BoxConstraints(
          minWidth: 20.0,
        ),
        decoration: BoxDecoration(
          color: const Color(0x8A898989),
          borderRadius: BorderRadius.circular(4.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: Text(
            valueOrDefault<String>(
              widget.title,
              'title',
            ),
            textAlign: TextAlign.center,
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Readex Pro',
                  fontSize: 12.0,
                ),
          ),
        ),
      ),
    );
  }
}
