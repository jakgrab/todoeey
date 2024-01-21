import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'app.dart';
import 'app_module.dart';
import 'common/constants/app_colors.dart';
import 'common/constants/route_paths.dart';
import 'common/constants/shared_preferences_keys.dart';
import 'data/hive_entities/note/note_entity.dart';
import 'data/hive_entities/user_notes/user_notes_entity.dart';
import 'services/shared_preferences/shared_preferences_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle.light.copyWith(
      systemNavigationBarColor: AppColors.background,
      statusBarColor: Colors.transparent,
      systemStatusBarContrastEnforced: false,
    ),
  );

  await _setInitialRoute();
  await _initHiveDatabase();

  runApp(ModularApp(
    module: AppModule(),
    child: const App(),
  ));
}

Future<void> _setInitialRoute() async {
  final sharedPreferences = await SharedPreferencesService().sharedpreferencesInstance;
  final isUserLoggedIn = sharedPreferences.getBool(SharedPreferencesKeys.isUserLoggedIn);

  final initialRoute = isUserLoggedIn == true ? RoutePaths.dashboardModule : RoutePaths.loginModule;

  Modular.setInitialRoute(initialRoute);
}

Future<void> _initHiveDatabase() async {
  final dir = await getApplicationDocumentsDirectory();
  Hive.init(dir.path);
  _registerHiveAdapters();
}

void _registerHiveAdapters() {
  Hive.registerAdapter(NoteEntityAdapter(), override: true);
  Hive.registerAdapter(UserNotesEntityAdapter(), override: true);
}
