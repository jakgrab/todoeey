import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../common/constants/app_colors.dart';
import '../../../../common/enums/note_status.dart';
import '../../../../common/text_styles/todoeey_text_styles.dart';
import '../cubit/dashboard_cubit.dart';

class Filters extends StatelessWidget {
  const Filters({super.key});

  @override
  Widget build(BuildContext context) {
    final noteFilterStatus = context.select((DashboardCubit cubit) => cubit.state.noteFilterStatus);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FilterButton(
            noteFilterStatus: NoteFilterStatus.none,
            currentNoteFilterStatus: noteFilterStatus,
            label: "All",
            onClick: () =>
                context.read<DashboardCubit>().setNoteFilterStatus(NoteFilterStatus.none),
          ),
          FilterButton(
            noteFilterStatus: NoteFilterStatus.complete,
            currentNoteFilterStatus: noteFilterStatus,
            label: "Complete",
            onClick: () =>
                context.read<DashboardCubit>().setNoteFilterStatus(NoteFilterStatus.complete),
          ),
          FilterButton(
            noteFilterStatus: NoteFilterStatus.active,
            currentNoteFilterStatus: noteFilterStatus,
            label: "Active",
            onClick: () =>
                context.read<DashboardCubit>().setNoteFilterStatus(NoteFilterStatus.active),
          ),
        ],
      ),
    );
  }
}

class FilterButton extends StatelessWidget {
  const FilterButton({
    super.key,
    required this.label,
    required this.noteFilterStatus,
    required this.currentNoteFilterStatus,
    this.onClick,
  });

  final String label;
  final NoteFilterStatus currentNoteFilterStatus;
  final NoteFilterStatus noteFilterStatus;
  final VoidCallback? onClick;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          onClick?.call();
        },
        child: Text(
          label,
          style: TodoeeyTextStyle.bodyBold(
            color: noteFilterStatus == currentNoteFilterStatus
                ? AppColors.primaryBlue
                : AppColors.tertriaryCream,
          ),
        ));
  }
}
