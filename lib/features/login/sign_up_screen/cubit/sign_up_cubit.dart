import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';

import '../../../../common/formz_validators/email_input.dart';
import '../../../../common/formz_validators/password_input.dart';
import '../../../../repositories/auth/auth_repository_interface.dart';
import 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit(
    this._authRepository,
  ) : super(const SignUpState());

  final AuthRepositoryInterface _authRepository;

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

  void _arePasswordsTheSame() {
    final arePasswordsTheSame = state.passwordInput.value == state.repeatedPasswordInput.value;

    emit(state.copyWith(arePasswordsTheSame: arePasswordsTheSame));
  }

  Future<void> signUp() async {
    emit(state.copyWith(formzSubmissionStatus: FormzSubmissionStatus.inProgress));
    _arePasswordsTheSame();

    if (state.arePasswordsTheSame != true) {
      emit(state.copyWith(formzSubmissionStatus: FormzSubmissionStatus.failure));
      return;
    }

    final email = state.emailInput.value;
    final password = state.passwordInput.value;

    if (email.isEmpty || password.isEmpty) {
      emit(state.copyWith(formzSubmissionStatus: FormzSubmissionStatus.failure));
      return;
    }
    try {
      await _authRepository.signUp(email, password);
    } catch (e) {
      return;
    }
  }
}
