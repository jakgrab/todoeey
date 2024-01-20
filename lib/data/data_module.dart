import 'package:flutter_modular/flutter_modular.dart';

import 'hive_daos/notes_dao.dart';
import 'hive_daos/notes_dao_interface.dart';

class DataModule extends Module {
  @override
  void exportedBinds(Injector i) {
    i.addLazySingleton<NotesDaoInterface>(NotesDao.new);
    super.exportedBinds(i);
  }
}
