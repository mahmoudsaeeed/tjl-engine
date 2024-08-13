import 'package:bloc_learn/models/engine_model.dart';
import 'package:bloc_learn/utils/def.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'display_engine_state.dart';

class DisplayEngineCubit extends Cubit<List<EngineModel>> {
  DisplayEngineCubit() : super([]);

  List<EngineModel>? currList;
  fetchAllData(int index) {
    currList = box.values.toList();
    emit(currList!);
  }
}
