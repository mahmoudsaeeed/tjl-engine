import 'package:bloc_learn/models/engine_model.dart';
import 'package:bloc_learn/utils/constants.dart';
// import 'package:bloc_learn/utils/controllers.dart';
// import 'package:bloc_learn/utils/widgets/custom_text_form_field.dart';
import 'package:bloc_learn/utils/widgets/my_alert_dialog.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class EngineDetail extends StatelessWidget {
  const EngineDetail({super.key, required this.currEngine});
  static const String id = "engine_detail";

  final EngineModel currEngine;
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
                OperationStages(currEngine: currEngine,),

                const Gap(50),

                ElevatedButton(
                    onPressed: () {
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

class OperationStages extends StatelessWidget {
  const OperationStages({super.key, required this.currEngine});

  final EngineModel currEngine;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MyDataRow(
          value: currEngine.washDate,
          // txtFieldController: washEditController,
          fieldText: operationsName[0],
        ),
        MyDataRow(
          value: currEngine.crankDate,
          // txtFieldController: crankEditController,
          fieldText: operationsName[1],
        ),
        MyDataRow(
          value: currEngine.collectDate,
          // txtFieldController: collectEditController,
          fieldText: operationsName[2],
        ),
        MyDataRow(
          value: currEngine.cylinderDate,
          // txtFieldController: cylinderEditController,
          fieldText: operationsName[3],
        ),
        MyDataRow(
          value: currEngine.sprayDate,
          // txtFieldController: sprayEditController,
          fieldText: operationsName[4],
        ),
        MyDataRow(
          value: currEngine.testDate,
          // txtFieldController: testEditController,
          fieldText: operationsName[5],
        ),
      ],
    );
  }
}

class MyDataRow extends StatelessWidget {
  const MyDataRow({
    super.key,
    required this.value,
    required this.fieldText,
  });
  final String value;
  // final TextEditingController txtFieldController;
  final String fieldText;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      child: Row(
        children: [
          Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              width: 100,
              // color: Colors.amber,
              child: Text(fieldText)),
          const Gap(10),
          Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              // color: Colors.amber,
              child: Text(value)),
          // CustomTextFormField(
          //   controller: txtFieldController,
          //   readOnly: true,
          // )
        ],
      ),
    );
  }
}
