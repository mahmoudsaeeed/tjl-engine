import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'display_engine_state.dart';

class DisplayEngineCubit extends Cubit<DisplayEngineState> {
  DisplayEngineCubit() : super(DisplayEngineInitial());
}
