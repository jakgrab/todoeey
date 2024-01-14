import 'package:flutter_modular/flutter_modular.dart';
import 'login_screen/cubit/login_cubit.dart';
import 'login_screen/login_screen.dart';
import 'sign_up_screen/cubit/sign_up_cubit.dart';
import 'sign_up_screen/sign_up_screen.dart';

class LoginModule extends Module {
  @override
  void binds(Injector i) {
    i.add<LoginCubit>(LoginCubit.new);
    i.add<SignUpCubit>(SignUpCubit.new);
  }

  @override
  void routes(RouteManager r) {
    r.child(
      '/',
      child: (context) => const LoginScreen(),
      transition: TransitionType.rightToLeft,
    );
    r.child(
      SignUpScreen.path,
      child: (context) => const SignUpScreen(),
      transition: TransitionType.rightToLeft,
    );
  }
}
