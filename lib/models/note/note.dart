import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/hive_entities/note/note_entity.dart';

part 'note.freezed.dart';
part 'note.g.dart';

@freezed
class Note with _$Note {
  factory Note({
    String? id,
    @Default('') String title,
    @Default('') String description,
    DateTime? date,
    @Default(false) bool isComplete,
  }) = _Note;

  factory Note.fromJson(Map<String, dynamic> json) => _$NoteFromJson(json);

  static Note fromNoteEntity(NoteEntity note) {
    return Note(
      id: note.id,
      title: note.title ?? '',
      description: note.description ?? '',
      date: note.date,
      isComplete: note.isComplete ?? false,
    );
  }
}
