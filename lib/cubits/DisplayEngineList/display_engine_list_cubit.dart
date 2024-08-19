import 'package:bloc_learn/models/engine_model.dart';
import 'package:bloc_learn/utils/constants.dart';
import 'package:bloc_learn/utils/def.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'display_engine_list_state.dart';

class DisplayEngineListCubit extends Cubit<List<EngineModel>> {
  DisplayEngineListCubit() : super([]);

  List<EngineModel>? currList;
  fetchAllData(int pageIndex) {
    switch (pageIndex) {
      //*  all
      case 0:
        {
          currList = box.values.toList();
          break;
        }
        //*  nonRef
      case 1:
        {
          currList =
              box.values.where((engine) => engine.state == nonRefurbished || engine.state == mog).toList();
          break;
        }

        //* ref
      case 2:
        {
          currList =
              box.values.where((engine) => engine.state == refurbished || engine.state == std).toList();
          break;
        }

        //* depart
      case 3:
        {
          currList =
              box.values.where((engine) => engine.state == department).toList();
        }
    }
    emit(currList!);
  }
}
