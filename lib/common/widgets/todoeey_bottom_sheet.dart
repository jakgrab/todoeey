import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../features/dashboard/dashboard_screen/cubit/dashboard_cubit.dart';
import '../formz_validators/note_input.dart';
import '../text_styles/todoeey_text_styles.dart';
import 'bottom_sheet/bottom_sheet_buttons.dart';
import 'bottom_sheet/bottom_sheet_text_field.dart';

class TodoeeyBottomSheet extends StatelessWidget {
  const TodoeeyBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    final titleError =
        context.select((DashboardCubit cubit) => cubit.state.titleInput.displayError);
    final descError =
        context.select((DashboardCubit cubit) => cubit.state.descriptionInput.displayError);

    final noteException =
        context.select((DashboardCubit cubit) => cubit.state.noteCreationException);

    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: Padding(
          padding: const EdgeInsets.only(
            left: 40,
            right: 40,
            top: 40,
            bottom: 10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'New Task',
                style: TodoeeyTextStyle.h3(),
              ),
              const SizedBox(height: 10),
              BottomSheetTextField(
                hint: 'title',
                errorMessage: getErrorMessage(titleError, noteException),
                onChanged: context.read<DashboardCubit>().onNoteTitleChanged,
              ),
              const SizedBox(height: 15),
              Text(
                'Notes',
                style: TodoeeyTextStyle.h3(),
              ),
              const SizedBox(height: 10),
              BottomSheetTextField(
                hint: 'Description',
                errorMessage: getErrorMessage(descError, noteException),
                onChanged: context.read<DashboardCubit>().onNoteDescriptionChanged,
              ),
              const SizedBox(height: 15),
              const BottomSheetButtons()
            ],
          ),
        ),
      ),
    );
  }

  String? getErrorMessage(
    NoteInputError? error,
    NoteCreationException? noteCreationException,
  ) {
    if (error == NoteInputError.empty) {
      return "Field cannot be empty";
    } else if (noteCreationException != null) {
      return "Date has to be picked";
    }
    return null;
  }
}
