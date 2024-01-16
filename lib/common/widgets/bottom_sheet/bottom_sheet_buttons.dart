import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_modular/flutter_modular.dart' hide ModularWatchExtension;

import '../../../features/dashboard/dashboard_screen/cubit/dashboard_cubit.dart';
import '../../constants/app_colors.dart';
import '../../text_styles/todoeey_text_styles.dart';
import '../todoeey_button.dart';

class BottomSheetButtons extends HookWidget {
  const BottomSheetButtons({super.key});

  @override
  Widget build(BuildContext context) {
    final areFormsValid = context.select((DashboardCubit cubit) => cubit.state.areFormsValid);
    final chosenDateButton = useState<int?>(null);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Wrap(
          spacing: 8,
          runSpacing: 10,
          children: [
            TodoeeyButton(
              text: 'Today',
              textStyle: TodoeeyTextStyle.body(
                color:
                    chosenDateButton.value == 0 ? AppColors.tertriaryCream : AppColors.background,
              ),
              size: const Size(115, 50),
              color: chosenDateButton.value == 0 ? AppColors.background : AppColors.tertriaryCream,
              onClick: () {
                chosenDateButton.value = 0;
                context.read<DashboardCubit>().setNoteDate(DateTime.now());
              },
            ),
            TodoeeyButton(
                text: 'Tomorrow',
                textStyle: TodoeeyTextStyle.body(
                  color:
                      chosenDateButton.value == 1 ? AppColors.tertriaryCream : AppColors.background,
                ),
                size: const Size(115, 50),
                color:
                    chosenDateButton.value == 1 ? AppColors.background : AppColors.tertriaryCream,
                onClick: () {
                  chosenDateButton.value = 1;

                  context
                      .read<DashboardCubit>()
                      .setNoteDate(DateTime.now().add(const Duration(days: 1)));
                }),
            TodoeeyButton(
              text: 'Other day',
              textStyle: TodoeeyTextStyle.body(
                color:
                    chosenDateButton.value == 2 ? AppColors.tertriaryCream : AppColors.background,
              ),
              size: const Size(115, 50),
              color: chosenDateButton.value == 2 ? AppColors.background : AppColors.tertriaryCream,
              onClick: () async {
                final firstDate = DateTime.now();

                final pickedDate = await showDatePicker(
                  context: context,
                  initialDate: firstDate,
                  firstDate: DateTime(firstDate.year),
                  lastDate: DateTime(firstDate.year + 1),
                );

                if (pickedDate == null) {
                  chosenDateButton.value = null;
                } else {
                  chosenDateButton.value = 2;
                }

                if (context.mounted) context.read<DashboardCubit>().setNoteDate(pickedDate);
              },
            ),
            TodoeeyButton(
              text: 'Set time',
              textStyle: TodoeeyTextStyle.body(),
              size: const Size(120, 50),
              onClick: () async {
                final pickedTime = await showTimePicker(
                  context: context,
                  initialTime: TimeOfDay.now(),
                );

                if (context.mounted) context.read<DashboardCubit>().setNoteTime(pickedTime);
              },
            ),
          ],
        ),
        const SizedBox(height: 20),
        TodoeeyButton(
          text: 'Add task',
          onClick: areFormsValid
              ? () async {
                  context.read<DashboardCubit>().createNote();

                  await Future.delayed(const Duration(milliseconds: 500));
                  Modular.to.pop();
                }
              : null,
        )
      ],
    );
  }
}
