import 'package:bloc_learn/utils/controllers.dart';
import 'package:hive_flutter/hive_flutter.dart';

class EngineModel extends HiveObject {
  final int id;
  final String state;
  final String logDate;
  final String logOutDate;

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
    required this.logDate,
    this.logOutDate = "",
    this.washDate = "",
    this.crankDate = "",
    this.collectDate = "",
    this.cylinderDate = "",
    this.sprayDate = "",
    this.testDate = "",
    this.washStage = false,
    this.crankStage = false,
    this.collectStage = false,
    this.cylinderStage = false,
    this.sprayStage = false,
    this.testStage = false,
  });


//TODO here we will use controller for each property from edit page 
   
   
   
   
  
  
   factory EngineModel.editEngine(EngineModel engine) {
    return EngineModel(
      id: int.parse(idController.value.text),
      state: stateController.value.text,
      logDate: logDateController.value.text,
      logOutDate: engine.logOutDate,

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
      logDate: engine.logDate,
      logOutDate: engine.logOutDate,

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
