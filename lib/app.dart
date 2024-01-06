import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'config/localization_config.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Todoeey',
      theme: ThemeData(brightness: Brightness.dark),
      localizationsDelegates: localizationsDelegates,
      supportedLocales: supportedLocales,
      routerConfig: Modular.routerConfig,
    );
  }
}