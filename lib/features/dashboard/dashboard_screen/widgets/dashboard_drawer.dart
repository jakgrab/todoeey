import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../common/text_styles/todoeey_text_styles.dart';
import '../../../../repositories/auth/auth_repository_interface.dart';

class DashboardDrawer extends StatelessWidget {
  const DashboardDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: TextButton(
              onPressed: () async {
                final authRepository = Modular.get<AuthRepositoryInterface>();
                await authRepository.signOut();

                if (context.mounted) {
                  Scaffold.of(context).closeEndDrawer();
                }
              },
              child: Text(
                'Log out',
                style: TodoeeyTextStyle.button(),
              ),
            ),
          )
        ],
      ),
    );
  }
}
