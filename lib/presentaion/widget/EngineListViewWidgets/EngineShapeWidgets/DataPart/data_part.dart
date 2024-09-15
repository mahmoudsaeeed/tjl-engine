import '../../../../../models/engine_model.dart';
import 'right_data_engine.dart';
import '../Popup_in_engineShape/MyPopupEngine/my_popup_engine.dart';
import 'package:flutter/material.dart';

class DataPart extends StatelessWidget {
  const DataPart({
    super.key,
    required this.currEngine,
    required this.currPage,
  });
  final EngineModel currEngine;
  final int currPage;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        RightDataEngine(currEngine: currEngine),
        MyPopupEngine(
          currEngine: currEngine,
          currPage: currPage,
        )
      ],
    );
  }
}
