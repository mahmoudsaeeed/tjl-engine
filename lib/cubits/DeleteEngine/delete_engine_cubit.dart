import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'delete_engine_state.dart';

class DeleteEngineCubit extends Cubit<DeleteEngineState> {
  DeleteEngineCubit() : super(DeleteEngineInitial());
}
