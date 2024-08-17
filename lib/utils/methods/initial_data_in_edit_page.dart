import 'package:bloc_learn/models/engine_model.dart';
import 'package:bloc_learn/utils/controllers.dart';

setInitialData(EngineModel currEngine) {
  idEditController.text = currEngine.id.toString();
  stateEditController.text = currEngine.state;
  logDateEditController.text = currEngine.logDate;
  logOutDateEditController.text = currEngine.logOutDate;

  washEditController.text = currEngine.washDate;
  crankEditController.text = currEngine.crankDate;
  collectEditController.text = currEngine.collectDate;
  cylinderEditController.text = currEngine.cylinderDate;
  sprayEditController.text = currEngine.sprayDate;
  testEditController.text = currEngine.testDate;
}
