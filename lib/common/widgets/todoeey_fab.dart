import 'package:flutter/material.dart';

import '../constants/app_colors.dart';
import '../extensions/bottom_sheet/bottom_sheet_extension.dart';

class TodoeeyFab extends StatelessWidget {
  const TodoeeyFab({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () async => context.showAddTaskBottomSheet(),
      backgroundColor: AppColors.primaryBlue,
      child: const Icon(
        Icons.add,
        size: 40,
        color: AppColors.tertriaryCream,
      ),
    );
  }
}
