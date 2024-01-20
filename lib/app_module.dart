import 'package:flutter_modular/flutter_modular.dart';
import 'common/auth/cubit/auth_cubit.dart';
import 'common/constants/route_paths.dart';
import 'data/data_module.dart';
import 'features/dashboard/dashboard_module.dart';
import 'features/login/login_module.dart';
import 'repositories/repositories_module.dart';

class AppModule extends Module {
  @override
  void binds(Injector i) {
    i.add(AuthCubit.new);
    super.binds(i);
  }

  @override
  List<Module> get imports => [
        RepositoriesModule(),
        DataModule(),
      ];

  @override
  void routes(RouteManager r) {
    r.module(
      RoutePaths.loginModule,
      module: LoginModule(),
      transition: TransitionType.rightToLeft,
    );
    r.module(
      RoutePaths.dashboardModule,
      module: DashboardModule(),
      transition: TransitionType.rightToLeft,
    );
  }
}
