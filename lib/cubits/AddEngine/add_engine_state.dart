part of 'add_engine_cubit.dart';

sealed class AddEngineState {}

final class AddEngineInitial extends AddEngineState {}

class AddEngineSuccess extends AddEngineState {
  final List<EngineModel> currList;

  AddEngineSuccess({required this.currList});
}
