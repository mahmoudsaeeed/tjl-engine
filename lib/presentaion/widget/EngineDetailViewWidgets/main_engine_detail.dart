import 'package:flutter/material.dart';
import 'package:tjl/presentaion/widget/EngineDetailViewWidgets/my_data_row.dart';

class MainEngineDetail extends StatelessWidget {
  const MainEngineDetail({super.key, required this.data});
  final List<List> data;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      child: ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: data[0].length,
        itemBuilder: (context, index) {
          return MyDataRow(
            value: data[0][index],
            fieldText: data[1][index],
          );
        },
      ),
    );
  }
}