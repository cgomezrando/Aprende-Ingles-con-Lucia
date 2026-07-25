import '/backend/schema/structs/index.dart';
import '/components/category_card2_widget.dart';
import '/components/section_header_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'block_selection_screen_widget.dart' show BlockSelectionScreenWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class BlockSelectionScreenModel
    extends FlutterFlowModel<BlockSelectionScreenWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for SectionHeader.
  late SectionHeaderModel sectionHeaderModel1;
  // Model for CategoryCard.
  late CategoryCard2Model categoryCardModel1;
  // Model for CategoryCard.
  late CategoryCard2Model categoryCardModel2;
  // Model for CategoryCard.
  late CategoryCard2Model categoryCardModel3;
  // Model for CategoryCard.
  late CategoryCard2Model categoryCardModel4;
  // Model for CategoryCard.
  late CategoryCard2Model categoryCardModel5;
  // Model for CategoryCard.
  late CategoryCard2Model categoryCardModel6;
  // Model for SectionHeader.
  late SectionHeaderModel sectionHeaderModel2;
  // Model for CategoryCard.
  late CategoryCard2Model categoryCardModel7;
  // Model for CategoryCard.
  late CategoryCard2Model categoryCardModel8;
  // Model for SectionHeader.
  late SectionHeaderModel sectionHeaderModel3;
  // Model for CategoryCard.
  late CategoryCard2Model categoryCardModel9;
  // Model for CategoryCard.
  late CategoryCard2Model categoryCardModel10;
  // Model for CategoryCard.
  late CategoryCard2Model categoryCardModel11;
  // Model for CategoryCard.
  late CategoryCard2Model categoryCardModel12;

  @override
  void initState(BuildContext context) {
    sectionHeaderModel1 = createModel(context, () => SectionHeaderModel());
    categoryCardModel1 = createModel(context, () => CategoryCard2Model());
    categoryCardModel2 = createModel(context, () => CategoryCard2Model());
    categoryCardModel3 = createModel(context, () => CategoryCard2Model());
    categoryCardModel4 = createModel(context, () => CategoryCard2Model());
    categoryCardModel5 = createModel(context, () => CategoryCard2Model());
    categoryCardModel6 = createModel(context, () => CategoryCard2Model());
    sectionHeaderModel2 = createModel(context, () => SectionHeaderModel());
    categoryCardModel7 = createModel(context, () => CategoryCard2Model());
    categoryCardModel8 = createModel(context, () => CategoryCard2Model());
    sectionHeaderModel3 = createModel(context, () => SectionHeaderModel());
    categoryCardModel9 = createModel(context, () => CategoryCard2Model());
    categoryCardModel10 = createModel(context, () => CategoryCard2Model());
    categoryCardModel11 = createModel(context, () => CategoryCard2Model());
    categoryCardModel12 = createModel(context, () => CategoryCard2Model());
  }

  @override
  void dispose() {
    sectionHeaderModel1.dispose();
    categoryCardModel1.dispose();
    categoryCardModel2.dispose();
    categoryCardModel3.dispose();
    categoryCardModel4.dispose();
    categoryCardModel5.dispose();
    categoryCardModel6.dispose();
    sectionHeaderModel2.dispose();
    categoryCardModel7.dispose();
    categoryCardModel8.dispose();
    sectionHeaderModel3.dispose();
    categoryCardModel9.dispose();
    categoryCardModel10.dispose();
    categoryCardModel11.dispose();
    categoryCardModel12.dispose();
  }
}
