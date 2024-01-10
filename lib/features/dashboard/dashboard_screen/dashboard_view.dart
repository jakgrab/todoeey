import 'package:flutter/material.dart';

import '../../../common/widgets/todoeey_app_bar.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TodoeeyAppBar(),
      body: SafeArea(
        child: Column(
          children: [Text("DASHBOARD")],
        ),
      ),
    );
  }
}
