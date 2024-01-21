import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../features/dashboard/dashboard_screen/cubit/dashboard_cubit.dart';
import '../text_styles/todoeey_text_styles.dart';

class TodoeeyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const TodoeeyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final appBarDate = context.select((DashboardCubit cubit) => cubit.state.appBarDate);

    return AppBar(
      automaticallyImplyLeading: false,
      title: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              appBarDate,
              style: TodoeeyTextStyle.body(),
            ),
            const SizedBox(height: 8),
            Text("Todoeey", style: TodoeeyTextStyle.title()),
          ],
        ),
      ),
      actions: [
        IconButton(
          onPressed: () => Scaffold.of(context).openEndDrawer(),
          icon: const Icon(Icons.menu),
        ),
      ],
      backgroundColor: Colors.transparent,
      elevation: null,
      shadowColor: Colors.transparent,
      toolbarHeight: 90,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(85);
}
