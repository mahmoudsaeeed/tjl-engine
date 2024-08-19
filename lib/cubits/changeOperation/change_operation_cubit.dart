import 'package:bloc_learn/models/engine_model.dart';
import 'package:bloc_learn/utils/def.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'change_operation_state.dart';

class ChangeOperationCubit extends Cubit<ChangeOperationState> {
  ChangeOperationCubit() : super(ChangeOperationInitial());

  EngineModel? newEngine;
  changeState(int operationNo, int indexCurrEngineInBox) {
    EngineModel engine = box.getAt(indexCurrEngineInBox)!;
    switch (operationNo) {
      //* wash
      case 0:
        {
          newEngine = EngineModel(
            id: engine.id,
            state: engine.state,
            unit: engine.unit,
            logDate: engine.logDate,
            logOutDate: engine.logOutDate,
            washDate: !engine.washStage ? myDateTime : "",
            crankDate: engine.crankDate,
            collectDate: engine.collectDate,
            cylinderDate: engine.cylinderDate,
            sprayDate: engine.sprayDate,
            testDate: engine.testDate,
            washStage: !engine.washStage,
            crankStage: engine.crankStage,
            collectStage: engine.collectStage,
            cylinderStage: engine.cylinderStage,
            sprayStage: engine.sprayStage,
            testStage: engine.testStage,
          );

          box.putAt(indexCurrEngineInBox, newEngine!);
          debugPrint(
              "wash stage : ${newEngine!.washStage}  on Date ${newEngine!.washDate}");

          emit(ChangeOperationSuccess());
        }
      //* crank
      case 1:
        {
          newEngine = EngineModel(
            id: engine.id,
            state: engine.state,
            unit: engine.unit,
            logDate: engine.logDate,
            logOutDate: engine.logOutDate,
            washDate: engine.washDate,
            crankDate: !engine.crankStage ? myDateTime : "",
            collectDate: engine.collectDate,
            cylinderDate: engine.cylinderDate,
            sprayDate: engine.sprayDate,
            testDate: engine.testDate,
            washStage: engine.washStage,
            crankStage: !engine.crankStage,
            collectStage: engine.collectStage,
            cylinderStage: engine.cylinderStage,
            sprayStage: engine.sprayStage,
            testStage: engine.testStage,
          );

          box.putAt(indexCurrEngineInBox, newEngine!);
          debugPrint(
              "crank stage : ${newEngine!.crankStage}  on Date ${newEngine!.crankDate}");
          emit(ChangeOperationSuccess());
        }
      //* collect
      case 2:
        {
          newEngine = EngineModel(
            id: engine.id,
            state: engine.state,
            unit: engine.unit,
            logDate: engine.logDate,
            logOutDate: engine.logOutDate,
            washDate: engine.washDate,
            crankDate: engine.crankDate,
            collectDate: !engine.collectStage ? myDateTime : "",
            cylinderDate: engine.cylinderDate,
            sprayDate: engine.sprayDate,
            testDate: engine.testDate,
            washStage: engine.washStage,
            crankStage: engine.crankStage,
            collectStage: !engine.collectStage,
            cylinderStage: engine.cylinderStage,
            sprayStage: engine.sprayStage,
            testStage: engine.testStage,
          );

          box.putAt(indexCurrEngineInBox, newEngine!);
          debugPrint(
              "collect stage : ${newEngine!.collectStage}  on Date ${newEngine!.collectDate}");
          emit(ChangeOperationSuccess());
        }
      //* cylinder
      case 3:
        {
          newEngine = EngineModel(
            id: engine.id,
            state: engine.state,
            unit: engine.unit,
            logDate: engine.logDate,
            logOutDate: engine.logOutDate,
            washDate: engine.washDate,
            crankDate: engine.crankDate,
            collectDate: engine.collectDate,
            cylinderDate: !engine.cylinderStage ? myDateTime : "",
            sprayDate: engine.sprayDate,
            testDate: engine.testDate,
            washStage: engine.washStage,
            crankStage: engine.crankStage,
            collectStage: engine.collectStage,
            cylinderStage: !engine.cylinderStage,
            sprayStage: engine.sprayStage,
            testStage: engine.testStage,
          );

          box.putAt(indexCurrEngineInBox, newEngine!);
          debugPrint(
              "cylinder stage : ${newEngine!.cylinderStage}  on Date ${newEngine!.cylinderDate}");

          emit(ChangeOperationSuccess());
        }
      //* spray
      case 4:
        {
          newEngine = EngineModel(
            id: engine.id,
            state: engine.state,
            unit: engine.unit,
            logDate: engine.logDate,
            logOutDate: engine.logOutDate,
            washDate: engine.washDate,
            crankDate: engine.crankDate,
            collectDate: engine.collectDate,
            cylinderDate: engine.cylinderDate,
            sprayDate: !engine.sprayStage ? myDateTime : "",
            testDate: engine.testDate,
            washStage: engine.washStage,
            crankStage: engine.crankStage,
            collectStage: engine.collectStage,
            cylinderStage: engine.cylinderStage,
            sprayStage: !engine.sprayStage,
            testStage: engine.testStage,
          );
          box.putAt(indexCurrEngineInBox, newEngine!);
          debugPrint(
              "spray stage : ${newEngine!.sprayStage}  on Date ${newEngine!.sprayDate}");

          emit(ChangeOperationSuccess());
        }
      //* test
      case 5:
        {
          newEngine = EngineModel(
            id: engine.id,
            state: engine.state,
            unit: engine.unit,
            logDate: engine.logDate,
            logOutDate: engine.logOutDate,
            washDate: engine.washDate,
            crankDate: engine.crankDate,
            collectDate: engine.collectDate,
            cylinderDate: engine.cylinderDate,
            sprayDate: engine.sprayDate,
            testDate: !engine.testStage ? myDateTime : "",
            washStage: engine.washStage,
            crankStage: engine.crankStage,
            collectStage: engine.collectStage,
            cylinderStage: engine.cylinderStage,
            sprayStage: engine.sprayStage,
            testStage: !engine.testStage,
          );

          box.putAt(indexCurrEngineInBox, newEngine!);
          debugPrint(
              "test stage : ${newEngine!.testStage}  on Date ${newEngine!.testDate}");

          emit(ChangeOperationSuccess());
        }
    }
  }
}
