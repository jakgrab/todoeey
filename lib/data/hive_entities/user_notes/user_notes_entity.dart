import 'package:hive/hive.dart';

import '../../../models/user_notes/user_notes.dart';
import '../note/note_entity.dart';

part 'user_notes_entity.g.dart';

@HiveType(typeId: 2)
class UserNotesEntity extends HiveObject {
  UserNotesEntity({
    this.notes,
  });

  @HiveField(0)
  List<NoteEntity>? notes;

  static UserNotesEntity fromUserNotes(UserNotes userNotes) {
    return UserNotesEntity(
      notes: userNotes.notes.map((e) => NoteEntity.fromNote(e)).toList(),
    );
  }
}
