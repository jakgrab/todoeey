import 'package:flutter/material.dart';

import '../../../common/widgets/todoeey_app_bar.dart';
import '../../../common/widgets/todoeey_fab.dart';
import 'widgets/date_row.dart';
import 'widgets/filters.dart';
import 'widgets/notes_list.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: TodoeeyAppBar(),
      floatingActionButton: TodoeeyFab(),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 10),
            DateRow(),
            SizedBox(height: 15),
            Filters(),
            SizedBox(height: 15),
            NotesList(),
          ],
        ),
      ),
    );
  }
}
