import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../common/text_field_helper/text_field_helper.dart';
import '../../widgets/todoeey_text_field.dart';
import '../cubit/sign_up_cubit.dart';

class SignUpFormSection extends StatelessWidget {
  const SignUpFormSection({super.key});

  @override
  Widget build(BuildContext context) {
    final emailDisplayError =
        context.select((SignUpCubit cubit) => cubit.state.emailInput.displayError);
    final passwordDisplayError =
        context.select((SignUpCubit cubit) => cubit.state.passwordInput.displayError);

    final repeatedPasswordDisplayError =
        context.select((SignUpCubit cubit) => cubit.state.repeatedPasswordInput.displayError);

    final arePasswordsTheSame =
        context.select((SignUpCubit cubit) => cubit.state.arePasswordsTheSame);

    return Column(
      children: [
        TodoeeyTextField(
          labelText: "Email",
          keyboardType: TextInputType.emailAddress,
          onChanged: context.read<SignUpCubit>().onEmailChanged,
          errorMessage: TextFieldHelper.getEmailErrorMessage(
            context,
            error: emailDisplayError,
          ),
        ),
        const SizedBox(height: 35),
        TodoeeyTextField(
          labelText: "Password",
          keyboardType: TextInputType.emailAddress,
          isPassword: true,
          onChanged: context.read<SignUpCubit>().onPasswordChanged,
          errorMessage: TextFieldHelper.getPasswordErrorMessage(
            context,
            error: passwordDisplayError,
            arePasswordsTheSame: arePasswordsTheSame,
          ),
        ),
        const SizedBox(height: 35),
        TodoeeyTextField(
          labelText: "Repeated Password",
          keyboardType: TextInputType.emailAddress,
          isPassword: true,
          onChanged: context.read<SignUpCubit>().onRepeatedPasswordChanged,
          errorMessage: TextFieldHelper.getPasswordErrorMessage(
            context,
            error: repeatedPasswordDisplayError,
            arePasswordsTheSame: arePasswordsTheSame,
          ),
        ),
      ],
    );
  }
}
