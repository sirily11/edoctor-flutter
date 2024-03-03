import '/components/function_icon_button_widget.dart';
import '/components/section_card_title_widget.dart';
import '/components/tag_widget_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Carousel widget.
  CarouselController? carouselController;

  int carouselCurrentIndex = 0;

  // Model for FunctionIconButton component.
  late FunctionIconButtonModel functionIconButtonModel1;
  // Model for FunctionIconButton component.
  late FunctionIconButtonModel functionIconButtonModel2;
  // Model for FunctionIconButton component.
  late FunctionIconButtonModel functionIconButtonModel3;
  // Model for FunctionIconButton component.
  late FunctionIconButtonModel functionIconButtonModel4;
  // Model for FunctionIconButton component.
  late FunctionIconButtonModel functionIconButtonModel5;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];
  // Model for SectionCardTitle component.
  late SectionCardTitleModel sectionCardTitleModel1;
  // Model for SectionCardTitle component.
  late SectionCardTitleModel sectionCardTitleModel2;
  // Models for TagWidget dynamic component.
  late FlutterFlowDynamicModels<TagWidgetModel> tagWidgetModels1;
  // Model for SectionCardTitle component.
  late SectionCardTitleModel sectionCardTitleModel3;
  // Models for TagWidget dynamic component.
  late FlutterFlowDynamicModels<TagWidgetModel> tagWidgetModels2;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    functionIconButtonModel1 =
        createModel(context, () => FunctionIconButtonModel());
    functionIconButtonModel2 =
        createModel(context, () => FunctionIconButtonModel());
    functionIconButtonModel3 =
        createModel(context, () => FunctionIconButtonModel());
    functionIconButtonModel4 =
        createModel(context, () => FunctionIconButtonModel());
    functionIconButtonModel5 =
        createModel(context, () => FunctionIconButtonModel());
    sectionCardTitleModel1 =
        createModel(context, () => SectionCardTitleModel());
    sectionCardTitleModel2 =
        createModel(context, () => SectionCardTitleModel());
    tagWidgetModels1 = FlutterFlowDynamicModels(() => TagWidgetModel());
    sectionCardTitleModel3 =
        createModel(context, () => SectionCardTitleModel());
    tagWidgetModels2 = FlutterFlowDynamicModels(() => TagWidgetModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    functionIconButtonModel1.dispose();
    functionIconButtonModel2.dispose();
    functionIconButtonModel3.dispose();
    functionIconButtonModel4.dispose();
    functionIconButtonModel5.dispose();
    sectionCardTitleModel1.dispose();
    sectionCardTitleModel2.dispose();
    tagWidgetModels1.dispose();
    sectionCardTitleModel3.dispose();
    tagWidgetModels2.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
