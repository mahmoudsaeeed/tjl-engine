import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tjl/models/engine_model.dart';
import 'package:tjl/presentaion/views/Screens/engine_detail.dart';
import 'package:tjl/utils/constants.dart';
import 'package:tjl/utils/widgets/AlertDialog/my_alert_dialog.dart';

import '../../../../../../cubits/DisplayEngineList/display_engine_list_cubit.dart';
import '../../../../../../cubits/EditEngine/edit_engine_cubit.dart';
import '../../../../../../utils/methods/initial_data_in_edit_page.dart';
import '../ModifyEngine/modify_engine.dart';

onSelectedInEngine(
  value,
  context,
  EngineModel currEngine,
  int currPage,
) {
  switch (value) {
    case 0:
      {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => EngineDetail(
                      currEngine: currEngine,
                      currPage: currPage,
                    )));
        break;
      }

    case 1:
      {
        showDialog(
          context: context,
          builder: (context) {
            MyAlertDialogText myText = MyAlertDialogText("نقل", currEngine.id);
            return MyAlertDialog(
              title: myText.operationTitle(),
              content: myText.operationConfirmContent(),
              onPressed: () {
                BlocProvider.of<EditEngineCubit>(context).moveToDepart(
                    currEngine, true); //* هنا اديتله الاوك انه يتنقل للقسم
                //* move to part

                BlocProvider.of<DisplayEngineListCubit>(context)
                    .fetchAllData(currPage);
                Navigator.pop(context);
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
        setInitialData(currEngine);

        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ModifyEngine(
              currEngine: currEngine,
              currPage: currPage,
            ),
          ),
        );
      }
  }
}