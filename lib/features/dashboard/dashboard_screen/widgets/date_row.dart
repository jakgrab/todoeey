import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/dashboard_cubit.dart';
import 'date_item.dart';

class DateRow extends StatelessWidget {
  const DateRow({super.key});

  @override
  Widget build(BuildContext context) {
    final datesList = context.select((DashboardCubit cubit) => cubit.state.datesList);
    final selectedDate = context.select((DashboardCubit cubit) => cubit.state.selectedDate);

    return SizedBox(
      height: 80,
      child: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        slivers: [
          SliverList.separated(
            itemCount: datesList.length,
            itemBuilder: (context, index) {
              if (index == 0) {
                return Row(
                  children: [
                    const SizedBox(width: 20),
                    DateItem(
                      date: datesList[index],
                      selectedDate: selectedDate,
                    ),
                  ],
                );
              }
              if (index == datesList.length - 1) {
                return Row(
                  children: [
                    DateItem(
                      date: datesList[index],
                      selectedDate: selectedDate,
                    ),
                    const SizedBox(width: 20),
                  ],
                );
              }

              return DateItem(
                date: datesList[index],
                selectedDate: selectedDate,
              );
            },
            separatorBuilder: (context, index) => const SizedBox(width: 10),
          ),
        ],
      ),
    );
  }
}
