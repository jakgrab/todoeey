import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';

import '../../../../common/formz_validators/email_input.dart';
import '../../../../common/formz_validators/password_input.dart';
import 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(const LoginState());

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

  void _validateForms() {
    final areFormsValid = Formz.validate([state.emailInput, state.passwordInput]);

    emit(state.copyWith(areFormsValid: areFormsValid));
  }

  Future<void> logIn() async {
    emit(state.copyWith(formzSubmissionStatus: FormzSubmissionStatus.inProgress));

    await Future.delayed(const Duration(milliseconds: 1500));

    emit(state.copyWith(formzSubmissionStatus: FormzSubmissionStatus.success));
  }
}
