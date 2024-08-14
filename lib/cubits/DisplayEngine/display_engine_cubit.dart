import 'package:bloc_learn/models/engine_model.dart';
import 'package:bloc_learn/utils/def.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'display_engine_state.dart';

class DisplayEngineCubit extends Cubit<List<EngineModel>> {
  DisplayEngineCubit() : super([]);

  List<EngineModel>? currList;
  fetchAllData(int pageIndex) {
    switch (pageIndex) {
      case 0:
        {
          currList = box.values.toList();
          break;
        }
      case 1:
        {
          currList =
              box.values.where((engine) => engine.state == "non_ref").toList();
          break;
        }
      case 2:
        {
          currList =
              box.values.where((engine) => engine.state == "ref").toList();
          break;
        }
      case 3:
        {
          currList =
              box.values.where((engine) => engine.state == "depart").toList();
        }
    }
    emit(currList!);
  }
}
