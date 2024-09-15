import '../../../models/engine_model.dart';
import 'my_data_row.dart';
import '../../../utils/constants.dart';
import 'package:flutter/material.dart';

class OperationEngineDetail extends StatelessWidget {
  const OperationEngineDetail({super.key, required this.currEngine});

  final EngineModel currEngine;
  @override
  Widget build(BuildContext context) {
    List<String> operations = [
      currEngine.washDate,
      currEngine.crankDate,
      currEngine.collectDate,
      currEngine.cylinderDate,
      currEngine.sprayDate,
      currEngine.testDate,
    ];

    return Column(
        children: List.generate(
      operations.length,
      (index) => MyDataRow(
        value: operations[index],
        fieldText: operationsName[index],
      ),
    ));
  }
}
