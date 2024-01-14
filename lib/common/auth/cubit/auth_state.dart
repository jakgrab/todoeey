import 'package:freezed_annotation/freezed_annotation.dart';

import '../../enums/login_status.dart';

part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  factory AuthState({LoginStatus? loginStatus}) = _AuthState;
}
