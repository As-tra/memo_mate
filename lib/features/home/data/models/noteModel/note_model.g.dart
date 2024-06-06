// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class NoteModelAdapter extends TypeAdapter<NoteModel> {
  @override
  final int typeId = 0;

  @override
  NoteModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return NoteModel(
      title: fields[0] as String,
      category: fields[1] as String,
      tags: (fields[2] as List).cast<String>(),
      code: fields[4] as int?,
      dateOfCreation: fields[5] as DateTime,
      dateOfLastEdit: fields[6] as DateTime,
      deadline: fields[7] as DateTime,
      isFavorite: fields[8] as bool,
      isSecured: fields[3] as bool,
      content: fields[9] as dynamic,
      color: fields[10] as int,
    );
  }

  @override
  void write(BinaryWriter writer, NoteModel obj) {
    writer
      ..writeByte(11)
      ..writeByte(0)
      ..write(obj.title)
      ..writeByte(1)
      ..write(obj.category)
      ..writeByte(2)
      ..write(obj.tags)
      ..writeByte(3)
      ..write(obj.isSecured)
      ..writeByte(4)
      ..write(obj.code)
      ..writeByte(5)
      ..write(obj.dateOfCreation)
      ..writeByte(6)
      ..write(obj.dateOfLastEdit)
      ..writeByte(7)
      ..write(obj.deadline)
      ..writeByte(8)
      ..write(obj.isFavorite)
      ..writeByte(9)
      ..write(obj.content)
      ..writeByte(10)
      ..write(obj.color);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NoteModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
