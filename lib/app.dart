import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'common/constants/app_colors.dart';

import 'common/auth/cubit/auth_cubit.dart';
import 'common/auth/cubit/auth_state.dart';
import 'common/constants/route_paths.dart';
import 'common/enums/login_status.dart';
import 'config/localization_config.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Todoeey',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: AppColors.background,
      ),
      localizationsDelegates: localizationsDelegates,
      supportedLocales: supportedLocales,
      routerConfig: Modular.routerConfig,
      builder: (context, child) => BlocListener<AuthCubit, AuthState>(
        bloc: Modular.get<AuthCubit>(),
        listener: onAuthStateChanged,
        child: child,
      ),
    );
  }

  void onAuthStateChanged(BuildContext context, AuthState authState) =>
      switch (authState.loginStatus) {
        LoginStatus.loggedIn => Modular.to.navigate(RoutePaths.dashboardModule),
        LoginStatus.loggedOut => Modular.to.navigate(RoutePaths.loginModule),
        _ => Modular.to.navigate(RoutePaths.loginModule),
      };
}
