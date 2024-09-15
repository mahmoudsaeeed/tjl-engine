import '../utils/controllers.dart';
import '../utils/def.dart';
import 'package:hive_flutter/hive_flutter.dart';

class EngineModel extends HiveObject {
  final int id;
  final String state;
  final String unit;
  final String logDate;
  final String logOutDate;

  final bool isDeparted;
  final bool washStage;
  final bool crankStage;
  final bool collectStage;
  final bool cylinderStage;
  final bool sprayStage;
  final bool testStage;

  final String washDate;
  final String crankDate;
  final String collectDate;
  final String cylinderDate;
  final String sprayDate;
  final String testDate;

  EngineModel({
    required this.id,
    required this.state,
    required this.unit,
    required this.logDate,
    this.logOutDate = "",
    this.washDate = "",
    this.crankDate = "",
    this.collectDate = "",
    this.cylinderDate = "",
    this.sprayDate = "",
    this.testDate = "",
    this.isDeparted = false,
    this.washStage = false,
    this.crankStage = false,
    this.collectStage = false,
    this.cylinderStage = false,
    this.sprayStage = false,
    this.testStage = false,
  });

//TODO here we will use controller for each property from edit page

  factory EngineModel.editEngine(EngineModel engine, int index) {
    switch (index) {
      //* id
      case 0:
        {
          return EngineModel(
            id: int.parse(idEditController.value.text),
            state: engine.state,
            unit: engine.state,
            logDate: engine.logDate,
            logOutDate: engine.logOutDate,
            isDeparted: engine.isDeparted,
            washDate: engine.washDate,
            crankDate: engine.crankDate,
            collectDate: engine.collectDate,
            cylinderDate: engine.cylinderDate,
            sprayDate: engine.sprayDate,
            testDate: engine.testDate,
            washStage: engine.washStage,
            crankStage: engine.crankStage,
            collectStage: engine.collectStage,
            cylinderStage: engine.cylinderStage,
            sprayStage: engine.sprayStage,
            testStage: engine.testStage,
          );
        }

      //* state
      case 1:
        {
          return EngineModel(
            id: engine.id,
            state: stateEditController.value.text,
            unit: engine.unit,
            logDate: engine.logDate,
            logOutDate: engine.logOutDate,
            isDeparted: engine.isDeparted,
            washDate: engine.washDate,
            crankDate: engine.crankDate,
            collectDate: engine.collectDate,
            cylinderDate: engine.cylinderDate,
            sprayDate: engine.sprayDate,
            testDate: engine.testDate,
            washStage: engine.washStage,
            crankStage: engine.crankStage,
            collectStage: engine.collectStage,
            cylinderStage: engine.cylinderStage,
            sprayStage: engine.sprayStage,
            testStage: engine.testStage,
          );
        }

      //* logDate
      case 2:
        {
          return EngineModel(
            id: engine.id,
            state: engine.state,
            unit: engine.unit,
            logDate: logDateEditController.value.text,
            logOutDate: engine.logOutDate,
            isDeparted: engine.isDeparted,
            washDate: engine.washDate,
            crankDate: engine.crankDate,
            collectDate: engine.collectDate,
            cylinderDate: engine.cylinderDate,
            sprayDate: engine.sprayDate,
            testDate: engine.testDate,
            washStage: engine.washStage,
            crankStage: engine.crankStage,
            collectStage: engine.collectStage,
            cylinderStage: engine.cylinderStage,
            sprayStage: engine.sprayStage,
            testStage: engine.testStage,
          );
        }

      //* logOutDate
      case 3:
        {
          return EngineModel(
            id: engine.id,
            state: engine.state,
            unit: engine.unit,
            logDate: engine.logDate,
            logOutDate: logOutDateEditController.value.text,
            isDeparted: engine.isDeparted,
            washDate: engine.washDate,
            crankDate: engine.crankDate,
            collectDate: engine.collectDate,
            cylinderDate: engine.cylinderDate,
            sprayDate: engine.sprayDate,
            testDate: engine.testDate,
            washStage: engine.washStage,
            crankStage: engine.crankStage,
            collectStage: engine.collectStage,
            cylinderStage: engine.cylinderStage,
            sprayStage: engine.sprayStage,
            testStage: engine.testStage,
          );
        }

      //* wash
      case 4:
        {
          return EngineModel(
            id: engine.id,
            state: engine.state,
            unit: engine.unit,
            logDate: engine.logDate,
            logOutDate: engine.logOutDate,
            isDeparted: engine.isDeparted,
            washDate: washEditController.value.text,
            crankDate: engine.crankDate,
            collectDate: engine.collectDate,
            cylinderDate: engine.cylinderDate,
            sprayDate: engine.sprayDate,
            testDate: engine.testDate,
            washStage:
                washEditController.value.text == "" ? false : engine.washStage,
            crankStage: engine.crankStage,
            collectStage: engine.collectStage,
            cylinderStage: engine.cylinderStage,
            sprayStage: engine.sprayStage,
            testStage: engine.testStage,
          );
        }

      //* crank
      case 5:
        {
          return EngineModel(
            id: engine.id,
            state: engine.state,
            unit: engine.unit,
            logDate: engine.logDate,
            logOutDate: engine.logOutDate,
            isDeparted: engine.isDeparted,
            washDate: engine.washDate,
            crankDate: crankEditController.value.text,
            collectDate: engine.collectDate,
            cylinderDate: engine.cylinderDate,
            sprayDate: engine.sprayDate,
            testDate: engine.testDate,
            washStage: engine.washStage,
            crankStage: crankEditController.value.text == ""
                ? false
                : engine.crankStage,
            collectStage: engine.collectStage,
            cylinderStage: engine.cylinderStage,
            sprayStage: engine.sprayStage,
            testStage: engine.testStage,
          );
        }

      //* collect
      case 6:
        {
          return EngineModel(
            id: engine.id,
            state: engine.state,
            unit: engine.unit,
            logDate: engine.logDate,
            logOutDate: engine.logOutDate,
            isDeparted: engine.isDeparted,
            washDate: engine.washDate,
            crankDate: engine.crankDate,
            collectDate: collectEditController.value.text,
            cylinderDate: engine.cylinderDate,
            sprayDate: engine.sprayDate,
            testDate: engine.testDate,
            washStage: engine.washStage,
            crankStage: engine.crankStage,
            collectStage: collectEditController.value.text == ""
                ? false
                : engine.collectStage,
            cylinderStage: engine.cylinderStage,
            sprayStage: engine.sprayStage,
            testStage: engine.testStage,
          );
        }

      //* cylinder
      case 7:
        {
          return EngineModel(
            id: engine.id,
            state: engine.state,
            unit: engine.unit,
            logDate: engine.logDate,
            logOutDate: engine.logOutDate,
            isDeparted: engine.isDeparted,
            washDate: engine.washDate,
            crankDate: engine.crankDate,
            collectDate: engine.collectDate,
            cylinderDate: cylinderEditController.value.text,
            sprayDate: engine.sprayDate,
            testDate: engine.testDate,
            washStage: engine.washStage,
            crankStage: engine.crankStage,
            collectStage: engine.collectStage,
            cylinderStage: cylinderEditController.value.text == ""
                ? false
                : engine.cylinderStage,
            sprayStage: engine.sprayStage,
            testStage: engine.testStage,
          );
        }

      //* spray
      case 8:
        {
          return EngineModel(
            id: engine.id,
            state: engine.state,
            unit: engine.unit,
            logDate: engine.logDate,
            logOutDate: engine.logOutDate,
            isDeparted: engine.isDeparted,
            washDate: engine.washDate,
            crankDate: engine.crankDate,
            collectDate: engine.collectDate,
            cylinderDate: engine.cylinderDate,
            sprayDate: sprayEditController.value.text,
            testDate: engine.testDate,
            washStage: engine.washStage,
            crankStage: engine.crankStage,
            collectStage: engine.collectStage,
            cylinderStage: engine.cylinderStage,
            sprayStage: sprayEditController.value.text == ""
                ? false
                : engine.sprayStage,
            testStage: engine.testStage,
          );
        }

      //* test
      case 9:
        {
          return EngineModel(
            id: engine.id,
            state: engine.state,
            unit: engine.unit,
            logDate: engine.logDate,
            logOutDate: engine.logOutDate,
            isDeparted: engine.isDeparted,
            washDate: engine.washDate,
            crankDate: engine.crankDate,
            collectDate: engine.collectDate,
            cylinderDate: engine.cylinderDate,
            sprayDate: engine.sprayDate,
            testDate: testEditController.value.text,
            washStage: engine.washStage,
            crankStage: engine.crankStage,
            collectStage: engine.collectStage,
            cylinderStage: engine.cylinderStage,
            sprayStage: engine.sprayStage,
            testStage:
                testEditController.value.text == "" ? false : engine.testStage,
          );
        }

      //* unit
      case 10:
        {
          return EngineModel(
            id: engine.id,
            state: engine.state,
            unit: unitEditController.value.text,
            logDate: engine.logDate,
            logOutDate: engine.logOutDate,
            isDeparted: engine.isDeparted,
            washDate: engine.washDate,
            crankDate: engine.crankDate,
            collectDate: engine.collectDate,
            cylinderDate: engine.cylinderDate,
            sprayDate: engine.sprayDate,
            testDate: engine.testDate,
            washStage: engine.washStage,
            crankStage: engine.crankStage,
            collectStage: engine.collectStage,
            cylinderStage: engine.cylinderStage,
            sprayStage: engine.sprayStage,
            testStage: engine.testStage,
          );
        }
    }

    return engine;
  }

