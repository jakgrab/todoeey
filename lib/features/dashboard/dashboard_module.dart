import 'package:flutter_modular/flutter_modular.dart';

import 'dashboard_screen/cubit/dashboard_cubit.dart';
import 'dashboard_screen/dashboard_screen.dart';

class DashboardModule extends Module {
  @override
  void binds(Injector i) {
    i.addLazySingleton<DashboardCubit>(DashboardCubit.new);
  }

  @override
  void routes(RouteManager r) {
    r.child('/', child: (context) => const DashboardScreen());
  }
}
