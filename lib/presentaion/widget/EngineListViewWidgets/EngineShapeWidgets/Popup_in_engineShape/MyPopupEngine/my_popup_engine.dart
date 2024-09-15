// import 'package:tjl/cubits/DisplayEngineDetail/display_engine_detail_cubit.dart';
// import 'package:tjl/cubits/DisplayEngineDetail/display_engine_detail_cubit.dart';
import 'package:tjl/models/engine_model.dart';
// import 'package:tjl/presentaion/views/Screens/engine_detail.dart';
import 'package:flutter/material.dart';
import 'package:tjl/presentaion/widget/EngineListViewWidgets/EngineShapeWidgets/Popup_in_engineShape/MyPopupEngine/on_selected_in_engine.dart';

class MyPopupEngine extends StatelessWidget {
  const MyPopupEngine(
      {super.key, required this.currEngine, required this.currPage});
  final EngineModel currEngine;

  final int currPage;

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<int>(
        iconColor: Colors.white,
        offset: const Offset(28, 15),
        // splashRadius: 50,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          topRight: Radius.circular(20),
          bottomRight: Radius.circular(20),
          bottomLeft: Radius.circular(20),
        )),
        itemBuilder: (context) {
          return const [
            PopupMenuItem(
              value: 0,
              child: Text("عرض البيانات"),
            ),
            PopupMenuItem(
              value: 1,
              child: Text("نقل إلي القسم"),
            ),
            PopupMenuItem(
              value: 2,
              child: Text("تعديل المحرك"),
            ),
          ];
        },
        onSelected: (value) {
          onSelectedInEngine(value, context, currEngine, currPage);
        });
  }
}
