import 'package:hive/hive.dart';

import '../../../common/constants/constants.dart';
import '../../../models/user_credentials/user_credentials.dart';
import '../../hive_entities/user_credentials/user_credentials_entity.dart';
import 'user_dao_interface.dart';

class UserDao implements UserDaoInterface {
  @override
  Future<void> deleteCredentials() async {
    final credentialsBox = await Hive.openBox<UserCredentialsEntity>(Constants.credentialsBox);

    await credentialsBox.clear();
  }

  @override
  Future<UserCredentials?> getCredentials() async {
    final credentialsBox = await Hive.openBox<UserCredentialsEntity>(Constants.credentialsBox);

    final userCredentialsEntity = credentialsBox.get(Constants.credentialsBoxKey);

    if (userCredentialsEntity == null) {
      return null;
    }

    final userCredentials = UserCredentials.fromUserCredentialsEntity(userCredentialsEntity);

    return userCredentials;
  }

  @override
  Future<void> saveCredentials(UserCredentials userCredentials) async {
    final credentialsBox = await Hive.openBox<UserCredentialsEntity>(Constants.credentialsBox);

    final userCredentialsEntity = UserCredentialsEntity.fromUserCredentials(userCredentials);

    await credentialsBox.put(
      Constants.credentialsBoxKey,
      userCredentialsEntity,
    );
  }
}
