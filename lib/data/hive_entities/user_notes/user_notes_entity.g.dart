// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_notes_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserNotesEntityAdapter extends TypeAdapter<UserNotesEntity> {
  @override
  final int typeId = 2;

  @override
  UserNotesEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return UserNotesEntity(
      notes: (fields[0] as List?)?.cast<NoteEntity>(),
    );
  }

  @override
  void write(BinaryWriter writer, UserNotesEntity obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.notes);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserNotesEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
