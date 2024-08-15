import 'package:bloc_learn/cubits/EditEngine/edit_engine_cubit.dart';
import 'package:bloc_learn/models/engine_model.dart';
import 'package:bloc_learn/presentaion/views/main_view.dart';
import 'package:bloc_learn/utils/widgets/my_alert_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
                      btnName: "حسنا",
                      showbtn2: false,
                      onPressed2: () {},
                    ));
            break;
          }

        case 1:
          {
            showDialog(
              context: context,
              builder: (context) => MyAlertDialog(
                title: "تأكيد عملية النقل",
                content: "هل تريد نقل المحرك ${widget.currEngine.id} ؟ ",
                btnName: "نعم",
                onPressed: () {
                  BlocProvider.of<EditEngineCubit>(context)
                      .moveToDepart(widget.currEngine);
                  //* move to part

                  //TODO   here we will use currEngine in edit method
                  showDialog(
                    context: context,
                    builder: (context) => MyAlertDialog(
                      title: "تم النقل بنجاح",
                      content:
                          "تمت عملية نقل المحرك بنجاح داخل القسم يرجي الانتقال للصفحة الرئيسية",
                      onPressed: () {
                        Navigator.pushNamedAndRemoveUntil(
                            context, MainView.id, (route) => false);
                      },
                      btnName: "حسنا",
                      onPressed2: () {},
                      showbtn2: false,
                    ),
                  );
                },
                btnName2: "لا",
                onPressed2: () {
                  Navigator.pop(context);
                },
                showbtn2: true,
              ),
            );

            break;
          }
        case 2 : {
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
