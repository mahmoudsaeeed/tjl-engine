import '../../models/engine_model.dart';
import '../../utils/controllers.dart';
import '../../utils/def.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'add_engine_state.dart';

class AddEngineCubit extends Cubit<AddEngineState> {
  AddEngineCubit() : super(AddEngineInitial());

  addEngine() {
    try {
      EngineModel engine = EngineModel(
        id: int.parse(idController.value.text),
        unit: unitController.value.text,
        state: stateController.value.text,
        logDate: myDateTime,
      );

      box.add(engine);
      emit(AddEngineSuccess(currList: box.values.toList()));
    } catch (e) {
      print(e);
    }
  }
}
