import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'edit_engine_state.dart';

class EditEngineCubit extends Cubit<EditEngineState> {
  EditEngineCubit() : super(EditEngineInitial());
}
