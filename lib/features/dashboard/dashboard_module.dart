import 'package:flutter_modular/flutter_modular.dart';

import '../../data/data_module.dart';
import '../../repositories/repositories_module.dart';
import 'dashboard_screen/cubit/dashboard_cubit.dart';
import 'dashboard_screen/dashboard_screen.dart';

class DashboardModule extends Module {
  @override
  List<Module> get imports => [
        DataModule(),
        RepositoriesModule(),
      ];

  @override
  void binds(Injector i) {
    i.addLazySingleton<DashboardCubit>(DashboardCubit.new);
  }

  @override
  void routes(RouteManager r) {
    r.child('/', child: (context) => const DashboardScreen());
  }
}
