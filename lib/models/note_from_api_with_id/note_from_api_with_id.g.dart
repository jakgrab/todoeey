// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note_from_api_with_id.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NoteFromApiWithIdImpl _$$NoteFromApiWithIdImplFromJson(
        Map<String, dynamic> json) =>
    _$NoteFromApiWithIdImpl(
      id: json['id'] as int?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      isComplete: json['is_complete'] as bool?,
      dateToIsoString: json['due_date'] as String?,
    );

Map<String, dynamic> _$$NoteFromApiWithIdImplToJson(
        _$NoteFromApiWithIdImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'is_complete': instance.isComplete,
      'due_date': instance.dateToIsoString,
    };
