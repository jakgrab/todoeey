import '../../common/enums/login_status.dart';

abstract interface class AuthRepositoryInterface {
  Future<void> signUp(String email, String password);
  Future<void> logIn(String email, String password);
  Future<void> signOut();
  Stream<LoginStatus> get loginStatusStream;
  Future<bool> get isUserLoggedIn;
}
