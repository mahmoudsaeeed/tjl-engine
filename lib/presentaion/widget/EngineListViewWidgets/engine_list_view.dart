import 'package:bloc_learn/models/engine_model.dart';
import 'package:bloc_learn/presentaion/widget/EngineShapeWidgets/engine_shape.dart';
import 'package:flutter/material.dart';

class EngineListView extends StatelessWidget {
  const EngineListView({super.key, required this.currList, required this.pageName});
  final List<EngineModel> currList;
  final String pageName;
  @override
  Widget build(BuildContext context) {
    debugPrint("${currList.length}");
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ListView.builder(
        itemCount: currList.length,
        itemBuilder: (context, index) {
          EngineModel currEngine = currList[index];
          return EngineShape(currEngine: currEngine, index: index, pageName: pageName,);
        },
      ),
    );
  }
}
