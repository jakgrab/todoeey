import 'package:flutter_modular/flutter_modular.dart';
import 'package:todoeey/features/dashboard/dashboard_screen/dashboard_screen.dart';

class DashboardModule extends Module {
  @override
  void routes(RouteManager r) {
    r.child('/', child: (context) => const DashboardScreen());
  }
}
