import 'package:flutter_modular/flutter_modular.dart';

import 'hive_daos/note/notes_dao.dart';
import 'hive_daos/note/notes_dao_interface.dart';
import 'hive_daos/user/user_dao.dart';
import 'hive_daos/user/user_dao_interface.dart';
import 'network/api_client.dart';

class DataModule extends Module {
  @override
  void exportedBinds(Injector i) {
    i.addSingleton<ApiClient>(ApiClient.new);
    i.addLazySingleton<NotesDaoInterface>(NotesDao.new);
    i.addLazySingleton<UserDaoInterface>(UserDao.new);
    super.exportedBinds(i);
  }
}
