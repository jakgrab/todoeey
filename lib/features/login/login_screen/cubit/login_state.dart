import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todoeey/common/formz_validators/password_input.dart';

import '../../../../common/formz_validators/email_input.dart';

part 'login_state.freezed.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    @Default(EmailInput.pure()) EmailInput emailInput,
    @Default(PasswordInput.pure()) PasswordInput passwordInput,
    @Default(false) bool areFormsValid,
    @Default(FormzSubmissionStatus.initial) FormzSubmissionStatus formzSubmissionStatus,
  }) = _LoginState;
}
