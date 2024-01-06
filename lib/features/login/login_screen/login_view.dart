import 'package:flutter/material.dart';
import '../../../common/text_styles/todoeey_text_styles.dart';

import 'widgets/login_buttons_section.dart';
import 'widgets/login_form_section.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 84),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Login",
                      style: TodoeeyTextStyle.h1(),
                    ),
                  ],
                ),
                const SizedBox(height: 45),
                const LoginFormSection(),
                const SizedBox(height: 55),
                const LoginButtonsSection(),
                const SizedBox(height: 55),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
