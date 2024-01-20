import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/hive_entities/user_notes/user_notes_entity.dart';
import '../note/note.dart';

part 'user_notes.freezed.dart';
part 'user_notes.g.dart';

@freezed
class UserNotes with _$UserNotes {
  factory UserNotes({
    @Default([]) List<Note> notes,
  }) = _UserNotes;

  factory UserNotes.fromJson(Map<String, dynamic> json) => _$UserNotesFromJson(json);

  static UserNotes fromUserNotesEntity(UserNotesEntity userNotes) {
    return UserNotes(
      notes: userNotes.notes?.map((e) => Note.fromNoteEntity(e)).toList() ?? [],
    );
  }
}
