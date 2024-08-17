// import 'package:bloc_learn/cubits/DisplayEngineDetail/display_engine_detail_cubit.dart';
// import 'package:bloc_learn/cubits/DisplayEngineDetail/display_engine_detail_cubit.dart';
import 'package:bloc_learn/cubits/DisplayEngineList/display_engine_list_cubit.dart';
import 'package:bloc_learn/cubits/EditEngine/edit_engine_cubit.dart';
import 'package:bloc_learn/models/engine_model.dart';
import 'package:bloc_learn/presentaion/views/Screens/engine_detail.dart';
// import 'package:bloc_learn/presentaion/views/Screens/engine_detail.dart';
import 'package:bloc_learn/utils/constants.dart';
import 'package:bloc_learn/utils/widgets/AlertDialog/my_alert_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyPopupEngine extends StatelessWidget {
  const MyPopupEngine(
      {super.key, required this.currEngine, required this.currPage});
  final EngineModel currEngine;

  final int currPage;

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<int>(onSelected: (value) {
      switch (value) {
        case 0:
          {
            // BlocProvider.of<DisplayEngineDetailCubit>(context)
            //     .engineDetail(widget.currEngine);

            // Navigator.pushNamed(context, EngineDetail.id);
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        EngineDetail(currEngine: currEngine)));
            break;
          }

        case 1:
          {
            showDialog(
              context: context,
              builder: (context) {
                MyAlertDialogText myText =
                    MyAlertDialogText("نقل", currEngine.id);
                return MyAlertDialog(
                  title: myText.operationTitle(),
                  content: myText.operationConfirmContent(),
                  onPressed: () {
                    BlocProvider.of<EditEngineCubit>(context)
                        .moveTo(currEngine, department);
                    //* move to part

                    BlocProvider.of<DisplayEngineListCubit>(context)
                        .fetchAllData(currPage);
                    Navigator.pop(context);

                    // //TODO   here we will use currEngine in edit method
                    // showDialog(
                    //   context: context,
                    //   builder: (context) => MyAlertDialog(
                    //     title: moveTitle,
                    //     content: movedSuccessContent,
                    //     onPressed: () {
                    //       // Navigator.pushNamedAndRemoveUntil(
                    //       //     context, MainView.id, (route) => false);

                    //     },
                    //     btnName: "حسنا",
                    //     onPressed2: () {},
                    //     showbtn2: false,
                    //   ),
                    // );
                  },
                  onPressed2: () {
                    Navigator.pop(context);
                  },
                  showbtn2: true,
                );
              },
            );

            break;
          }
        case 2:
          {
            showDialog(
                context: context,
                builder: (context) => MyAlertDialog(
                      title: "غير متوفره",
                      content: "يتم العمل عليها في الوقت الحالي",
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      btnName: "حسنا",
                      showbtn2: false,
                      onPressed2: () {},
                    ));
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
        PopupMenuItem(
          value: 2,
          child: Text("تعديل المحرك"),
        ),
      ];
    });
  }
}
