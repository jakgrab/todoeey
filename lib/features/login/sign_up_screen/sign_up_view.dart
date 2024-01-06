import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:todoeey/common/constants/route_paths.dart';
import 'package:todoeey/common/text_styles/todoeey_text_styles.dart';
import 'package:todoeey/common/widgets/todoeey_app_bar.dart';
import 'package:todoeey/common/widgets/todoeey_button.dart';

import '../widgets/todoeey_text_field.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TodoeeyAppBar(showSimplifiedVersion: true),
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
                TodoeeyTextField(
                  labelText: "Email",
                  keyboardType: TextInputType.emailAddress,
                  // errorMessage: "wrong",
                  onChanged: (value) {},
                ),
                const SizedBox(height: 35),
                TodoeeyTextField(
                  labelText: "Password",
                  keyboardType: TextInputType.emailAddress,
                  // errorMessage: "wrong",
                  isPassword: true,
                  onChanged: (value) {},
                ),
                const SizedBox(height: 35),
                TodoeeyTextField(
                  labelText: "Repeated Password",
                  keyboardType: TextInputType.emailAddress,
                  // errorMessage: "wrong",
                  isPassword: true,
                  onChanged: (value) {},
                ),
                const SizedBox(height: 55),
                TodoeeyButton(
                  text: "Sign Up",
                  onClick: () => Modular.to.pushNamed(RoutePaths.dashboardModule),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
