import 'package:flutter_modular/flutter_modular.dart';

import '../data/data_module.dart';
import 'note/note_service.dart';
import 'shared_preferences/shared_preferences_service.dart';
import 'shared_preferences/shared_preferences_service_interface.dart';

class ServicesModule extends Module {
  @override
  List<Module> get imports => [
        DataModule(),
      ];

  @override
  void exportedBinds(Injector i) {
    i.addSingleton<SharedPreferencesServiceInterface>(SharedPreferencesService.new);
    i.addSingleton<NoteService>(NoteService.new);
    super.exportedBinds(i);
  }
}
