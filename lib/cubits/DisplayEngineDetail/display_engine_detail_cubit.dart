import '../../models/engine_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'display_engine_detail_state.dart';

class DisplayEngineDetailCubit extends Cubit<DisplayEngineDetailState> {
  DisplayEngineDetailCubit() : super(DisplayEngineDetailInitial());

  engineDetail(EngineModel currEngine) {
    // idEditController.text = currEngine.id.toString();
    // stateEditController.text = currEngine.state;
    // logDateEditController.text = currEngine.logDate;
    // logDateEditController.text = currEngine.logOutDate;
    // washEditController.text = currEngine.washDate;
    // crankEditController.text = currEngine.crankDate;
    // collectEditController.text = currEngine.collectDate;
    // cylinderEditController.text = currEngine.cylinderDate;
    // sprayEditController.text = currEngine.sprayDate;
    // testEditController.text = currEngine.testDate;
  }
}
