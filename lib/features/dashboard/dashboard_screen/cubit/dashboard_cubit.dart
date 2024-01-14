import 'package:flutter_bloc/flutter_bloc.dart';

import 'dashboard_state.dart';

class DashboardCubit extends Cubit<DashboardState> {
  DashboardCubit() : super(DashboardState());

  void init() {
    final now = DateTime.now();
    final datesList = <DateTime>[];

    for (var i = 0; i < 99; i++) {
      final nextDay = now.add(Duration(days: i));
      datesList.add(nextDay);
    }

    emit(state.copyWith(dates: datesList));
  }

  void selectDate(DateTime date) {
    emit(state.copyWith(selectedDate: date));
  }
}
