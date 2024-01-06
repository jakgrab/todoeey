import 'package:flutter/material.dart';
import 'package:todoeey/features/login/sign_up_screen/sign_up_view.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  static const path = '/signup-screen/';

  @override
  Widget build(BuildContext context) {
    return const SignUpView();
  }
}
