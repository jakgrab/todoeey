import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/http.dart';

import '../../data/network/api_client.dart';
import '../../models/note_from_api/note_from_api.dart';
import '../../models/note_from_api_with_id/note_from_api_with_id.dart';
import '../../models/note_response/note_response.dart';
import '../../models/token_response/token_response.dart';
import '../../models/user_credentials/user_credentials.dart';

part 'note_service.g.dart';

@RestApi()
abstract class NoteService {
  factory NoteService(ApiClient dio, {String? baseUrl}) {
    return _NoteService(dio.client);
  }

  @GET(
    '/api/tasks/',
  )
  Future<List<NoteResponse>?> getAllNotes({
    @Header('Content-Type') String contentType = 'application/json',
    @Header('Authorization') required String authorization,
  });

  @POST('/api/tasks/create/')
  Future<NoteFromApiWithId?> createNote({
    @Header('Content-Type') String contentType = 'application/json',
    @Header('Authorization') required String authorization,
    @Body() required NoteFromApi note,
  });

  @GET(
    '/api/tasks/{id}/toggle-complete',
  )
  Future<NoteResponse?> changeNoteCompleteStatus({
    @Header('Content-Type') String contentType = 'application/json',
    @Header('Authorization') required String authorization,
    @Path() required int id,
  });

  @DELETE(
    '/api/tasks/{id}',
  )
  Future<void> deleteNote({
    @Header('Content-Type') String contentType = 'application/json',
    @Header('Authorization') required String authorization,
    @Path() required int id,
  });

  @POST(
    '/api/token/',
  )
  Future<TokenResponse?> getToken(
    @Body() UserCredentials credentials,
  );

  @POST(
    '/api/users/create/',
  )
  Future<UserCredentials?> createUser({
    @Body() required UserCredentials credentials,
  });
}
