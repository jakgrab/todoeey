import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/hive_entities/user_credentials/user_credentials_entity.dart';

part 'user_credentials.freezed.dart';
part 'user_credentials.g.dart';

@freezed
class UserCredentials with _$UserCredentials {
  factory UserCredentials({
    String? email,
    String? password,
  }) = _UserCredentials;

  factory UserCredentials.fromJson(Map<String, dynamic> json) => _$UserCredentialsFromJson(json);

  static UserCredentials fromUserCredentialsEntity(UserCredentialsEntity userCredentials) {
    return UserCredentials(
      email: userCredentials.email,
      password: userCredentials.password,
    );
  }
}
