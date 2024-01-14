import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';

import '../../../../common/formz_validators/email_input.dart';
import '../../../../common/formz_validators/password_input.dart';
import 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit() : super(const SignUpState());

  void onEmailChanged(String? emailAddress) {
    if (emailAddress == null) return;

    final emailInput = EmailInput.dirty(value: emailAddress);

    emit(state.copyWith(emailInput: emailInput));

    _validateForms();
  }

  void onPasswordChanged(String? password) {
    if (password == null) return;
    final passwordInput = PasswordInput.dirty(value: password);

    emit(state.copyWith(passwordInput: passwordInput));

    _validateForms();
  }

  void onRepeatedPasswordChanged(String? password) {
    if (password == null) return;
    final repeatedPasswordInput = PasswordInput.dirty(value: password);

    emit(state.copyWith(repeatedPasswordInput: repeatedPasswordInput));

    _validateForms();
  }

  void _validateForms() {
    final areFormsValid = Formz.validate([
      state.emailInput,
      state.passwordInput,
      state.repeatedPasswordInput,
    ]);

    emit(state.copyWith(areFormsValid: areFormsValid));
  }

  Future<void> arePasswordsTheSame() async {
    final arePasswordsTheSame = state.passwordInput.value == state.repeatedPasswordInput.value;

    emit(state.copyWith(arePasswordsTheSame: arePasswordsTheSame));
    print("Login - check - arePasswords the same: ${state.arePasswordsTheSame}");
  }

  Future<void> signUp() async {
    emit(state.copyWith(formzSubmissionStatus: FormzSubmissionStatus.inProgress));

    print("Login - signUp - arePasswords the same: ${state.arePasswordsTheSame}");

    if (state.arePasswordsTheSame != true) {
      emit(state.copyWith(formzSubmissionStatus: FormzSubmissionStatus.failure));

      return;
    }

    await Future.delayed(const Duration(milliseconds: 1500));

    emit(state.copyWith(formzSubmissionStatus: FormzSubmissionStatus.success));
  }
}
