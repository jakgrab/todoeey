import 'dart:io';

import 'package:flutter/material.dart';

class AppLoader extends StatelessWidget {
  const AppLoader({
    Key? key,
    this.isWhite = true,
    this.strokeWidth = 2.0,
  }) : super(key: key);

  final bool isWhite;
  final double strokeWidth;

  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator.adaptive(
      valueColor: valueColor,
      backgroundColor: backgroundColor,
      strokeWidth: strokeWidth,
    );
  }

  Animation<Color>? get valueColor {
    if (Platform.isIOS) {
      return isWhite ? const AlwaysStoppedAnimation<Color>(Colors.white) : null;
    } else {
      return isWhite
          ? const AlwaysStoppedAnimation<Color>(Colors.white)
          : AlwaysStoppedAnimation<Color>(Colors.grey.withOpacity(0.5));
    }
  }

  Color? get backgroundColor {
    if (Platform.isIOS) {
      return isWhite ? Colors.white : null;
    } else {
      return null;
    }
  }
}
