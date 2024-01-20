import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart' hide ModularWatchExtension;
import 'package:formz/formz.dart';

import '../../../../common/constants/route_paths.dart';
import '../../../../common/widgets/todoeey_button.dart';
import '../cubit/sign_up_cubit.dart';

class SignUpButtonSection extends StatelessWidget {
  const SignUpButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    final areFormsValid = context.select((SignUpCubit cubit) => cubit.state.areFormsValid);
    final formzSubmissionStatus =
        context.select((SignUpCubit cubit) => cubit.state.formzSubmissionStatus);

    return TodoeeyButton(
      text: "Sign Up",
      isLoading: formzSubmissionStatus == FormzSubmissionStatus.inProgress,
      onClick: areFormsValid
          ? () async {
              await context.read<SignUpCubit>().signUp();

              // Modular.to.pushNamed(RoutePaths.dashboardModule);
            }
          : null,
    );
  }
}
