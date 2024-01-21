import '../../../models/user_credentials/user_credentials.dart';

abstract interface class UserDaoInterface {
  Future<void> saveCredentials(UserCredentials userCredentials);
  Future<UserCredentials?> getCredentials();
  Future<void> deleteCredentials();
}
