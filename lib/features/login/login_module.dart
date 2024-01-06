import 'package:flutter_modular/flutter_modular.dart';
import 'package:todoeey/features/login/login_screen/login_screen.dart';
import 'package:todoeey/features/login/sign_up_screen/sign_up_screen.dart';

class LoginModule extends Module {
  @override
  void routes(RouteManager r) {
    r.child(
      '/',
      child: (context) => const LoginScreen(),
      transition: TransitionType.rightToLeft,
    );
    r.child(
      '/',
      child: (context) => const SignUpScreen(),
      transition: TransitionType.rightToLeft,
    );
  }
}
