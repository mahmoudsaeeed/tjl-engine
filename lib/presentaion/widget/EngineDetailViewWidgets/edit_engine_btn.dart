import 'package:flutter/material.dart';

import '../../../models/engine_model.dart';
import '../../../utils/methods/initial_data_in_edit_page.dart';
import '../EngineListViewWidgets/EngineShapeWidgets/Popup_in_engineShape/ModifyEngine/modify_engine.dart';

ElevatedButton editEngineBtn(context , EngineModel currEngine , int currPage) {
  return ElevatedButton(
    style: const ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(Color(0xffE65000))),
    onPressed: () {
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
    },
    child: Text(
      "تعديل المحرك",
      style: Theme.of(context).textTheme.titleMedium,
    ),
  );
}
