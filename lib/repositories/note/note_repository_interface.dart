import '../../models/note/note.dart';

abstract interface class NoteRepositoryInterface {
  Stream<List<Note>?> getNotes(String userId);
  Future<Note?> saveNote(String userId, Note note);
  Future<void> deleteNote(String userId, Note note);
  Future<void> updateNote(String userId, Note note);
}
