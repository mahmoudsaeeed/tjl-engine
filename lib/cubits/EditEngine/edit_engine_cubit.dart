import '../../models/engine_model.dart';
import '../../utils/def.dart';
import '../../utils/methods/get_index_in_box.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'edit_engine_state.dart';

class EditEngineCubit extends Cubit<EditEngineState> {
  EditEngineCubit() : super(EditEngineInitial());

  editEngine(EngineModel currEngine, int indexField) {
    int boxIndex = getIndexInBox(currEngine);

    EngineModel newEngine =
        EngineModel.editEngine(box.getAt(boxIndex)!, indexField);

    box.putAt(boxIndex, newEngine);
  }

  moveTo(EngineModel currEngine, String pageName) {
    int boxIndex = getIndexInBox(currEngine);

    EngineModel newEngine =
        EngineModel.editState(box.getAt(boxIndex)!, pageName);
    box.putAt(boxIndex, newEngine);
  }

  moveToDepart(EngineModel currEngine, bool isDeparted) {
    int boxIndex = getIndexInBox(currEngine);
    EngineModel newEngine =
        EngineModel.editIsDeparted(box.getAt(boxIndex)!, isDeparted);

    box.putAt(boxIndex, newEngine);
  }
}

//TODO   مستخدمتش الاستيتس خالص كل اللي عملته الميثود بس
