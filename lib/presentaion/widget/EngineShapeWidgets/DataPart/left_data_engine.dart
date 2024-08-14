import 'package:bloc_learn/models/engine_model.dart';
import 'package:bloc_learn/presentaion/widget/EngineShapeWidgets/DataPart/my_data_row.dart';
import 'package:flutter/material.dart';

class LeftDataEngine extends StatelessWidget {
  const LeftDataEngine({super.key, required this.currEngine});
  final EngineModel currEngine;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MyDataRow(data: "تاريخ الدخول", value: currEngine.logDate),
      ],
    );
  }
}