  factory EngineModel.addLogOutDate(EngineModel engine) {
    return EngineModel(
      id: engine.id,
      state: engine.state,
      unit: engine.unit,
      logDate: engine.logDate,
      logOutDate: myDateTime,
      isDeparted: engine.isDeparted,
      washDate: engine.washDate,
      crankDate: engine.crankDate,
      collectDate: engine.collectDate,
      cylinderDate: engine.cylinderDate,
      sprayDate: engine.sprayDate,
      testDate: engine.testDate,
      washStage: engine.washStage,
      crankStage: engine.crankStage,
      collectStage: engine.collectStage,
      cylinderStage: engine.cylinderStage,
      sprayStage: engine.sprayStage,
      testStage: engine.testStage,
    );
  }

  factory EngineModel.editState(EngineModel engine, String state) {
    return EngineModel(
      id: engine.id,
      state: state,
      unit: engine.unit,
      logDate: engine.logDate,
      logOutDate: engine.logOutDate,
      isDeparted: engine.isDeparted,
      washDate: engine.washDate,
      crankDate: engine.crankDate,
      collectDate: engine.collectDate,
      cylinderDate: engine.cylinderDate,
      sprayDate: engine.sprayDate,
      testDate: engine.testDate,
      washStage: engine.washStage,
      crankStage: engine.crankStage,
      collectStage: engine.collectStage,
      cylinderStage: engine.cylinderStage,
      sprayStage: engine.sprayStage,
      testStage: engine.testStage,
    );
  }
  factory EngineModel.editIsDeparted(EngineModel engine, bool isDeparted) {
    return EngineModel(
      id: engine.id,
      state: engine.state,
      unit: engine.unit,
      logDate: engine.logDate,
      logOutDate: engine.logOutDate,
      isDeparted: isDeparted,
      washDate: engine.washDate,
      crankDate: engine.crankDate,
      collectDate: engine.collectDate,
      cylinderDate: engine.cylinderDate,
      sprayDate: engine.sprayDate,
      testDate: engine.testDate,
      washStage: engine.washStage,
      crankStage: engine.crankStage,
      collectStage: engine.collectStage,
      cylinderStage: engine.cylinderStage,
      sprayStage: engine.sprayStage,
      testStage: engine.testStage,
    );
  }

