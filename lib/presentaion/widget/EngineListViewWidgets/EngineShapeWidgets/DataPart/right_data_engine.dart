import '../../../../../models/engine_model.dart';
import 'my_data_row.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class RightDataEngine extends StatelessWidget {
  const RightDataEngine({super.key, required this.currEngine});
  final EngineModel currEngine;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MyDataRow(data: "رقم المحرك", value: "${currEngine.id}"),
        const Gap(10),
        MyDataRow(data: "الحالة", value: currEngine.state),
        const Gap(10),
        MyDataRow(data: "الوحدة", value: currEngine.unit),
        const Gap(10),
        MyDataRow(data: "تاريخ الدخول", value: currEngine.logDate),
      ],
    );
  }
}
