import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../common/formz_validators/email_input.dart';
import '../../../../common/formz_validators/password_input.dart';

part 'sign_up_state.freezed.dart';

@freezed
class SignUpState with _$SignUpState {
  const factory SignUpState({
    @Default(EmailInput.pure()) EmailInput emailInput,
    @Default(PasswordInput.pure()) PasswordInput passwordInput,
    @Default(PasswordInput.pure()) PasswordInput repeatedPasswordInput,
    @Default(false) bool areFormsValid,
    @Default(true) bool arePasswordsTheSame,
    @Default(FormzSubmissionStatus.initial) FormzSubmissionStatus formzSubmissionStatus,
  }) = _SignUpState;
}
