import 'package:bloc_learn/models/engine_model.dart';
import 'package:bloc_learn/utils/constants.dart';
//* 
//* this method used to return number of engines depending on its state
//* user send current List and type of state and method return the number
// */
numberOfEngine(List<EngineModel> currList, String type) {
  switch (type) {
    case refurbished:
      {
        return currList
            .where((engine) => engine.state == refurbished)
            .toList()
            .length;
      }
    case nonRefurbished:
      {
        return currList
            .where((engine) => engine.state == nonRefurbished)
            .toList()
            .length;
    }
    case mog:
      {
        return currList
            .where((engine) => engine.state == mog)
            .toList()
            .length;
    }
    case std:
      {
        return currList
            .where((engine) => engine.state == std)
            .toList()
            .length;
    }
  }
}
