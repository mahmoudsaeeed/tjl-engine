import 'package:bloc_learn/models/engine_model.dart';
import 'package:bloc_learn/utils/def.dart';

int getIndexInBox(EngineModel engine) {
  for (int i = 0; i < box.length; i++) {
    if (box.getAt(i) == engine) {
      return i;
    }
  }

  return -1;
}
