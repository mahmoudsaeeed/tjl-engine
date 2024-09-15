import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../cubits/AddEngine/add_engine_cubit.dart';
import '../../../../../utils/constants.dart';
import '../../../../../utils/def.dart';
import '../../../../../utils/widgets/AlertDialog/my_alert_dialog.dart';
import '../../../../views/main_view.dart';
import 'EngineModalShape/add_engine_modal_shape.dart';

onSelectedInTop(int value, BuildContext context, int indexPage) {
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
              return MyAlertDialog(
                  title: "تأكيد حذف المحركات",
                  content: "هل تريد حذف كل المحركات من وحدة التخزين ؟",
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
