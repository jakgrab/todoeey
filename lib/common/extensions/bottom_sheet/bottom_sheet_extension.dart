import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../features/dashboard/dashboard_screen/cubit/dashboard_cubit.dart';
import '../../constants/app_colors.dart';
import '../../widgets/todoeey_bottom_sheet.dart';

extension BottomSheet on BuildContext {
  void showAddTaskBottomSheet() async {
    await showModalBottomSheet(
      context: this,
      backgroundColor: AppColors.secondaryGrey,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
      ),
      isScrollControlled: true,
      constraints: BoxConstraints.tightFor(
        width: MediaQuery.of(this).size.width * 0.9,
      ),
      builder: (context) {
        return BlocProvider.value(
          value: Modular.get<DashboardCubit>(),
          child: TodoeeyBottomSheet(),
        );
      },
    );
  }
}
