import 'package:bloc_learn/presentaion/widget/EngineShapeWidgets/DataPart/my_data_row.dart';
import 'package:flutter/material.dart';

class LeftDataEngine extends StatelessWidget {
  const LeftDataEngine({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        MyDataRow(data: "تاريخ الدخول", value: "2022-02-12"),
      ],
    );
  }
}
