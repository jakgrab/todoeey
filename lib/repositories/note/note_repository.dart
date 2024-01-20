import '../../data/hive_daos/notes_dao_interface.dart';
import '../../models/note/note.dart';
import 'note_repository_interface.dart';

class NoteRepository implements NoteRepositoryInterface {
  NoteRepository(this._notesDao);

  final NotesDaoInterface _notesDao;

  @override
  Stream<List<Note>?> getNotes(String userId) async* {
    final allNotes = await _notesDao.getAllUserNotes(userId);

    yield allNotes;
  }

  @override
  Future<void> saveNote(String userId, Note note) async {
    await _notesDao.putNote(userId, note);
  }
}
