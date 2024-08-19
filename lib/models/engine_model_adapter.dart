import 'package:bloc_learn/models/engine_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

class EngineModelAdapter extends TypeAdapter<EngineModel> {
  @override
  EngineModel read(BinaryReader reader) {
    return EngineModel(
      id: reader.readInt(),
      state: reader.readString(),
      unit: reader.readString(),
      logDate: reader.readString(),
      logOutDate: reader.readString(),
      washDate: reader.readString(),
      crankDate: reader.readString(),
      collectDate: reader.readString(),
      cylinderDate: reader.readString(),
      sprayDate: reader.readString(),
      testDate: reader.readString(),
      isDeparted: reader.readBool(),
      washStage: reader.readBool(),
      crankStage: reader.readBool(),
      collectStage: reader.readBool(),
      cylinderStage: reader.readBool(),
      sprayStage: reader.readBool(),
      testStage: reader.readBool(),
    );
  }

  @override
  int get typeId => 0;

  @override
  void write(BinaryWriter writer, EngineModel obj) {
    writer.writeInt(obj.id);
    writer.writeString(obj.state);
    writer.writeString(obj.unit);
    writer.writeString(obj.logDate);
    writer.writeString(obj.logOutDate);
    writer.writeString(obj.washDate);
    writer.writeString(obj.crankDate);
    writer.writeString(obj.collectDate);
    writer.writeString(obj.cylinderDate);
    writer.writeString(obj.sprayDate);
    writer.writeString(obj.testDate);

    writer.writeBool(obj.isDeparted);
    writer.writeBool(obj.washStage);
    writer.writeBool(obj.crankStage);
    writer.writeBool(obj.collectStage);
    writer.writeBool(obj.cylinderStage);
    writer.writeBool(obj.sprayStage);
    writer.writeBool(obj.testStage);
  }
}
