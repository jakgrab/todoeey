// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_credentials_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserCredentialsEntityAdapter extends TypeAdapter<UserCredentialsEntity> {
  @override
  final int typeId = 3;

  @override
  UserCredentialsEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return UserCredentialsEntity(
      email: fields[0] as String?,
      password: fields[1] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, UserCredentialsEntity obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.email)
      ..writeByte(1)
      ..write(obj.password);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserCredentialsEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
