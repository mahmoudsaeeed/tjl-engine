import 'package:bloc_learn/models/engine_model.dart';
import 'package:bloc_learn/presentaion/widget/EngineShapeWidgets/deleteEngineWidgets/my_dismissible.dart';
import 'package:bloc_learn/utils/constants.dart';
import 'package:bloc_learn/utils/methods/number_of_engines.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class EngineListView extends StatelessWidget {
  const EngineListView(
      {super.key, required this.currList, required this.pageNumber});
  final List<EngineModel> currList;
  final int pageNumber;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            color: Theme.of(context).primaryColor,
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: ListView.builder(
              itemCount: currList.length,
              itemBuilder: (context, index) {
                EngineModel currEngine = currList[index];
                return MyDismissible(
                    currEngine: currEngine,
                    index: index,
                    pageNumber: pageNumber);
              },
            ),
          ),
        ),
        Container(
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
                    title: "STD", value: numberOfEngine(currList, std)),
              MyNumberEngine(title: "إجمالي", value: currList.length),
            ],
          ),
        ),
      ],
    );
  }
}

class MyNumberEngine extends StatelessWidget {
  const MyNumberEngine({
    super.key,
    required this.title,
    required this.value,
  });
  final String title;
  final int value;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColorDark,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "$title : ",
            style: const TextStyle(color: Colors.white),
          ), //* عدد المحركات الرئيسي
          const Gap(10),
          Text(
            "$value",
            style: const TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
