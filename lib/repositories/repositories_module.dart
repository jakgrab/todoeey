import 'package:flutter_modular/flutter_modular.dart';

import '../data/data_module.dart';
import '../services/services_module.dart';
import 'auth/auth_repository.dart';
import 'auth/auth_repository_interface.dart';
import 'note/note_repository.dart';
import 'note/note_repository_interface.dart';

class RepositoriesModule extends Module {
  @override
  List<Module> get imports => [
        ServicesModule(),
        DataModule(),
      ];

  @override
  void exportedBinds(Injector i) {
    i.addSingleton<AuthRepositoryInterface>(AuthRepository.new);
    i.addLazySingleton<NoteRepositoryInterface>(NoteRepository.new);
  }
}
