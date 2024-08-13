import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'add_engine_state.dart';

class AddEngineCubit extends Cubit<AddEngineState> {
  AddEngineCubit() : super(AddEngineInitial());
}
