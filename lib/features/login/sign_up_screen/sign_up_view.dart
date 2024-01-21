import 'package:flutter/material.dart';
import '../../../common/text_styles/todoeey_text_styles.dart';
import '../../../common/widgets/simple_app_bar.dart';

import 'widgets/sign_up_button_section.dart';
import 'widgets/sign_up_form_section.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const SimpleAppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Sign Up",
                      style: TodoeeyTextStyle.h1(),
                    ),
                  ],
                ),
                const SizedBox(height: 45),
                const SignUpFormSection(),
                const SizedBox(height: 55),
                const SignUpButtonSection()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
