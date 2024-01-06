import 'package:flutter_modular/flutter_modular.dart';
import 'package:todoeey/common/constants/route_paths.dart';
import 'package:todoeey/features/dashboard/dashboard_module.dart';
import 'package:todoeey/features/login/login_module.dart';

class AppModule extends Module {
  @override
  void routes(RouteManager r) {
    r.module(
      RoutePaths.loginModule,
      module: LoginModule(),
      transition: TransitionType.noTransition,
    );
    r.module(
      RoutePaths.dashboardModule,
      module: DashboardModule(),
      transition: TransitionType.noTransition,
    );
  }
}
