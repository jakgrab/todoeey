import 'package:hive/hive.dart';

import '../../../models/user_credentials/user_credentials.dart';

part 'user_credentials_entity.g.dart';

@HiveType(typeId: 3)
class UserCredentialsEntity extends HiveObject {
  UserCredentialsEntity({
    this.email,
    this.password,
  });

  @HiveField(0)
  String? email;

  @HiveField(1)
  String? password;

  static UserCredentialsEntity fromUserCredentials(UserCredentials userCredentials) {
    return UserCredentialsEntity(
      email: userCredentials.email,
      password: userCredentials.password,
    );
  }
}
