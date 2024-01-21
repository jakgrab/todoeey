import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SimpleAppBar extends StatelessWidget implements PreferredSizeWidget {
  const SimpleAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      leading: IconButton(
        onPressed: () => Modular.to.pop(),
        icon: const Icon(Icons.arrow_back_ios_new),
      ),
      backgroundColor: Colors.transparent,
      elevation: null,
      shadowColor: Colors.transparent,
      toolbarHeight: 90,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(85);
}
