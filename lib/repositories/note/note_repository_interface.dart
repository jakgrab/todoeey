import '../../models/note/note.dart';

abstract interface class NoteRepositoryInterface {
  Stream<List<Note>?> getNotes(String userId);
  Future<void> saveNote(String userId, Note note);
}
