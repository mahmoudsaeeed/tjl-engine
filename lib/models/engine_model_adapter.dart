import 'package:bloc_learn/models/engine_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

class EngineModelAdapter extends TypeAdapter<EngineModel> {
  @override
  EngineModel read(BinaryReader reader) {
    return EngineModel(
      reader.readInt(),
      reader.readString(),
      reader.readString(),
    );
  }

  @override
  int get typeId => 0;

  @override
  void write(BinaryWriter writer, EngineModel obj) {
    writer.writeInt(obj.id);
    writer.writeString(obj.state);
    writer.writeString(obj.logDate);
  }
}
