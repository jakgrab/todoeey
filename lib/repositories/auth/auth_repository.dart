import 'dart:async';

import 'package:flutter_modular/flutter_modular.dart';

import '../../common/enums/login_status.dart';
import '../../common/exceptions/exceptions.dart';
import '../../data/hive_daos/user/user_dao_interface.dart';
import '../../models/user_credentials/user_credentials.dart';
import '../../services/note/note_service.dart';
import '../../services/shared_preferences/shared_preferences_service_interface.dart';
import 'auth_repository_interface.dart';

class AuthRepository implements AuthRepositoryInterface, Disposable {
  AuthRepository(
    this._sharedPreferencesService,
    this._noteService,
    this._userDao,
  );

  final SharedPreferencesServiceInterface _sharedPreferencesService;
  final NoteService _noteService;
  final UserDaoInterface _userDao;

  final StreamController<LoginStatus> _loginStatusStreamController = StreamController.broadcast();

  @override
  Future<void> logIn(String email, String password) async {
    try {
      final credentials = UserCredentials(
        email: email,
        password: password,
      );

      final tokenResponse = await _noteService.getToken(credentials);

      if (tokenResponse == null || tokenResponse.access == null) {
        throw AccessTokenIsNullException();
      }

      await _userDao.saveCredentials(credentials);
      await _sharedPreferencesService.putToken(tokenResponse.access!);

      _loginStatusStreamController.add(LoginStatus.loggedIn);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> signOut() async {
    await _sharedPreferencesService.deleteToken();
    await _userDao.deleteCredentials();

    _loginStatusStreamController.add(LoginStatus.loggedOut);
  }

  @override
  Future<void> signUp(String email, String password) async {
    try {
      final userCredentials = UserCredentials(
        email: email,
        password: password,
      );
      final hashedCredentials = await _noteService.createUser(
        credentials: userCredentials,
      );

      if (hashedCredentials == null) {
        throw AccessTokenIsNullException();
      }

      final tokenResponse = await _noteService.getToken(userCredentials);

      if (tokenResponse == null || tokenResponse.access == null) {
        throw AccessTokenIsNullException();
      }
      await _userDao.saveCredentials(userCredentials);

      await _sharedPreferencesService.putToken(
        tokenResponse.access!,
      );

      _loginStatusStreamController.add(LoginStatus.loggedIn);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Stream<LoginStatus> get loginStatusStream => _loginStatusStreamController.stream;

  @override
  void dispose() {
    _loginStatusStreamController.close();
  }

  @override
  Future<bool> get isUserLoggedIn async => await _sharedPreferencesService.getToken() != null;
}
