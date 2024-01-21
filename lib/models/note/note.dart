import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/hive_entities/note/note_entity.dart';
import '../note_response/note_response.dart';

part 'note.freezed.dart';
part 'note.g.dart';

@freezed
class Note with _$Note {
  factory Note({
    int? id,
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

  static Note fromNoteResponse(NoteResponse noteResponse) {
    return Note(
      id: noteResponse.id,
      title: noteResponse.title ?? '',
      description: noteResponse.description ?? '',
      isComplete: noteResponse.isComplete ?? false,
      date: noteResponse.date == null ? null : DateTime.tryParse(noteResponse.date!),
    );
  }
}
