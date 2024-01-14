abstract interface class SharedPreferencesServiceInterface {
  Future<void> putBoolean(String key, {required bool value});
  Future<bool> getBoolean(String key, {bool defaultValue = false});
}
