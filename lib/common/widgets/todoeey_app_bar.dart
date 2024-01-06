import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:todoeey/common/text_styles/todoeey_text_styles.dart';

class TodoeeyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const TodoeeyAppBar({
    super.key,
    this.showSimplifiedVersion = false,
  });

  final bool showSimplifiedVersion;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      leading: showSimplifiedVersion
          ? IconButton(
              onPressed: () => Modular.to.pop(),
              icon: const Icon(Icons.arrow_back_ios_new),
            )
          : null,
      title: !showSimplifiedVersion
          ? Padding(
              padding: const EdgeInsets.only(left: 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Tuesday, 16 May",
                    style: TodoeeyTextStyle.body(),
                  ),
                  const SizedBox(height: 8),
                  Text("Todoeey", style: TodoeeyTextStyle.title()),
                ],
              ),
            )
          : null,
      actions: showSimplifiedVersion
          ? []
          : [
              IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
            ],
      backgroundColor: Colors.transparent,
      elevation: null,
      shadowColor: Colors.transparent,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(84);
}
