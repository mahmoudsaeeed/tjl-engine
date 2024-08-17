import 'package:bloc_learn/cubits/EditEngine/edit_engine_cubit.dart';
import 'package:bloc_learn/cubits/changeOperation/change_operation_cubit.dart';
import 'package:bloc_learn/models/engine_model.dart';
import 'package:bloc_learn/presentaion/views/main_view.dart';
import 'package:bloc_learn/presentaion/widget/EngineShapeWidgets/MyTimeLineTile.dart';
import 'package:bloc_learn/presentaion/widget/EngineShapeWidgets/DataPart/data_part.dart';
import 'package:bloc_learn/utils/constants.dart';
import 'package:bloc_learn/utils/def.dart';
import 'package:bloc_learn/utils/methods/get_index_in_box.dart';
import 'package:bloc_learn/utils/methods/show_save_btn.dart';
import 'package:bloc_learn/utils/styles.dart';
import 'package:bloc_learn/utils/widgets/AlertDialog/my_alert_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

class EngineShape extends StatelessWidget {
  const EngineShape({
    super.key,
    required this.currEngine,
    required this.index,
    required this.pageName,
  });

  final EngineModel currEngine;
  final int index;
  final String pageName;

  @override
  Widget build(BuildContext context) {
    final int indexBox = getIndexInBox(currEngine);
    return BlocBuilder<ChangeOperationCubit, ChangeOperationState>(
      builder: (context, state) {
        return GestureDetector(
          onTap: () {
            debugPrint("engine in index $index his id = ${currEngine.id}");
          },
          child: Container(
            // height: 100, //TODO will remove
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.symmetric(vertical: 5),
            decoration: engineStyle,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Directionality(child: DataPart(currEngine: currEngine)),

                  //** the next part is specific to department page */

                  pageName == department
                      ? Column(
                          children: [
                            const Gap(20),
                            SizedBox(
                              height: 50,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,

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
                            if (showSaveBtn(indexBox))
                              ElevatedButton(
                                  onPressed: () {
                                    EngineModel engine =
                                        EngineModel.addLogOutDate(
                                            box.getAt(indexBox)!);
                                    box.putAt(indexBox, engine);
                                    BlocProvider.of<EditEngineCubit>(context)
                                        .moveTo(box.getAt(indexBox)!, refurbished);

                                    showDialog(
                                        context: context,
                                        builder: (context) {
                                          return MyAlertDialog(
                                              title: moveTitle,
                                              content: movedSuccessContent,
                                              btnName: "الصفحة الرئيسية",
                                              onPressed: () {
                                                Navigator
                                                    .pushNamedAndRemoveUntil(
                                                        context,
                                                        MainView.id,
                                                        (route) => false);
                                              },
                                              onPressed2: () {},
                                              showbtn2: false);
                                        });
                                  },
                                  child: const Text("حفظ"))
                          ],
                        )
                      : const SizedBox(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
