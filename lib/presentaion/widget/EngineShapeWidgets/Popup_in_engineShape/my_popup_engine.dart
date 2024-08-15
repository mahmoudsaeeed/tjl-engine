import 'package:bloc_learn/models/engine_model.dart';
import 'package:bloc_learn/utils/widgets/my_alert_dialog.dart';
import 'package:flutter/material.dart';

class MyPopupEngine extends StatefulWidget {
  const MyPopupEngine({super.key, required this.currEngine});
  final EngineModel currEngine;

  @override
  State<MyPopupEngine> createState() => _MyPopupEngineState();
}

class _MyPopupEngineState extends State<MyPopupEngine> {
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<int>(onSelected: (value) {
      switch (value) {
        case 0:
          {
            showDialog(
                context: context,
                builder: (context) => MyAlertDialog(
                    title: "غير متوفره",
                    content: "يتم العمل عليها في الوقت الحالي",
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    btnName: "حسنا"));
            break;
          }

        case 1:
          {
            //* move to part

            //TODO   here we will use currEngine in edit method
            showDialog(
                context: context,
                builder: (context) => MyAlertDialog(
                    title: "غير متوفره",
                    content: "يتم العمل عليها في الوقت الحالي",
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    btnName: "حسنا"));
            break;
          }
      }
    }, itemBuilder: (context) {
      return const [
        PopupMenuItem(
          value: 0,
          child: Text("عرض البيانات"),
        ),
        PopupMenuItem(
          value: 1,
          child: Text("نقل إلي القسم"),
        ),
      ];
    });
  }
}
