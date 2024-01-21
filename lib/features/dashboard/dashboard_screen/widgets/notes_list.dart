import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../common/constants/app_colors.dart';
import '../../../../common/text_styles/todoeey_text_styles.dart';
import '../cubit/dashboard_cubit.dart';
import 'note_item.dart';

class NotesList extends StatelessWidget {
  const NotesList({super.key});

  @override
  Widget build(BuildContext context) {
    final notesList = context.select((DashboardCubit cubit) => cubit.state.visibleNotesList);
    final isNotesListEmpty =
        context.select((DashboardCubit cubit) => cubit.state.notesList).isEmpty;

    return isNotesListEmpty
        ? const NoNotesMessage()
        : Expanded(
            child: CustomScrollView(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.vertical,
              slivers: [
                SliverList.separated(
                  itemCount: notesList.length,
                  itemBuilder: (context, index) {
                    final note = notesList[index];

                    if (note.id == null) {
                      return const SizedBox.shrink();
                    }

                    return Dismissible(
                      direction: DismissDirection.endToStart,
                      onDismissed: (direction) async {
                        await context.read<DashboardCubit>().removeNote(note);
                      },
                      key: Key('${notesList[index].id!}-${notesList[index].title}'),
                      secondaryBackground: Container(
                        color: AppColors.dismissColor,
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(
                              Icons.delete,
                              size: 40,
                              color: AppColors.tertriaryCream,
                            ),
                            SizedBox(width: 50)
                          ],
                        ),
                      ),
                      background: Container(),
                      child: NoteItem(note: notesList[index]),
                    );
                  },
                  separatorBuilder: (context, index) => const SizedBox(height: 10),
                ),
              ],
            ),
          );
  }
}

class NoNotesMessage extends StatelessWidget {
  const NoNotesMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        Text(
          "You have no notes yet. \n Add one using the plus icon",
          textAlign: TextAlign.center,
          style: TodoeeyTextStyle.title(),
        )
      ],
    ));
  }
}
