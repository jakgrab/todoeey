import 'package:hive/hive.dart';

import '../../common/constants/constants.dart';
import '../../models/note/note.dart';
import '../hive_entities/note/note_entity.dart';
import '../hive_entities/user_notes/user_notes_entity.dart';
import 'notes_dao_interface.dart';

class NotesDao implements NotesDaoInterface {
  @override
  Future<void> putNote(String userId, Note note) async {
    final notesBox = await Hive.openBox<UserNotesEntity>(Constants.notesBox);
    final userNotes = notesBox.get(userId);

    final noteEntity = NoteEntity.fromNote(note);

    if (userNotes == null || userNotes.notes == null || userNotes.notes?.isEmpty == true) {
      notesBox.put(userId, UserNotesEntity(notes: [noteEntity]));
      return;
    }

    final updatedUserNotes = UserNotesEntity(notes: [...userNotes.notes!, noteEntity]);

    await notesBox.put(userId, updatedUserNotes);
  }

  @override
  Future<List<Note>?> getAllUserNotes(String userId) async {
    final notesBox = await Hive.openBox<UserNotesEntity>(Constants.notesBox);

    final userNotes = notesBox.get(userId);

    if (userNotes == null || userNotes.notes == null) {
      return null;
    }

    return userNotes.notes?.map((noteEntity) => Note.fromNoteEntity(noteEntity)).toList();
  }

  @override
  Future<void> deleteNote(String userId, Note note) async {
    final notesBox = await Hive.openBox<UserNotesEntity>(Constants.notesBox);
    final userNotes = notesBox.get(userId);

    if (userNotes == null || userNotes.notes == null) return;

    final notesList = [...userNotes.notes!];

    notesList.removeWhere((noteEntity) => noteEntity.id == note.id);

    await notesBox.put(userId, UserNotesEntity(notes: notesList));
  }
}
