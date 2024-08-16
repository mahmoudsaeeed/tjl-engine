import 'package:bloc_learn/utils/constants.dart';
// import 'package:bloc_learn/utils/controllers.dart';
// import 'package:bloc_learn/utils/widgets/custom_text_form_field.dart';
import 'package:bloc_learn/utils/widgets/my_alert_dialog.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class EngineDetail extends StatelessWidget {
  const EngineDetail({super.key});
  static const String id = "engine_detail";
  @override
  Widget build(BuildContext context) {
    return Directionality(
      child: Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Container(
            color: Colors.green,
            height: MediaQuery.sizeOf(context).height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                //* id
                MyDataRow(
                  txtFieldController: "1",
                  // txtFieldController: idEditController,
                  fieldText: langDef[engineID]![lang],
                ),
                //* state
                MyDataRow(
                  txtFieldController: "non_ref",
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
                      txtFieldController: "2022-2-22",
                      // txtFieldController: logDateEditController,
                      fieldText: langDef[logDate]![lang],
                    ),
                    //*log out
                    MyDataRow(
                      txtFieldController: "2022-4-22",
                      // txtFieldController: logOutDateEditController,
                      fieldText: langDef[logDate]![lang],
                    ),
                  ],
                ),
                const OperationStages(),

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
  const OperationStages({super.key});
  @override
  Widget build(BuildContext context) {
    final List<String> operationsName = [
      langDef[washStage]![lang],
      langDef[crankStage]![lang],
      langDef[collectStage]![lang],
      langDef[cylinderStage]![lang],
      langDef[sprayStage]![lang],
      langDef[testStage]![lang],
    ];
    return Column(
      children: [
        MyDataRow(
          txtFieldController: "2022-2-24",
          // txtFieldController: washEditController,
          fieldText: operationsName[0],
        ),
        MyDataRow(
          txtFieldController: "2022-3-10",
          // txtFieldController: crankEditController,
          fieldText: operationsName[1],
        ),
        MyDataRow(
          txtFieldController: "2022-3-15",
          // txtFieldController: collectEditController,
          fieldText: operationsName[2],
        ),
        MyDataRow(
          txtFieldController: "2022-3-20",
          // txtFieldController: cylinderEditController,
          fieldText: operationsName[3],
        ),
        MyDataRow(
          txtFieldController: "2022-3-29",
          // txtFieldController: sprayEditController,
          fieldText: operationsName[4],
        ),
        MyDataRow(
          txtFieldController: "2022-4-20",
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
    required this.txtFieldController,
    required this.fieldText,
  });
  final String txtFieldController;
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
              color: Colors.amber,
              child: Text(fieldText)),
          const Gap(10),
          Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              color: Colors.amber,
              child: Text(txtFieldController)),
          // CustomTextFormField(
          //   controller: txtFieldController,
          //   readOnly: true,
          // )
        ],
      ),
    );
  }
}
