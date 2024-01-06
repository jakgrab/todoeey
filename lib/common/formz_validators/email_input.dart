import 'package:formz/formz.dart';

import '../constants/constants.dart';

enum EmailInputError { empty, invalid }

class EmailInput extends FormzInput<String, EmailInputError> {
  const EmailInput.pure() : super.pure('');

  const EmailInput.dirty({String value = ''}) : super.dirty(value);

  @override
  EmailInputError? validator(String value) {
    final regex = RegExp(Constants.emailPattern);

    if (value.isEmpty) {
      return EmailInputError.empty;
    } else if (!regex.hasMatch(value)) {
      return EmailInputError.invalid;
    }
    return null;
  }
}
