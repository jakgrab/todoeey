import 'package:jwt_decoder/jwt_decoder.dart';

import '../../data/hive_daos/note/notes_dao_interface.dart';
import '../../data/hive_daos/user/user_dao_interface.dart';
import '../../models/note/note.dart';
import '../../models/note_from_api/note_from_api.dart';
import '../../services/note/note_service.dart';
import '../../services/shared_preferences/shared_preferences_service_interface.dart';
import 'note_repository_interface.dart';

class NoteRepository implements NoteRepositoryInterface {
  NoteRepository(
    this._notesDao,
    this._noteService,
    this._sharedPreferencesService,
    this._userDao,
  );

  final NotesDaoInterface _notesDao;
  final NoteService _noteService;
  final SharedPreferencesServiceInterface _sharedPreferencesService;
  final UserDaoInterface _userDao;

  @override
  Stream<List<Note>?> getNotes(String userId) async* {
    final allNotes = await _notesDao.getAllUserNotes(userId);

    yield allNotes;

    final token = await _getAccessToken();
    if (token == null) return;

    final noteResponsesFromApi = await _noteService.getAllNotes(authorization: 'Bearer $token');

    final notes =
        noteResponsesFromApi?.map((noteResponse) => Note.fromNoteResponse(noteResponse)).toList();

    await _notesDao.putMany(userId, notes);

    yield notes;
  }

  @override
  Future<Note?> saveNote(String userId, Note note) async {
    try {
      final token = await _getAccessToken();
      if (token == null) return null;

      final noteFromApi = NoteFromApi.fromNote(note);

      final noteFromApiWithId = await _noteService.createNote(
        authorization: 'Bearer $token',
        note: noteFromApi,
      );

      if (noteFromApiWithId == null) return null;

      final noteWithAddedId = note.copyWith(
        id: noteFromApiWithId.id,
      );

      await _notesDao.putNote(userId, noteWithAddedId);
      return noteWithAddedId;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> updateNote(String userId, Note note) async {
    try {
      final token = await _getAccessToken();
      if (token == null) return;

      if (note.id == null) return;

      final noteFromApiWithId = await _noteService.changeNoteCompleteStatus(
        authorization: 'Bearer $token',
        id: note.id!,
      );

      if (noteFromApiWithId == null) return;

      await _notesDao.updateNote(userId, note);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> deleteNote(String userId, Note note) async {
    try {
      final token = await _getAccessToken();
      if (token == null) return;

      if (note.id == null) return;

      await _noteService.deleteNote(
        authorization: 'Bearer $token',
        id: note.id!,
      );

      await _notesDao.deleteNote(userId, note);
    } catch (e) {
      rethrow;
    }
  }

  Future<String?> _getAccessToken() async {
    final accessToken = await _sharedPreferencesService.getToken();

    if (accessToken != null) {
      final now = DateTime.now();
      final isTokenValid = now.isBefore(JwtDecoder.getExpirationDate(accessToken));

      if (isTokenValid) {
        return accessToken;
      }
    }

    final userCredentials = await _userDao.getCredentials();
    if (userCredentials == null) return null;

    final token = await _noteService.getToken(userCredentials);
    if (token == null || token.access == null) return null;

    await _sharedPreferencesService.putToken(token.access!);

    return token.access;
  }
}
