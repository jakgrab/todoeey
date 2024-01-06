import 'package:flutter/material.dart';

import '../extensions/localizations/localization_extension.dart';
import '../formz_validators/email_input.dart';

import '../formz_validators/password_input.dart';

class TextFieldHelper {
  static String? getPasswordErrorMessage(
    BuildContext context, {
    PasswordInputError? error,
    bool? arePasswordsTheSame,
    bool? areCredentialsCorrect,
  }) {
    if (areCredentialsCorrect == false) {
      return context.localizations.loginFormCredentialsNotValidErrorMessage;
    }
    if (arePasswordsTheSame == false) {
      return context.localizations.signUpPasswordsNotTheSameErrorMessage;
    }

    return switch (error) {
      PasswordInputError.empty => context.localizations.signUpPasswordFormEmptyErrorMessage,
      PasswordInputError.tooShort => context.localizations.signUpPasswordFormTooShortErrorMessage,
      _ => null,
    };
  }

  static String? getEmailErrorMessage(
    BuildContext context, {
    EmailInputError? error,
    bool? areCredentialsCorrect,
  }) {
    if (areCredentialsCorrect == false) {
      return context.localizations.loginFormCredentialsNotValidErrorMessage;
    }

    return switch (error) {
      EmailInputError.empty => context.localizations.signUpEmailFormEmptyErrorMessage,
      EmailInputError.invalid => context.localizations.notValidEmail,
      _ => null,
    };
  }
}
