import 'dart:async';

import 'package:flutter_modular/flutter_modular.dart';

import '../../common/constants/shared_preferences_keys.dart';
import '../../common/enums/login_status.dart';
import '../../services/shared_preferences/shared_preferences_service_interface.dart';
import 'auth_repository_interface.dart';

class AuthRepository implements AuthRepositoryInterface, Disposable {
  AuthRepository(this._sharedPreferencesService);

  final SharedPreferencesServiceInterface _sharedPreferencesService;

  final StreamController<LoginStatus> _loginStatusStreamController = StreamController.broadcast();

  @override
  Future<void> logIn(String email, String password) async {
    // TODO: add login logic here
    await _sharedPreferencesService.putBoolean(SharedPreferencesKeys.isUserLoggedIn, value: true);

    _loginStatusStreamController.add(LoginStatus.loggedIn);
  }

  @override
  Future<void> signOut() async {
    // TODO: add sign out logic here
    await _sharedPreferencesService.putBoolean(SharedPreferencesKeys.isUserLoggedIn, value: false);

    _loginStatusStreamController.add(LoginStatus.loggedOut);
  }

  @override
  Future<void> signUp(String email, String password) async {
    await _sharedPreferencesService.putBoolean(SharedPreferencesKeys.isUserLoggedIn, value: true);

    _loginStatusStreamController.add(LoginStatus.loggedIn);
  }

  @override
  Stream<LoginStatus> get loginStatusStream => _loginStatusStreamController.stream;

  @override
  void dispose() {
    _loginStatusStreamController.close();
  }

  @override
  Future<bool> get isUserLoggedIn async =>
      await _sharedPreferencesService.getBoolean(SharedPreferencesKeys.isUserLoggedIn);
}
