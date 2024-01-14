import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'sign_up_view.dart';

import 'cubit/sign_up_cubit.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  static const path = '/signup-screen/';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => Modular.get<SignUpCubit>(),
      child: const SignUpView(),
    );
  }
}
