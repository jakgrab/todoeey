abstract interface class SharedPreferencesServiceInterface {
  Future<String?> getToken();
  Future<void> putToken(String token);
  Future<void> deleteToken();
}
