import '/backend/supabase/supabase.dart';
import '/components/function_icon_button_widget.dart';
import '/components/section_card_title_widget.dart';
import '/components/tag_widget_widget.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'home_page_model.dart';
export 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({super.key});

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<IntroductionCarouselRow>>(
      future: IntroductionCarouselTable().queryRows(
        queryFn: (q) => q,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            ),
          );
        }
        List<IntroductionCarouselRow> homePageIntroductionCarouselRowList =
            snapshot.data!;
        return GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            appBar: AppBar(
              backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
              automaticallyImplyLeading: false,
              title: Text(
                FFAppConstants.AppName,
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      fontFamily: 'Outfit',
                      color: FlutterFlowTheme.of(context).primaryText,
                      fontSize: 22.0,
                    ),
              ),
              actions: const [],
              centerTitle: false,
              elevation: 2.0,
            ),
            body: SafeArea(
              top: true,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                      child: Container(
                        width: double.infinity,
                        height: 200.0,
                        decoration: const BoxDecoration(
                          color: Color(0x00FFFFFF),
                        ),
                        child: Builder(
                          builder: (context) {
                            final rows =
                                homePageIntroductionCarouselRowList.toList();
                            return SizedBox(
                              width: double.infinity,
                              height: 180.0,
                              child: CarouselSlider.builder(
                                itemCount: rows.length,
                                itemBuilder: (context, rowsIndex, _) {
                                  final rowsItem = rows[rowsIndex];
                                  return ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: Image.network(
                                      rowsItem.coverImage,
                                      width: 331.0,
                                      height: 200.0,
                                      fit: BoxFit.cover,
                                    ),
                                  );
                                },
                                carouselController:
                                    _model.carouselController ??=
                                        CarouselController(),
                                options: CarouselOptions(
                                  initialPage: min(0, rows.length - 1),
                                  viewportFraction: 0.94,
                                  disableCenter: true,
                                  enlargeCenterPage: true,
                                  enlargeFactor: 0.25,
                                  enableInfiniteScroll: true,
                                  scrollDirection: Axis.horizontal,
                                  autoPlay: false,
                                  onPageChanged: (index, _) =>
                                      _model.carouselCurrentIndex = index,
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        elevation: 0.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              10.0, 0.0, 10.0, 0.0),
                          child: GridView(
                            padding: EdgeInsets.zero,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 4,
                              crossAxisSpacing: 10.0,
                              mainAxisSpacing: 0.0,
                              childAspectRatio: 0.8,
                            ),
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            children: [
                              wrapWithModel(
                                model: _model.functionIconButtonModel1,
                                updateCallback: () => setState(() {}),
                                child: FunctionIconButtonWidget(
                                  icon: Icon(
                                    Icons.video_chat,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                  ),
                                  title: 'i录课',
                                  desription: '视频演讲录制',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.functionIconButtonModel2,
                                updateCallback: () => setState(() {}),
                                child: FunctionIconButtonWidget(
                                  icon: Icon(
                                    Icons.healing,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                  ),
                                  title: 'i临床',
                                  desription: '病例创作交流',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.functionIconButtonModel3,
                                updateCallback: () => setState(() {}),
                                child: FunctionIconButtonWidget(
                                  icon: Icon(
                                    Icons.edit_document,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                  ),
                                  title: 'i创作',
                                  desription: '文章科普写作',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.functionIconButtonModel4,
                                updateCallback: () => setState(() {}),
                                child: FunctionIconButtonWidget(
                                  icon: Icon(
                                    Icons.today,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                  ),
                                  title: 'i开播',
                                  desription: '直播学术分享',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.functionIconButtonModel5,
                                updateCallback: () => setState(() {}),
                                child: FunctionIconButtonWidget(
                                  icon: Icon(
                                    Icons.newspaper_rounded,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                  ),
                                  title: 'i-Paper',
                                  desription: '英文文献解读',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    FutureBuilder<List<LearningCategoryRow>>(
                      future: LearningCategoryTable().queryRows(
                        queryFn: (q) => q,
                      ),
                      builder: (context, snapshot) {
                        // Customize what your widget looks like when it's loading.
                        if (!snapshot.hasData) {
                          return Center(
                            child: SizedBox(
                              width: 50.0,
                              height: 50.0,
                              child: CircularProgressIndicator(
                                valueColor: AlwaysStoppedAnimation<Color>(
                                  FlutterFlowTheme.of(context).primary,
                                ),
                              ),
                            ),
                          );
                        }
                        List<LearningCategoryRow>
                            learningSpaceStationLearningCategoryRowList =
                            snapshot.data!;
                        return Container(
                          width: 100.0,
                          height: 100.0,
                          decoration: const BoxDecoration(
                            color: Color(0x00FFFFFF),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text(
                                  '学术空间站',
                                  style:
                                      FlutterFlowTheme.of(context).titleLarge,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    10.0, 0.0, 10.0, 0.0),
                                child: FlutterFlowChoiceChips(
                                  options:
                                      learningSpaceStationLearningCategoryRowList
                                          .map((e) => e.title)
                                          .toList()
                                          .map((label) => ChipData(label))
                                          .toList(),
                                  onChanged: (val) => setState(() => _model
                                      .choiceChipsValue = val?.firstOrNull),
                                  selectedChipStyle: ChipStyle(
                                    backgroundColor:
                                        FlutterFlowTheme.of(context).primary,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                        ),
                                    iconColor: const Color(0xFF601D78),
                                    iconSize: 12.0,
                                    elevation: 4.0,
                                    borderRadius: BorderRadius.circular(6.0),
                                  ),
                                  unselectedChipStyle: ChipStyle(
                                    backgroundColor:
                                        FlutterFlowTheme.of(context).alternate,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                        ),
                                    iconColor: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    iconSize: 12.0,
                                    elevation: 0.0,
                                    borderRadius: BorderRadius.circular(6.0),
                                  ),
                                  chipSpacing: 12.0,
                                  rowSpacing: 12.0,
                                  multiselect: false,
                                  alignment: WrapAlignment.start,
                                  controller:
                                      _model.choiceChipsValueController ??=
                                          FormFieldController<List<String>>(
                                    [],
                                  ),
                                  wrapped: false,
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                      child: Card(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        elevation: 0.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              wrapWithModel(
                                model: _model.sectionCardTitleModel1,
                                updateCallback: () => setState(() {}),
                                child: const SectionCardTitleWidget(
                                  title: '圈子会议',
                                ),
                              ),
                              FutureBuilder<List<StreamRow>>(
                                future: StreamTable().queryRows(
                                  queryFn: (q) => q,
                                  limit: 10,
                                ),
                                builder: (context, snapshot) {
                                  // Customize what your widget looks like when it's loading.
                                  if (!snapshot.hasData) {
                                    return Center(
                                      child: SizedBox(
                                        width: 50.0,
                                        height: 50.0,
                                        child: CircularProgressIndicator(
                                          valueColor:
                                              AlwaysStoppedAnimation<Color>(
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                          ),
                                        ),
                                      ),
                                    );
                                  }
                                  List<StreamRow> rowStreamRowList =
                                      snapshot.data!;
                                  return SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children:
                                          List.generate(rowStreamRowList.length,
                                                  (rowIndex) {
                                        final rowStreamRow =
                                            rowStreamRowList[rowIndex];
                                        return Container(
                                          width: 159.0,
                                          decoration: const BoxDecoration(),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Stack(
                                                children: [
                                                  ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                    child: Image.network(
                                                      'https://picsum.photos/seed/178/600',
                                                      width: 170.0,
                                                      height: 120.0,
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                  Container(
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(4.0),
                                                      child: Text(
                                                        rowStreamRow.status ==
                                                                'LIVE'
                                                            ? '直播中'
                                                            : '已结束',
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Readex Pro',
                                                              fontSize: 10.0,
                                                            ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Text(
                                                rowStreamRow.title
                                                    .maybeHandleOverflow(
                                                  maxChars: 120,
                                                  replacement: '…',
                                                ),
                                                maxLines: 2,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium,
                                              ),
                                              Text(
                                                '会议时间：${dateTimeFormat(
                                                  'relative',
                                                  rowStreamRow.createdAt,
                                                  locale: FFLocalizations.of(
                                                          context)
                                                      .languageCode,
                                                )}',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .labelSmall
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          fontSize: 8.0,
                                                        ),
                                              ),
                                            ],
                                          ),
                                        );
                                      })
                                              .divide(const SizedBox(width: 10.0))
                                              .around(const SizedBox(width: 10.0)),
                                    ),
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                      child: Card(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        elevation: 0.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              wrapWithModel(
                                model: _model.sectionCardTitleModel2,
                                updateCallback: () => setState(() {}),
                                child: const SectionCardTitleWidget(
                                  title: '行业资讯',
                                ),
                              ),
                              FutureBuilder<List<PostRow>>(
                                future: PostTable().queryRows(
                                  queryFn: (q) => q,
                                  limit: 3,
                                ),
                                builder: (context, snapshot) {
                                  // Customize what your widget looks like when it's loading.
                                  if (!snapshot.hasData) {
                                    return Center(
                                      child: SizedBox(
                                        width: 50.0,
                                        height: 50.0,
                                        child: CircularProgressIndicator(
                                          valueColor:
                                              AlwaysStoppedAnimation<Color>(
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                          ),
                                        ),
                                      ),
                                    );
                                  }
                                  List<PostRow> columnPostRowList =
                                      snapshot.data!;
                                  return Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children:
                                        List.generate(columnPostRowList.length,
                                            (columnIndex) {
                                      final columnPostRow =
                                          columnPostRowList[columnIndex];
                                      return Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 5.0, 0.0, 5.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Expanded(
                                              flex: 2,
                                              child: Container(
                                                decoration: const BoxDecoration(),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      columnPostRow.title,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleLarge
                                                              .override(
                                                                fontFamily:
                                                                    'Outfit',
                                                                fontSize: 14.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                              ),
                                                    ),
                                                    Builder(
                                                      builder: (context) {
                                                        final tags =
                                                            columnPostRow.tags
                                                                .toList();
                                                        return Wrap(
                                                          spacing: 0.0,
                                                          runSpacing: 0.0,
                                                          alignment:
                                                              WrapAlignment
                                                                  .start,
                                                          crossAxisAlignment:
                                                              WrapCrossAlignment
                                                                  .start,
                                                          direction:
                                                              Axis.horizontal,
                                                          runAlignment:
                                                              WrapAlignment
                                                                  .start,
                                                          verticalDirection:
                                                              VerticalDirection
                                                                  .down,
                                                          clipBehavior:
                                                              Clip.none,
                                                          children:
                                                              List.generate(
                                                                  tags.length,
                                                                  (tagsIndex) {
                                                            final tagsItem =
                                                                tags[tagsIndex];
                                                            return Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          2.0,
                                                                          2.0,
                                                                          2.0,
                                                                          2.0),
                                                              child:
                                                                  wrapWithModel(
                                                                model: _model
                                                                    .tagWidgetModels1
                                                                    .getModel(
                                                                  tagsItem,
                                                                  tagsIndex,
                                                                ),
                                                                updateCallback:
                                                                    () => setState(
                                                                        () {}),
                                                                child:
                                                                    TagWidgetWidget(
                                                                  key: Key(
                                                                    'Key5rh_$tagsItem',
                                                                  ),
                                                                  title:
                                                                      tagsItem,
                                                                ),
                                                              ),
                                                            );
                                                          }),
                                                        );
                                                      },
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Flexible(
                                              flex: 1,
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                child: Image.network(
                                                  columnPostRow.cover,
                                                  width: 150.0,
                                                  height: 100.0,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      );
                                    }),
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                      child: Card(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        elevation: 0.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              wrapWithModel(
                                model: _model.sectionCardTitleModel3,
                                updateCallback: () => setState(() {}),
                                child: const SectionCardTitleWidget(
                                  title: '会议精华',
                                ),
                              ),
                              FutureBuilder<List<VideoRow>>(
                                future: VideoTable().queryRows(
                                  queryFn: (q) => q,
                                  limit: 3,
                                ),
                                builder: (context, snapshot) {
                                  // Customize what your widget looks like when it's loading.
                                  if (!snapshot.hasData) {
                                    return Center(
                                      child: SizedBox(
                                        width: 50.0,
                                        height: 50.0,
                                        child: CircularProgressIndicator(
                                          valueColor:
                                              AlwaysStoppedAnimation<Color>(
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                          ),
                                        ),
                                      ),
                                    );
                                  }
                                  List<VideoRow> columnVideoRowList =
                                      snapshot.data!;
                                  return Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children:
                                        List.generate(columnVideoRowList.length,
                                            (columnIndex) {
                                      final columnVideoRow =
                                          columnVideoRowList[columnIndex];
                                      return Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 5.0, 0.0, 5.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Expanded(
                                              flex: 2,
                                              child: Container(
                                                decoration: const BoxDecoration(),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      columnVideoRow.title,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleLarge
                                                              .override(
                                                                fontFamily:
                                                                    'Outfit',
                                                                fontSize: 14.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                              ),
                                                    ),
                                                    Builder(
                                                      builder: (context) {
                                                        final tags =
                                                            columnVideoRow.tags
                                                                .toList();
                                                        return Wrap(
                                                          spacing: 0.0,
                                                          runSpacing: 0.0,
                                                          alignment:
                                                              WrapAlignment
                                                                  .start,
                                                          crossAxisAlignment:
                                                              WrapCrossAlignment
                                                                  .start,
                                                          direction:
                                                              Axis.horizontal,
                                                          runAlignment:
                                                              WrapAlignment
                                                                  .start,
                                                          verticalDirection:
                                                              VerticalDirection
                                                                  .down,
                                                          clipBehavior:
                                                              Clip.none,
                                                          children:
                                                              List.generate(
                                                                  tags.length,
                                                                  (tagsIndex) {
                                                            final tagsItem =
                                                                tags[tagsIndex];
                                                            return Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          2.0,
                                                                          2.0,
                                                                          2.0,
                                                                          2.0),
                                                              child:
                                                                  wrapWithModel(
                                                                model: _model
                                                                    .tagWidgetModels2
                                                                    .getModel(
                                                                  tagsItem,
                                                                  tagsIndex,
                                                                ),
                                                                updateCallback:
                                                                    () => setState(
                                                                        () {}),
                                                                child:
                                                                    TagWidgetWidget(
                                                                  key: Key(
                                                                    'Key2jq_$tagsItem',
                                                                  ),
                                                                  title:
                                                                      tagsItem,
                                                                ),
                                                              ),
                                                            );
                                                          }),
                                                        );
                                                      },
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Flexible(
                                              flex: 1,
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                child: Image.network(
                                                  columnVideoRow.cover,
                                                  width: 150.0,
                                                  height: 100.0,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      );
                                    }),
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
