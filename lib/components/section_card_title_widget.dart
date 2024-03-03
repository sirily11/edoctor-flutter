import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'section_card_title_model.dart';
export 'section_card_title_model.dart';

class SectionCardTitleWidget extends StatefulWidget {
  const SectionCardTitleWidget({
    super.key,
    this.title,
  });

  final String? title;

  @override
  State<SectionCardTitleWidget> createState() => _SectionCardTitleWidgetState();
}

class _SectionCardTitleWidgetState extends State<SectionCardTitleWidget> {
  late SectionCardTitleModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SectionCardTitleModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              valueOrDefault<String>(
                widget.title,
                'title',
              ),
              style: FlutterFlowTheme.of(context).titleLarge.override(
                    fontFamily: 'Outfit',
                    fontSize: 18.0,
                  ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  '了解更多',
                  style: FlutterFlowTheme.of(context).labelLarge.override(
                        fontFamily: 'Readex Pro',
                        fontSize: 14.0,
                      ),
                ),
                Icon(
                  Icons.expand_more,
                  color: FlutterFlowTheme.of(context).secondaryText,
                  size: 24.0,
                ),
              ],
            ),
          ],
        ),
        const Divider(
          thickness: 1.0,
          color: Color(0x73C5BEBE),
        ),
      ],
    );
  }
}
