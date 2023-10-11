import 'package:drecipe/features/common/ui/colors/colors.dart';
import 'package:drecipe/features/common/ui/fonts/fonts.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void showPrimaryToast(
  String message, {
  Toast toastLength = Toast.LENGTH_SHORT,
  ToastGravity gravity = ToastGravity.CENTER,
  Color? backgroundColor,
  Color? textColor,
  double fontSize = FontSizes.s16,
}) {
  Fluttertoast.showToast(
    msg: message,
    toastLength: toastLength,
    gravity: gravity,
    timeInSecForIosWeb: 1,
    backgroundColor: backgroundColor ?? AppColors.primaryRed,
    textColor: textColor ?? AppColors.white,
    fontSize: fontSize,
  );
}

void cancelToast() {
  Fluttertoast.cancel();
}
