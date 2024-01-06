import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'cubit/login_cubit.dart';
import 'login_view.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  static const path = '/login/';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => Modular.get<LoginCubit>(),
      child: const LoginView(),
    );
  }
}
