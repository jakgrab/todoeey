// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NoteResponseImpl _$$NoteResponseImplFromJson(Map<String, dynamic> json) =>
    _$NoteResponseImpl(
      id: json['id'] as int?,
      author: json['author'] == null
          ? null
          : Author.fromJson(json['author'] as Map<String, dynamic>),
      title: json['title'] as String?,
      description: json['description'] as String?,
      isComplete: json['is_complete'] as bool?,
      date: json['due_date'] as String?,
    );

Map<String, dynamic> _$$NoteResponseImplToJson(_$NoteResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'author': instance.author,
      'title': instance.title,
      'description': instance.description,
      'is_complete': instance.isComplete,
      'due_date': instance.date,
    };
