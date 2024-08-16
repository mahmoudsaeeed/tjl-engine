import 'package:bloc_learn/cubits/changeOperation/change_operation_cubit.dart';
import 'package:bloc_learn/models/engine_model.dart';
import 'package:bloc_learn/presentaion/widget/EngineShapeWidgets/MyTimeLineTile.dart';
import 'package:bloc_learn/presentaion/widget/EngineShapeWidgets/DataPart/data_part.dart';
import 'package:bloc_learn/utils/constants.dart';
import 'package:bloc_learn/utils/get_index_in_box.dart';
import 'package:bloc_learn/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

class EngineShape extends StatefulWidget {
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
  State<EngineShape> createState() => _EngineShapeState();
}

class _EngineShapeState extends State<EngineShape> {
  @override
  Widget build(BuildContext context) {
    final int indexBox = getIndexInBox(widget.currEngine);
    return BlocBuilder<ChangeOperationCubit, ChangeOperationState>(
      builder: (context, state) {
        return GestureDetector(
          onTap: () {
            debugPrint(
                "engine in index ${widget.index} his id = ${widget.currEngine.id}");
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
                  Directionality(
                      child: DataPart(currEngine: widget.currEngine)),
                  
                  //** the next part is specific to department page */
                  
                  widget.pageName == department
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
                                    isFinished: widget.currEngine.washStage,
                                    content: langDef[washStage]![lang],
                                    isFirst: true,
                                    indexCurrEngineInBox: indexBox,
                                    operationNumber: 0,
                                  ),
                                  MyTimeLineTile(
                                    isFinished: widget.currEngine.crankStage,
                                    content: langDef[crankStage]![lang],
                                    indexCurrEngineInBox: indexBox,
                                    operationNumber: 1,
                                  ),
                                  MyTimeLineTile(
                                    isFinished: widget.currEngine.collectStage,
                                    content: langDef[collectStage]![lang],
                                    indexCurrEngineInBox: indexBox,
                                    operationNumber: 2,
                                  ),
                                  MyTimeLineTile(
                                    isFinished: widget.currEngine.cylinderStage,
                                    content: langDef[cylinderStage]![lang],
                                    indexCurrEngineInBox: indexBox,
                                    operationNumber: 3,
                                  ),
                                  MyTimeLineTile(
                                    isFinished: widget.currEngine.sprayStage,
                                    content: langDef[sprayStage]![lang],
                                    indexCurrEngineInBox: indexBox,
                                    operationNumber: 4,
                                  ),
                                  MyTimeLineTile(
                                    isFinished: widget.currEngine.testStage,
                                    content: langDef[testStage]![lang],
                                    indexCurrEngineInBox: indexBox,
                                    operationNumber: 5,
                                    isLast: true,
                                  ),
                                ],
                              ),
                            ),
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
