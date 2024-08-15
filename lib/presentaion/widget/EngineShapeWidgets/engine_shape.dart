import 'package:bloc_learn/models/engine_model.dart';
import 'package:bloc_learn/presentaion/widget/EngineShapeWidgets/Buttons/buttons_part.dart';
import 'package:bloc_learn/presentaion/widget/EngineShapeWidgets/DataPart/data_part.dart';
import 'package:bloc_learn/utils/styles.dart';
import 'package:flutter/material.dart';

class EngineShape extends StatelessWidget {
  const EngineShape({
    super.key,
    required this.currEngine, required this.index,
  });

  final EngineModel currEngine;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Directionality(
      child: GestureDetector(
        onTap: () {
          debugPrint("engine in index $index his id = ${currEngine.id}");
        },
        child: Container(
          // height: 100, //TODO will remove
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.symmetric(vertical: 5),
          decoration: engineStyle,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              DataPart(currEngine: currEngine),
              ButtonsPart(), //TODO not worked yet
            ],
          ),
        ),
      ),
    );
  }
}
