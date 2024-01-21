import 'package:flutter/material.dart';

import '../../../../common/text_styles/todoeey_text_styles.dart';

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
              onPressed: () {
                Scaffold.of(context).closeEndDrawer();
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
