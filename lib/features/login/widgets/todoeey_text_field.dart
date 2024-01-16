import 'package:flutter/material.dart';
import '../../../common/constants/app_colors.dart';
import '../../../common/text_styles/todoeey_text_styles.dart';

class TodoeeyTextField extends StatelessWidget {
  const TodoeeyTextField({
    super.key,
    this.labelText,
    this.keyboardType,
    this.onChanged,
    this.errorMessage,
    this.isPassword = false,
  });

  final String? labelText;
  final TextInputType? keyboardType;
  final Function(String value)? onChanged;
  final String? errorMessage;
  final bool isPassword;

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: keyboardType,
      textInputAction: TextInputAction.next,
      obscureText: isPassword,
      cursorColor: AppColors.textGrey,
      style: errorMessage == null
          ? TodoeeyTextStyle.h3(color: AppColors.textWhite)
          : TodoeeyTextStyle.h3(color: AppColors.errorRed),
      decoration: InputDecoration(
        errorText: errorMessage,
        labelText: labelText,
        labelStyle: TodoeeyTextStyle.body(),
        fillColor: AppColors.secondaryGrey,
        filled: true,
        enabledBorder: _border(),
        errorBorder: _border(color: AppColors.errorRed),
        focusedBorder: _border(),
        focusedErrorBorder: _border(color: AppColors.errorRed),
        disabledBorder: _border(),
        floatingLabelBehavior: FloatingLabelBehavior.auto,
        errorStyle: TodoeeyTextStyle.description(
          color: AppColors.errorRed,
        ),
      ),
      onChanged: onChanged,
    );
  }

  OutlineInputBorder _border({Color color = AppColors.textWhite}) {
    return OutlineInputBorder(
      borderSide: BorderSide(color: color),
      borderRadius: const BorderRadius.all(Radius.circular(12)),
    );
  }
}
