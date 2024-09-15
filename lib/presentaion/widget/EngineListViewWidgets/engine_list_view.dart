import 'package:tjl/presentaion/widget/EngineListViewWidgets/BottomBar/bottom_bar.dart';

import '../../../models/engine_model.dart';
import 'my_dismissible.dart';
import 'package:flutter/material.dart';

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
                  pageNumber: pageNumber,
                );
              },
            ),
          ),
        ),
        BottomBar(
          pageNumber: pageNumber,
          currList: currList,
        ),
      ],
    );
  }
}
