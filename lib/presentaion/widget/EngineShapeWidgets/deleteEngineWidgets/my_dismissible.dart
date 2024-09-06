import 'package:bloc_learn/cubits/DisplayEngineList/display_engine_list_cubit.dart';
import 'package:bloc_learn/models/engine_model.dart';
import 'package:bloc_learn/presentaion/widget/EngineShapeWidgets/engine_shape.dart';
import 'package:bloc_learn/utils/constants.dart';
import 'package:bloc_learn/utils/def.dart';
import 'package:bloc_learn/utils/methods/get_index_in_box.dart';
import 'package:bloc_learn/utils/widgets/AlertDialog/my_alert_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyDismissible extends StatelessWidget {
  const MyDismissible(
      {super.key,
      required this.currEngine,
      required this.index,
      required this.pageNumber});
  final EngineModel currEngine;
  final int index, pageNumber;
  @override
  Widget build(BuildContext context) {
    return Dismissible(
        key: ObjectKey(currEngine),
        background: Container(
          // height: 90,
          color: Colors.red,
          alignment: Alignment.centerRight,
          
          child: const Icon(Icons.delete),
        ),
        direction: DismissDirection.startToEnd,

        //* خدنا من هنا الموافقه بالموافقه او الرفض علي الحذف
        confirmDismiss: (direction) {
          return showDialog(
              context: context,
              builder: (context) {
                MyAlertDialogText myText =
                    MyAlertDialogText("حذف", currEngine.id);
                return MyAlertDialog(
                  title: myText.operationTitle(),
                  content: myText.operationConfirmContent(),
                  onPressed: () {
                    Navigator.pop(context, true);
                  },
                  onPressed2: () {
                    Navigator.pop(context, false);
                  },
                  showbtn2: true,
                );
              });
        },
        onDismissed: (direction) {
          int engineIndexInBox = getIndexInBox(currEngine);
          box.deleteAt(engineIndexInBox);
          showDialog(
              context: context,
              builder: (context) {
                return MyAlertDialog(
                    title: "تأكيد عملية الحذف ",
                    content: "تم حذف المحرك بنجاح",
                    btnName: "حسنا",
                    onPressed: () {
                      BlocProvider.of<DisplayEngineListCubit>(context)
                          .fetchAllData(pageNumber);
                      Navigator.pop(context);
                    },
                    onPressed2: () {},
                    showbtn2: false);
              });
        },
        child: EngineShape(
          currEngine: currEngine,
          index: index,
          pageNumber: pageNumber,
        ));
  }
}
