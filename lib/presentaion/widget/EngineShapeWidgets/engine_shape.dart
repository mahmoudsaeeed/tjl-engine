import 'package:bloc_learn/presentaion/widget/EngineShapeWidgets/Buttons/buttons_part.dart';
import 'package:bloc_learn/presentaion/widget/EngineShapeWidgets/DataPart/data_part.dart';
import 'package:bloc_learn/utils/styles.dart';
import 'package:flutter/material.dart';

class EngineShape extends StatelessWidget {
  const EngineShape({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      child: Container(
        height: 100, //TODO will remove
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.symmetric(vertical: 5),
        decoration: engineShape,
        child: const Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            DataPart(),
            ButtonsPart(), //TODO not worked yet
          ],
        ),
      ),
    );
  }
}
