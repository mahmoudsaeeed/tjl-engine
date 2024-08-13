import 'package:bloc_learn/models/engine_model.dart';
import 'package:bloc_learn/utils/constants.dart';
import 'package:hive_flutter/hive_flutter.dart';

final Box<EngineModel> box = Hive.box<EngineModel>(knameBox);
