import 'package:flutter/material.dart';

import '../../constants/app_colors.dart';
import '../../text_styles/todoeey_text_styles.dart';

class BottomSheetTextField extends StatelessWidget {
  const BottomSheetTextField({
    super.key,
    this.hint,
    this.errorMessage,
    this.onChanged,
  });

  final String? hint;
  final String? errorMessage;
  final void Function(String value)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textInputAction: TextInputAction.next,
      cursorColor: AppColors.textGrey,
      style: errorMessage == null
          ? TodoeeyTextStyle.h3(color: AppColors.textWhite)
          : TodoeeyTextStyle.h3(color: AppColors.errorRed),
      decoration: InputDecoration(
        errorText: errorMessage,
        hintText: hint,
      ),
      onChanged: onChanged,
    );
  }
}
