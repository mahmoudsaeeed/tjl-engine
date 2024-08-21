import 'package:bloc_learn/cubits/AddEngine/add_engine_cubit.dart';
import 'package:bloc_learn/cubits/DisplayEngineList/display_engine_list_cubit.dart';
import 'package:bloc_learn/presentaion/views/main_view.dart';
import 'package:bloc_learn/presentaion/widget/modal_sheet/add_engine_modal_shape.dart';
import 'package:bloc_learn/utils/constants.dart';
import 'package:bloc_learn/utils/def.dart';
import 'package:bloc_learn/utils/widgets/AlertDialog/my_alert_dialog.dart';
import 'package:bloc_learn/utils/widgets/custom_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

class FloatingActionBtn extends StatelessWidget {
  const FloatingActionBtn({super.key, required this.indexPage});
  final int indexPage;
  @override
  Widget build(BuildContext context) {
    // final curr = BlocProvider.of<DisplayEngineListCubit>(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        IconButton(
          onPressed: () {
            showSearch(
              context: context,
              delegate: CustomSearch(
                // currList: box.values.toList(),
                currList:BlocProvider.of<DisplayEngineListCubit>(context).currList!,
                pageNumber: 0,
                
              ),
              
            );
          },
          icon: const Icon(Icons.search),
        ),
        const Gap(40),
        PopupMenuButton(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
          ),
          offset: const Offset(30, 15),
          icon: const Icon(Icons.menu),
          onSelected: (int value) {
            onSelected(value, context, indexPage);
          },
          itemBuilder: (context) {
            return list;
          },
        ),
      ],
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
                    Navigator.pop(context);
                    showDialog(
                      context: context,
                      builder: (context) => MyAlertDialog(
                        title: "تمت العملية",
                        content: "مسحت كل المحركات؟؟؟؟ احسن😁",
                        btnName: "خلصانه",
                        onPressed: () {
                          box.clear();
                          // BlocProvider.of<DisplayEngineListCubit>(context)
                          //     .fetchAllData(indexPage);
                          Navigator.pushReplacementNamed(context, MainView.id);
                        },
                        onPressed2: () {},
                        showbtn2: false,
                      ),
                    );
                  },
                  onPressed2: () {
                    Navigator.pop(context);
                  },
                  showbtn2: true);
            });
      }
  }
}