  factory EngineModel.changeStage(
      int operationNo, EngineModel engine, bool state) {
    switch (operationNo) {
      //* wash
      case 0:
        {
          return EngineModel(
            id: engine.id,
            state: engine.state,
            unit: engine.unit,
            logDate: engine.logDate,
            logOutDate: engine.logOutDate,
            isDeparted: engine.isDeparted,
            washDate: state ? myDateTime : "",
            crankDate: engine.crankDate,
            collectDate: engine.collectDate,
            cylinderDate: engine.cylinderDate,
            sprayDate: engine.sprayDate,
            testDate: engine.testDate,
            washStage: state,
            crankStage: engine.crankStage,
            collectStage: engine.collectStage,
            cylinderStage: engine.cylinderStage,
            sprayStage: engine.sprayStage,
            testStage: engine.testStage,
          );
        }
      //* crank
      case 1:
        {
          return EngineModel(
            id: engine.id,
            state: engine.state,
            unit: engine.unit,
            logDate: engine.logDate,
            logOutDate: engine.logOutDate,
            isDeparted: engine.isDeparted,
            washDate: engine.washDate,
            crankDate: state ? myDateTime : "",
            collectDate: engine.collectDate,
            cylinderDate: engine.cylinderDate,
            sprayDate: engine.sprayDate,
            testDate: engine.testDate,
            washStage: engine.washStage,
            crankStage: state,
            collectStage: engine.collectStage,
            cylinderStage: engine.cylinderStage,
            sprayStage: engine.sprayStage,
            testStage: engine.testStage,
          );
        }
      //* collect
      case 2:
        {
          return EngineModel(
            id: engine.id,
            state: engine.state,
            unit: engine.unit,
            logDate: engine.logDate,
            logOutDate: engine.logOutDate,
            isDeparted: engine.isDeparted,
            washDate: engine.washDate,
            crankDate: engine.crankDate,
            collectDate: state ? myDateTime : "",
            cylinderDate: engine.cylinderDate,
            sprayDate: engine.sprayDate,
            testDate: engine.testDate,
            washStage: engine.washStage,
            crankStage: engine.crankStage,
            collectStage: state,
            cylinderStage: engine.cylinderStage,
            sprayStage: engine.sprayStage,
            testStage: engine.testStage,
          );
        }
      //* cylinder
      case 3:
        {
          return EngineModel(
            id: engine.id,
            state: engine.state,
            unit: engine.unit,
            logDate: engine.logDate,
            logOutDate: engine.logOutDate,
            isDeparted: engine.isDeparted,
            washDate: engine.washDate,
            crankDate: engine.crankDate,
            collectDate: engine.collectDate,
            cylinderDate: state ? myDateTime : "",
            sprayDate: engine.sprayDate,
            testDate: engine.testDate,
            washStage: engine.washStage,
            crankStage: engine.crankStage,
            collectStage: engine.collectStage,
            cylinderStage: state,
            sprayStage: engine.sprayStage,
            testStage: engine.testStage,
          );
        }
      //* spray
      case 4:
        {
          return EngineModel(
            id: engine.id,
            state: engine.state,
            unit: engine.unit,
            logDate: engine.logDate,
            logOutDate: engine.logOutDate,
            isDeparted: engine.isDeparted,
            washDate: engine.washDate,
            crankDate: engine.crankDate,
            collectDate: engine.collectDate,
            cylinderDate: engine.cylinderDate,
            sprayDate: state ? myDateTime : "",
            testDate: engine.testDate,
            washStage: engine.washStage,
            crankStage: engine.crankStage,
            collectStage: engine.collectStage,
            cylinderStage: engine.cylinderStage,
            sprayStage: state,
            testStage: engine.testStage,
          );
        }
      //* test
      case 5:
        {
          return EngineModel(
            id: engine.id,
            state: engine.state,
            unit: engine.unit,
            logDate: engine.logDate,
            logOutDate: engine.logOutDate,
            isDeparted: engine.isDeparted,
            washDate: engine.washDate,
            crankDate: engine.crankDate,
            collectDate: engine.collectDate,
            cylinderDate: engine.cylinderDate,
            sprayDate: engine.sprayDate,
            testDate: state ? myDateTime : "",
            washStage: engine.washStage,
            crankStage: engine.crankStage,
            collectStage: engine.collectStage,
            cylinderStage: engine.cylinderStage,
            sprayStage: engine.sprayStage,
            testStage: state,
          );
        }
    }

    return engine;
  }
}
