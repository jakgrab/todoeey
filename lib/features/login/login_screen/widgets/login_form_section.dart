import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../common/text_field_helper/text_field_helper.dart';
import '../../widgets/todoeey_text_field.dart';
import '../cubit/login_cubit.dart';

class LoginFormSection extends StatelessWidget {
  const LoginFormSection({super.key});

  @override
  Widget build(BuildContext context) {
    final emailDisplayError =
        context.select((LoginCubit cubit) => cubit.state.emailInput.displayError);
    final passwordDisplayError =
        context.select((LoginCubit cubit) => cubit.state.passwordInput.displayError);

    return Column(
      children: [
        TodoeeyTextField(
          labelText: "Email",
          keyboardType: TextInputType.emailAddress,
          onChanged: context.read<LoginCubit>().onEmailChanged,
          errorMessage: TextFieldHelper.getEmailErrorMessage(
            context,
            error: emailDisplayError,
          ),
        ),
        const SizedBox(height: 45),
        TodoeeyTextField(
          labelText: "Password",
          keyboardType: TextInputType.emailAddress,
          errorMessage: TextFieldHelper.getPasswordErrorMessage(
            context,
            error: passwordDisplayError,
          ),
          isPassword: true,
          onChanged: context.read<LoginCubit>().onPasswordChanged,
        ),
      ],
    );
  }
}
