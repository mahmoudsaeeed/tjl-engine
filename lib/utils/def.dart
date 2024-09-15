import '../models/engine_model.dart';
import 'constants.dart';
import 'package:hive_flutter/hive_flutter.dart';

final Box<EngineModel> box = Hive.box<EngineModel>(knameBox);

final String myDateTime = DateTime.now().toString().split(" ")[0];

