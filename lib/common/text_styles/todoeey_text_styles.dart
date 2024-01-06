import 'package:flutter/cupertino.dart';
import 'package:todoeey/common/constants/app_colors.dart';

abstract class TodoeeyTextStyle {
  TodoeeyTextStyle._();

  static TextStyle h1({Color color = AppColors.textWhite}) {
    return TextStyle(
      color: color,
      fontSize: 34.0,
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle h3({Color color = AppColors.textWhite}) {
    return TextStyle(
      color: color,
      fontSize: 18.0,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle title({Color color = AppColors.textWhite}) {
    return TextStyle(
      color: color,
      fontSize: 22.0,
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle body({Color color = AppColors.textWhite}) {
    return TextStyle(
      color: color,
      fontSize: 16.0,
      fontWeight: FontWeight.normal,
    );
  }

  static TextStyle button({Color color = AppColors.textWhite}) {
    return TextStyle(
      color: color,
      fontSize: 18.0,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle description({Color color = AppColors.textWhite}) {
    return TextStyle(
      color: color,
      fontSize: 12.0,
      fontWeight: FontWeight.w300,
    );
  }
}