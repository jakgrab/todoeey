import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'cubit/dashboard_cubit.dart';
import 'dashboard_view.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  static const path = "/dashboard-screen/";

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => Modular.get<DashboardCubit>(),
      child: const DashboardView(),
    );
  }
}
