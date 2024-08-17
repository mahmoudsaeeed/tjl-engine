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
  const EngineDetail({super.key, required this.currEngine, required this.currPage});
  static const String id = "engine_detail";

  final EngineModel currEngine;
  final int currPage;
  @override
  Widget build(BuildContext context) {
    return Directionality(
      child: Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Container(
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

                ///TODO هكمل باقي العناصر اللي هتتعرض في صفحة العرض
                ///TODO وهضيف كمان زر في الاسفل اسمه تعديل يسمحلي اعدل علي اي قيمة في المحرك
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    //* login
                    MyDataRow(
                      value: currEngine.logDate,
                      // txtFieldController: logDateEditController,
                      fieldText: langDef[logDate]![lang],
                    ),
                    //*log out
                    MyDataRow(
                      value: currEngine.logOutDate,
                      // txtFieldController: logOutDateEditController,
                      fieldText: langDef[logOutDate]![lang],
                    ),
                  ],
                ),
                OperationStages(
                  currEngine: currEngine,
                ),

                const Gap(50),

                ElevatedButton(
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
                    child: Text("تعديل المحرك"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}



