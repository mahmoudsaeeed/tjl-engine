import 'package:bloc_learn/cubits/AddEngine/add_engine_cubit.dart';
import 'package:bloc_learn/presentaion/widget/modal_sheet/add_engine_modal_shape.dart';
import 'package:bloc_learn/utils/constants.dart';
import 'package:bloc_learn/utils/def.dart';
import 'package:bloc_learn/utils/widgets/AlertDialog/my_alert_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FloatingActionBtn extends StatelessWidget {
  const FloatingActionBtn({super.key, required this.indexPage});
  final int indexPage;
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      icon: const Icon(Icons.add),
      onSelected: (int value) {
        onSelected(value, context, indexPage);
      },
      itemBuilder: (context) {
        return list;
      },
    );
  }
}

List<PopupMenuEntry<int>> list = const [
  PopupMenuItem(
    value: 0,
    child: Text("add new box"),
  ),
  PopupMenuItem(
    value: 1,
    child: Text("print box"),
  ),
  PopupMenuItem(
    value: 2,
    child: Text("clear box"),
  ),
];

onSelected(int value, BuildContext context, int indexPage) {
  switch (value) {
    case 0:
      {
        showModalBottomSheet(
          isScrollControlled: true,
          context: context,
          builder: (context) => BlocProvider(
            create: (context) => AddEngineCubit(),
            child: const EngineModalShape(
              operate: addOperation,
            ), //* add
          ),
        );
        break;
      }
    case 1:
      {
        showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: const Text("not Worked yet"),
                icon: const Icon(
                  Icons.warning,
                  color: Colors.red,
                  size: 28,
                ),
                actions: [
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text("Ok"))
                ],
              );
            });

        break;
      }

    case 2:
      {
        showDialog(
            context: context,
            builder: (context) {
              return MyAlertDialog(
                  title: "تأكيد حذف المحركات",
                  content: "هل تريد حذف كل المحركات من وحدةالتخزين ؟",
                  onPressed: () {
                    box.clear();
                  },
                  onPressed2: () {
                    Navigator.pop(context);
                  },
                  showbtn2: true);
            });
      }
  }
}
