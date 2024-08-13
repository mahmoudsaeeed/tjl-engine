import 'package:bloc_learn/presentaion/widget/EngineShapeWidgets/DataPart/my_data_row.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class RightDataEngine extends StatelessWidget {
  const RightDataEngine({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MyDataRow(data: "رقم المحرك", value: "1"),
        Gap(10),
        MyDataRow(data: "الحالة", value: "ref"),
      ],
    );
  }
}
