import 'package:hive_flutter/hive_flutter.dart';

class EngineModel extends HiveObject {
  final int id;
  final String state;
  final String logDate;

  EngineModel(
    this.id, 
    this.state, 
    this.logDate,
  );
}
