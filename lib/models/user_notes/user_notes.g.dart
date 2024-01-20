// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_notes.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserNotesImpl _$$UserNotesImplFromJson(Map<String, dynamic> json) =>
    _$UserNotesImpl(
      notes: (json['notes'] as List<dynamic>?)
              ?.map((e) => Note.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$UserNotesImplToJson(_$UserNotesImpl instance) =>
    <String, dynamic>{
      'notes': instance.notes,
    };
