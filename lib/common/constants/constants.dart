abstract class Constants {
  static const emailPattern =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
  static const passwordLength = 8;
  static const notesBox = 'NOTES_BOX';
  static const credentialsBox = 'CREDENTIALS_BOX';
  static const credentialsBoxKey = 'CREDENTIALS_KEY';
  static const baseUrl = 'http://127.0.0.1:8000/';
}
