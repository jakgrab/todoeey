import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:todoeey/common/constants/app_colors.dart';
import 'package:todoeey/common/constants/route_paths.dart';
import 'package:todoeey/common/extensions/navigation/navigation_extension.dart';
import 'package:todoeey/common/text_styles/todoeey_text_styles.dart';
import 'package:todoeey/common/widgets/todoeey_button.dart';
import 'package:todoeey/features/login/sign_up_screen/sign_up_screen.dart';

import '../widgets/todoeey_text_field.dart';

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
                const SizedBox(height: 45),
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
                TodoeeyTextField(
                  labelText: "Email",
                  keyboardType: TextInputType.emailAddress,
                  // errorMessage: "wrong",
                  onChanged: (value) {},
                ),
                const SizedBox(height: 45),
                TodoeeyTextField(
                  labelText: "Password",
                  keyboardType: TextInputType.emailAddress,
                  // errorMessage: "wrong",
                  isPassword: true,
                  onChanged: (value) {},
                ),
                const SizedBox(height: 55),
                TodoeeyButton(
                  text: "Log In ",
                  onClick: () => Modular.to.pushNamed(RoutePaths.dashboardModule.modulePath),
                ),
                const SizedBox(height: 25),
                TodoeeyButton(
                  text: "Sign Up",
                  color: AppColors.secondaryGrey,
                  onClick: () => Modular.to.pushNamed(SignUpScreen.path.relativePath),
                ),
                const SizedBox(height: 55),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
