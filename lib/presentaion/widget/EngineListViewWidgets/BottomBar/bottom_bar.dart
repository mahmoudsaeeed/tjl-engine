import 'package:flutter/material.dart';
import 'package:tjl/models/engine_model.dart';
import 'package:tjl/presentaion/widget/EngineListViewWidgets/BottomBar/my_number_engine.dart';
import 'package:tjl/utils/constants.dart';
import 'package:tjl/utils/methods/number_of_engines.dart';

class BottomBar extends StatelessWidget {
  const BottomBar(
      {super.key, required this.pageNumber, required this.currList});
  final int pageNumber;
  final List<EngineModel> currList;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: const BoxDecoration(
        color: Colors.white70,
        // borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          if (pageNumber == 1)
            MyNumberEngine(
              title: "ص.ع",
              value: numberOfEngine(currList, nonRefurbished),
            ),
          if (pageNumber == 1)
            MyNumberEngine(
              title: "مجرد",
              value: numberOfEngine(currList, mog),
            ),
          if (pageNumber == 2)
            MyNumberEngine(
              title: "ص.أ",
              value: numberOfEngine(currList, refurbished),
            ),
          if (pageNumber == 2)
            MyNumberEngine(
              title: "STD",
              value: numberOfEngine(currList, std),
            ),
          MyNumberEngine(
            title: "إجمالي",
            value: currList.length,
          ),
        ],
      ),
    );
  }
}
