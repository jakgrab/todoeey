import 'package:flutter/material.dart';

import '../../../common/constants/app_colors.dart';
import '../../../common/widgets/todoeey_app_bar.dart';
import '../../../common/widgets/todoeey_fab.dart';
import 'widgets/date_row.dart';
import 'widgets/notes_list.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TodoeeyAppBar(),
      floatingActionButton: const TodoeeyFab(),
      body: const SafeArea(
        child: Column(
          children: [
            SizedBox(height: 10),
            DateRow(),
            SizedBox(height: 30),
            NotesList(),
          ],
        ),
      ),
    );
  }
}
