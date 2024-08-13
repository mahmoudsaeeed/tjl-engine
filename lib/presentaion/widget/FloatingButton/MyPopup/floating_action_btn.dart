import 'package:bloc_learn/presentaion/widget/AddEngine_modal_sheet/add_engine_modal_shape.dart';
import 'package:flutter/material.dart';
class FloatingActionBtn extends StatelessWidget {
  const FloatingActionBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      icon: const Icon(Icons.add),
      onSelected: (int value) {
        onSelected(value, context);
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

onSelected(int value, BuildContext context) {
  switch (value) {
    case 0:
      {
        showModalBottomSheet(
          context: context,
          builder: (context) => const AddEngineModalShape(),
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
      }
  }
}
