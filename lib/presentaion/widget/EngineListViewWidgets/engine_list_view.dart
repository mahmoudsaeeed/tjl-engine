import 'package:bloc_learn/models/engine_model.dart';
import 'package:bloc_learn/presentaion/widget/EngineShapeWidgets/engine_shape.dart';
import 'package:bloc_learn/utils/def.dart';
import 'package:flutter/material.dart';

class EngineListView extends StatelessWidget {
  const EngineListView({super.key});

  @override
  Widget build(BuildContext context) {
    List<EngineModel> currList =box.values.toList(); //TODO curr List will change after create displayCubit
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ListView.builder(
        itemCount: currList.length + 5, //TODO 5 will removed
        itemBuilder: (context, index) {
          return const EngineShape();
        },
      ),
    );
  }
}
