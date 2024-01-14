import 'package:flutter_modular/flutter_modular.dart';

import 'shared_preferences/shared_preferences_service.dart';
import 'shared_preferences/shared_preferences_service_interface.dart';

class ServicesModule extends Module {
  @override
  List<Module> get imports => [
        // TODO: add Data module with datenbase and api client here
      ];

  @override
  void exportedBinds(Injector i) {
    i.addSingleton<SharedPreferencesServiceInterface>(SharedPreferencesService.new);
    super.exportedBinds(i);
  }
}
