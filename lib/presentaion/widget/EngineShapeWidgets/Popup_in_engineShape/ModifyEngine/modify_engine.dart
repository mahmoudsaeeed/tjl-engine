import 'package:bloc_learn/models/engine_model.dart';
import 'package:bloc_learn/presentaion/widget/EngineShapeWidgets/Popup_in_engineShape/ModifyEngine/my_data_row_in_modify_engine.dart';
import 'package:bloc_learn/utils/methods/get_index_in_box.dart';
import 'package:flutter/material.dart';

class ModifyEngine extends StatelessWidget {
  const ModifyEngine(
      {super.key, required this.currEngine, required this.currPage});
  final EngineModel currEngine;
  final int currPage;
  @override
  Widget build(BuildContext context) {
    final int engineIndexInBox = getIndexInBox(currEngine);

    return Directionality(
      child: Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              //* id
              MyDataRowInModifyEngine(
                indexField: 0,
                currPage: currPage,
                engineIndexInBox: engineIndexInBox,
                
                // initValue: "${currEngine.id}",
                
              ),
              //* state
              MyDataRowInModifyEngine(
                indexField: 1,
                currPage: currPage,
                engineIndexInBox: engineIndexInBox,
                // initValue: currEngine.state,
              ),
              //* unit
              MyDataRowInModifyEngine(
                indexField: 10,
                currPage: currPage,
                engineIndexInBox: engineIndexInBox,
                // initValue: currEngine.state,
              ),
              //* logDate
              MyDataRowInModifyEngine(
                indexField: 2,
                currPage: currPage,
                engineIndexInBox: engineIndexInBox,
                // initValue: currEngine.logDate,
              ),
              //* logOutDate
              MyDataRowInModifyEngine(
                indexField: 3,
                currPage: currPage,
                engineIndexInBox: engineIndexInBox,
                // initValue: currEngine.logOutDate,
              ),
              
              //* washStage
              MyDataRowInModifyEngine(
                indexField: 4,
                currPage: currPage,
                engineIndexInBox: engineIndexInBox,
                // initValue: currEngine.washDate,
              ),
              
              //* crankStage
              MyDataRowInModifyEngine(
                indexField: 5,
                currPage: currPage,
                engineIndexInBox: engineIndexInBox,
                // initValue: currEngine.crankDate,
              ),
              //* collectStage
              MyDataRowInModifyEngine(
                indexField: 6,
                currPage: currPage,
                engineIndexInBox: engineIndexInBox,
                // initValue: currEngine.collectDate,
              ),
              
              //* CylinderStage
              MyDataRowInModifyEngine(
                indexField: 7,
                currPage: currPage,
                engineIndexInBox: engineIndexInBox,
                // initValue: currEngine.cylinderDate,
              ),
              
              //* sprayStage
              MyDataRowInModifyEngine(
                indexField: 8,
                currPage: currPage,
                engineIndexInBox: engineIndexInBox,
                // initValue: sprayStage,
              ),
              
              //* testStage
              MyDataRowInModifyEngine(
                indexField: 9,
                currPage: currPage,
                engineIndexInBox: engineIndexInBox,
                // initValue: currEngine.testDate,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
