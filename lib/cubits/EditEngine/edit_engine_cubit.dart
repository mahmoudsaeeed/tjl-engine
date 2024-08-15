import 'package:bloc_learn/models/engine_model.dart';
import 'package:bloc_learn/utils/constants.dart';
import 'package:bloc_learn/utils/def.dart';
import 'package:bloc_learn/utils/get_index_in_box.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'edit_engine_state.dart';

class EditEngineCubit extends Cubit<EditEngineState> {
  EditEngineCubit() : super(EditEngineInitial());

  editEngine(EngineModel currEngine) {
    int boxIndex = getIndexInBox(currEngine);

    EngineModel newEngine = EngineModel.editEngine(box.getAt(boxIndex)!);

    box.putAt(boxIndex, newEngine);
  }

  moveToDepart(EngineModel currEngine) {
    int boxIndex = getIndexInBox(currEngine);

    EngineModel newEngine =
        EngineModel.editState(box.getAt(boxIndex)!, department);

    box.putAt(boxIndex, newEngine);
  }
}

//TODO   مستخدمتش الاستيتس خالص كل اللي عملته الميثود بس
