import '../../models/note/note.dart';

abstract interface class NotesDaoInterface {
  Future<List<Note>?> getAllUserNotes(String userId);
  Future<void> putNote(String userId, Note note);
  Future<void> deleteNote(String userId, Note note);
}
