import 'package:bloc_learn/models/engine_model.dart';
import 'package:bloc_learn/presentaion/widget/EngineShapeWidgets/DataPart/right_data_engine.dart';
import 'package:bloc_learn/presentaion/widget/EngineShapeWidgets/Popup_in_engineShape/my_popup_engine.dart';
import 'package:flutter/material.dart';

class DataPart extends StatelessWidget {
  const DataPart({
    super.key,
    required this.currEngine,
  });
  final EngineModel currEngine;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
            color: Colors.blue, child: RightDataEngine(currEngine: currEngine)),

        Container(
            color: Colors.blue, child: MyPopupEngine(currEngine: currEngine))
      ],
    );
  }
}
