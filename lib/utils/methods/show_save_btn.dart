import 'package:bloc_learn/models/engine_model.dart';
import 'package:bloc_learn/utils/def.dart';

bool showSaveBtn(int indexInBox) {
  EngineModel currEngine = box.getAt(indexInBox)!;

  if (currEngine.washStage != false &&
      currEngine.crankStage != false &&
      currEngine.collectStage != false &&
      currEngine.cylinderStage != false &&
      currEngine.sprayStage != false &&
      currEngine.testStage != false) {
    return true;
  }
  return false;
}
