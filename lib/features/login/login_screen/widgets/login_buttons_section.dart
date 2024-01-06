import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart' hide ModularWatchExtension;
import 'package:formz/formz.dart';

import '../../../../common/constants/app_colors.dart';
import '../../../../common/constants/route_paths.dart';
import '../../../../common/extensions/navigation/navigation_extension.dart';
import '../../../../common/widgets/todoeey_button.dart';
import '../../sign_up_screen/sign_up_screen.dart';
import '../cubit/login_cubit.dart';

class LoginButtonsSection extends StatelessWidget {
  const LoginButtonsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final areFormsValid = context.select((LoginCubit cubit) => cubit.state.areFormsValid);
    final formzSubmissionStatus = context.select(
      (LoginCubit cubit) => cubit.state.formzSubmissionStatus,
    );

    return Column(
      children: [
        TodoeeyButton(
          text: "Log In",
          isLoading: formzSubmissionStatus == FormzSubmissionStatus.inProgress,
          onClick: areFormsValid
              ? () async {
                  await context.read<LoginCubit>().logIn();
                  Modular.to.pushNamed(RoutePaths.dashboardModule.modulePath);
                }
              : null,
        ),
        const SizedBox(height: 25),
        TodoeeyButton(
          text: "Sign Up",
          color: AppColors.secondaryGrey,
          onClick: () => Modular.to.pushNamed(SignUpScreen.path.relativePath),
        )
      ],
    );
  }
}
