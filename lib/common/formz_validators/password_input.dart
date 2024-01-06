import 'package:formz/formz.dart';
import 'package:todoeey/common/constants/constants.dart';

enum PasswordInputError { empty, tooShort }

class PasswordInput extends FormzInput<String, PasswordInputError> {
  const PasswordInput.pure() : super.pure('');

  const PasswordInput.dirty({String value = ''}) : super.dirty(value);

  @override
  PasswordInputError? validator(String value) {
    if (value.isEmpty) {
      return PasswordInputError.empty;
    } else if (value.length < Constants.passwordLength) {
      return PasswordInputError.tooShort;
    }
    return null;
  }
}
