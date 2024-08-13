import 'package:bloc/bloc.dart';
import 'package:bloc_learn/models/engine_model.dart';
import 'package:bloc_learn/utils/def.dart';
import 'package:meta/meta.dart';

part 'display_engine_state.dart';

class DisplayEngineCubit extends Cubit<List<EngineModel>> {
  DisplayEngineCubit() : super([]);

  List<EngineModel>? currList;
  fetchAllData() {
    currList = box.values.toList();
    emit(currList!);
  }
}
