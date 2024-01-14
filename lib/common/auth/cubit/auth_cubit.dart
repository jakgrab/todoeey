import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../repositories/auth/auth_repository_interface.dart';
import '../../enums/login_status.dart';
import 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit(this._authRepository) : super(AuthState()) {
    _loginStatusStreamSubscription = _authRepository.loginStatusStream.listen((loginStatus) {
      emit(state.copyWith(loginStatus: loginStatus));
    });
  }

  final AuthRepositoryInterface _authRepository;
  late StreamSubscription _loginStatusStreamSubscription;

  void init() async {
    final isUserLoggedIn = await _authRepository.isUserLoggedIn;
    final userStatus = isUserLoggedIn ? LoginStatus.loggedIn : LoginStatus.loggedOut;

    emit(state.copyWith(loginStatus: userStatus));
  }

  @override
  Future<void> close() {
    _loginStatusStreamSubscription.cancel();
    return super.close();
  }
}
