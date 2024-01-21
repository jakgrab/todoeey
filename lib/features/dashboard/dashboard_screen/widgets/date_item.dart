import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../common/constants/app_colors.dart';
import '../../../../common/extensions/date_time/date_time_extension.dart';
import '../../../../common/extensions/weekday/weekday_extension.dart';
import '../../../../common/text_styles/todoeey_text_styles.dart';
import '../cubit/dashboard_cubit.dart';

class DateItem extends StatelessWidget {
  const DateItem({
    super.key,
    required this.date,
    this.selectedDate,
    this.onClick,
  });

  final DateTime? date;
  final DateTime? selectedDate;
  final VoidCallback? onClick;

  @override
  Widget build(BuildContext context) {
    final isSelected = selectedDate == date;

    return date != null
        ? InkWell(
            splashColor: Colors.transparent,
            onTap: () => context.read<DashboardCubit>().selectDate(date!),
            child: Container(
              width: 60,
              decoration: BoxDecoration(
                color: isSelected ? AppColors.primaryBlue : null,
                border: isSelected ? null : Border.all(width: 2, color: AppColors.secondaryGrey),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      date?.dayAndMonth ?? '',
                      style: TodoeeyTextStyle.body(),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      date!.weekday.toWeekdayString,
                      style: TodoeeyTextStyle.body(),
                    ),
                  ],
                ),
              ),
            ),
          )
        : const SizedBox.shrink();
  }
}
