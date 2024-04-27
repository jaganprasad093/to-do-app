// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TodoModelAdapter extends TypeAdapter<Todo_Model> {
  @override
  final int typeId = 1;

  @override
  Todo_Model read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Todo_Model(
      title: fields[0] as String,
      category: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Todo_Model obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.title)
      ..writeByte(1)
      ..write(obj.category);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TodoModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
