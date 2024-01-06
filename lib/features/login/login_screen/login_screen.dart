import 'package:flutter/material.dart';
import 'package:todoeey/features/login/login_screen/login_view.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  static const path = '/login/';

  @override
  Widget build(BuildContext context) {
    return const LoginView();
  }
}
