import 'package:flutter/material.dart';
import 'package:todoeey/common/constants/app_colors.dart';
import 'package:todoeey/common/text_styles/todoeey_text_styles.dart';
import 'package:todoeey/common/widgets/app_loader.dart';

class TodoeeyButton extends StatelessWidget {
  const TodoeeyButton({
    super.key,
    required this.text,
    this.color = AppColors.primaryBlue,
    this.textColor = AppColors.textWhite,
    this.isLoading = false,
    this.size = const Size(double.infinity, 50),
    this.textStyle,
    this.onClick,
  });

  final String text;
  final VoidCallback? onClick;
  final Color color;
  final Color textColor;
  final bool isLoading;
  final Size size;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width,
      child: ElevatedButton(
        onPressed: onClick,
        style: ButtonStyle(
          fixedSize: MaterialStateProperty.all(Size.fromHeight(size.height)),
          backgroundColor: MaterialStateProperty.all(color),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(22),
            ),
          ),
        ),
        child: isLoading
            ? const AppLoader()
            : Text(
                text,
                style: textStyle ?? TodoeeyTextStyle.button(color: textColor),
              ),
      ),
    );
  }
}
