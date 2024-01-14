import 'package:shared_preferences/shared_preferences.dart';

import 'shared_preferences_service_interface.dart';

class SharedPreferencesService implements SharedPreferencesServiceInterface {
  Future<SharedPreferences> get sharedpreferencesInstance async =>
      await SharedPreferences.getInstance();

  @override
  Future<bool> getBoolean(String key, {bool defaultValue = false}) async {
    final sharedPreferences = await sharedpreferencesInstance;
    final value = sharedPreferences.getBool(key);
    return value ?? defaultValue;
  }

  @override
  Future<void> putBoolean(String key, {required bool value}) async {
    final sharedPreferences = await sharedpreferencesInstance;
    await sharedPreferences.setBool(key, value);
  }
}
