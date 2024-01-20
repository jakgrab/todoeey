import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/dashboard_cubit.dart';
import 'note_item.dart';

class NotesList extends StatelessWidget {
  const NotesList({super.key});

  @override
  Widget build(BuildContext context) {
    final notesList = context.select((DashboardCubit cubit) => cubit.state.notesList);

    return Expanded(
      child: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        slivers: [
          SliverList.separated(
            itemCount: notesList.length,
            itemBuilder: (context, index) {
              return NoteItem(note: notesList[index]);
            },
            separatorBuilder: (context, index) => const SizedBox(height: 10),
          ),
        ],
      ),
    );
  }
}
