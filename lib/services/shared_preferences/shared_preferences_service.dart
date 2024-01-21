import 'package:shared_preferences/shared_preferences.dart';

import '../../common/constants/shared_preferences_keys.dart';
import 'shared_preferences_service_interface.dart';

class SharedPreferencesService implements SharedPreferencesServiceInterface {
  Future<SharedPreferences> get sharedpreferencesInstance async =>
      await SharedPreferences.getInstance();

  @override
  Future<String?> getToken() async {
    final sharedPreferences = await sharedpreferencesInstance;
    final value = sharedPreferences.getString(SharedPreferencesKeys.userToken);
    return value;
  }

  @override
  Future<void> putToken(String token) async {
    final sharedPreferences = await sharedpreferencesInstance;
    await sharedPreferences.setString(SharedPreferencesKeys.userToken, token);
  }

  @override
  Future<void> deleteToken() async {
    final sharedPreferences = await sharedpreferencesInstance;

    await sharedPreferences.clear();
  }
}
