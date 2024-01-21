// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note_from_api.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NoteFromApiImpl _$$NoteFromApiImplFromJson(Map<String, dynamic> json) =>
    _$NoteFromApiImpl(
      title: json['title'] as String?,
      description: json['description'] as String?,
      isComplete: json['is_complete'] as bool?,
      dateToIsoString: json['due_date'] as String?,
    );

Map<String, dynamic> _$$NoteFromApiImplToJson(_$NoteFromApiImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'is_complete': instance.isComplete,
      'due_date': instance.dateToIsoString,
    };
