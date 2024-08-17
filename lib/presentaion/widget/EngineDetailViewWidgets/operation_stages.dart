import 'package:bloc_learn/models/engine_model.dart';
import 'package:bloc_learn/presentaion/widget/EngineDetailViewWidgets/my_data_row.dart';
import 'package:bloc_learn/utils/constants.dart';
import 'package:flutter/material.dart';

class OperationStages extends StatelessWidget {
  const OperationStages({super.key, required this.currEngine});

  final EngineModel currEngine;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MyDataRow(
          value: currEngine.washDate,
          // txtFieldController: washEditController,
          fieldText: operationsName[0],
        ),
        MyDataRow(
          value: currEngine.crankDate,
          // txtFieldController: crankEditController,
          fieldText: operationsName[1],
        ),
        MyDataRow(
          value: currEngine.collectDate,
          // txtFieldController: collectEditController,
          fieldText: operationsName[2],
        ),
        MyDataRow(
          value: currEngine.cylinderDate,
          // txtFieldController: cylinderEditController,
          fieldText: operationsName[3],
        ),
        MyDataRow(
          value: currEngine.sprayDate,
          // txtFieldController: sprayEditController,
          fieldText: operationsName[4],
        ),
        MyDataRow(
          value: currEngine.testDate,
          // txtFieldController: testEditController,
          fieldText: operationsName[5],
        ),
      ],
    );
  }
}
