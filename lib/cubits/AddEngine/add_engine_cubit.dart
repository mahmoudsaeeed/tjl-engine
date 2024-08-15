import 'package:bloc_learn/models/engine_model.dart';
import 'package:bloc_learn/utils/controllers.dart';
import 'package:bloc_learn/utils/def.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'add_engine_state.dart';

class AddEngineCubit extends Cubit<AddEngineState> {
  AddEngineCubit() : super(AddEngineInitial());

  addEngine() {
    EngineModel engine = EngineModel(
      id : int.parse(idController.value.text),
      state : stateController.value.text,
      logDate :myDateTime,
    );

    box.add(engine);
    emit(AddEngineSuccess(currList: box.values.toList()));
  }
}
