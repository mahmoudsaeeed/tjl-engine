import 'package:bloc_learn/presentaion/widget/EngineShapeWidgets/DataPart/left_data_engine.dart';
import 'package:bloc_learn/presentaion/widget/EngineShapeWidgets/DataPart/right_data_engine.dart';
import 'package:flutter/material.dart';

class DataPart extends StatelessWidget {
  const DataPart({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        RightDataEngine(),
        LeftDataEngine(),
      ],
    );
  }
}