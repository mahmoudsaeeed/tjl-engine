import 'package:bloc_learn/models/engine_model.dart';
import 'package:bloc_learn/presentaion/widget/EngineDetailViewWidgets/my_data_row.dart';
import 'package:bloc_learn/presentaion/widget/EngineDetailViewWidgets/operation_stages.dart';
import 'package:bloc_learn/presentaion/widget/EngineShapeWidgets/Popup_in_engineShape/ModifyEngine/modify_engine.dart';
import 'package:bloc_learn/utils/constants.dart';
import 'package:bloc_learn/utils/methods/initial_data_in_edit_page.dart';
// import 'package:bloc_learn/utils/controllers.dart';
// import 'package:bloc_learn/utils/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class EngineDetail extends StatelessWidget {
  const EngineDetail(
      {super.key, required this.currEngine, required this.currPage});
  static const String id = "engine_detail";

  final EngineModel currEngine;
  final int currPage;
  @override
  Widget build(BuildContext context) {
    return Directionality(
      child: Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: SizedBox(
            // color: Colors.green,
            height: MediaQuery.sizeOf(context).height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                //* id
                MyDataRow(
                  value: currEngine.id.toString(),
                  // txtFieldController: idEditController,
                  fieldText: langDef[engineID]![lang],
                ),
                //* state
                MyDataRow(
                  value: currEngine.state,
                  // txtFieldController: stateEditController,
                  fieldText: langDef[state]![lang],
                ),

                //* unit
                MyDataRow(
                  value: currEngine.unit,
                  // txtFieldController: stateEditController,
                  fieldText: langDef[unit]![lang],
                ),

                MyDataRow(
                  value: currEngine.logDate,
                  // txtFieldController: logDateEditController,
                  fieldText: langDef[logDate]![lang],
                ),

                MyDataRow(
                  value: currEngine.logOutDate,
                  // txtFieldController: logOutDateEditController,
                  fieldText: langDef[logOutDate]![lang],
                ),
                const Divider(
                  indent: 50,
                  endIndent: 50,
                  thickness: 2,
                ),
                OperationStages(
                  currEngine: currEngine,
                ),

                const Gap(50),

                ElevatedButton(
                  style: const ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(Colors.green)),
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
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
