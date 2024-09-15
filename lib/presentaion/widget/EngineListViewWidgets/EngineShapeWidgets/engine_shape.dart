import '../../../../cubits/EditEngine/edit_engine_cubit.dart';
import '../../../../cubits/changeOperation/change_operation_cubit.dart';
import '../../../../models/engine_model.dart';
import '../../../views/main_view.dart';
import 'MyTimeLineTile.dart';
import 'DataPart/data_part.dart';
import '../../../../utils/constants.dart';
import '../../../../utils/def.dart';
import '../../../../utils/methods/get_index_in_box.dart';
import '../../../../utils/methods/show_save_btn.dart';
import '../../../../utils/styles.dart';
import '../../../../utils/widgets/AlertDialog/my_alert_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

class EngineShape extends StatelessWidget {
  const EngineShape({
    super.key,
    required this.currEngine,
    required this.index,
    required this.pageNumber,
  });

  final EngineModel currEngine;
  final int index;
  final int pageNumber;

  @override
  Widget build(BuildContext context) {
    final int indexBox = getIndexInBox(currEngine);
    return Directionality(
      child: BlocBuilder<ChangeOperationCubit, ChangeOperationState>(
        builder: (context, state) {
          return GestureDetector(
            onTap: () {
              debugPrint("engine in index $index his id = ${currEngine.id}");
            },
            child: Container(
              // height: 100, //TODO will remove
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.symmetric(vertical: 5),
              decoration: engineStyle(context),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DataPart(
                    currEngine: currEngine,
                    currPage: pageNumber,
                  ),

                  //** the next part is specific to department page */

                  pageNumber == 3
                      ? Column(
                          children: [
                            const Gap(20),
                            SizedBox(
                              height: 50,
                              child: ListView(
                                scrollDirection: Axis.horizontal,

                                // mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  MyTimeLineTile(
                                    isFinished: currEngine.washStage,
                                    content: langDef[washStage]![lang],
                                    isFirst: true,
                                    indexCurrEngineInBox: indexBox,
                                    operationNumber: 0,
                                  ),
                                  MyTimeLineTile(
                                    isFinished: currEngine.crankStage,
                                    content: langDef[crankStage]![lang],
                                    indexCurrEngineInBox: indexBox,
                                    operationNumber: 1,
                                  ),
                                  MyTimeLineTile(
                                    isFinished: currEngine.collectStage,
                                    content: langDef[collectStage]![lang],
                                    indexCurrEngineInBox: indexBox,
                                    operationNumber: 2,
                                  ),
                                  MyTimeLineTile(
                                    isFinished: currEngine.cylinderStage,
                                    content: langDef[cylinderStage]![lang],
                                    indexCurrEngineInBox: indexBox,
                                    operationNumber: 3,
                                  ),
                                  MyTimeLineTile(
                                    isFinished: currEngine.sprayStage,
                                    content: langDef[sprayStage]![lang],
                                    indexCurrEngineInBox: indexBox,
                                    operationNumber: 4,
                                  ),
                                  MyTimeLineTile(
                                    isFinished: currEngine.testStage,
                                    content: langDef[testStage]![lang],
                                    indexCurrEngineInBox: indexBox,
                                    operationNumber: 5,
                                    isLast: true,
                                  ),
                                ],
                              ),
                            ),
                            const Gap(10),
                            if (showSaveBtn(indexBox))
                              ElevatedButton(
                                style: const ButtonStyle(
                                  backgroundColor:
                                      WidgetStatePropertyAll(Colors.green),
                                  padding: WidgetStatePropertyAll(
                                    EdgeInsets.symmetric(horizontal: 60),
                                  ),
                                ),
                                onPressed: () {
                                  EngineModel engine =
                                      EngineModel.addLogOutDate(
                                          box.getAt(indexBox)!);
                                  box.putAt(indexBox, engine);

                                  final x =
                                      BlocProvider.of<EditEngineCubit>(context);

                                  x.moveTo(box.getAt(indexBox)!, refurbished);
                                  x.moveToDepart(box.getAt(indexBox)!, false);

                                  showDialog(
                                      context: context,
                                      builder: (context) {
                                        MyAlertDialogText myTexts =
                                            MyAlertDialogText(
                                                "نقل", currEngine.id);

                                        return MyAlertDialog(
                                            title: myTexts.operationTitle(),
                                            content: myTexts
                                                .operationSuccessContent(),
                                            btnName: "الصفحة الرئيسية",
                                            onPressed: () {
                                              Navigator.pushNamedAndRemoveUntil(
                                                  context,
                                                  MainView.id,
                                                  (route) => false);
                                            },
                                            onPressed2: () {},
                                            showbtn2: false);
                                      });
                                },
                                child: const Text(
                                  "حفظ",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 255, 255, 255),
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                          ],
                        )
                      : const SizedBox(),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
