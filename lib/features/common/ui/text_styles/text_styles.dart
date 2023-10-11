import 'package:drecipe/features/common/ui/fonts/fonts.dart';
import 'package:flutter/material.dart';

abstract class TextStyles {
  static TextStyle _textStyle(
      double fontSize,
      String fontFamily,
      FontWeight fontWeight,
      Color color,
      double lineHeight,
      double letterSpacing) {
    return TextStyle(
      fontSize: fontSize,
      fontFamily: fontFamily,
      fontWeight: fontWeight,
      color: color,
      height: lineHeight,
      letterSpacing: letterSpacing,
    );
  }

  static TextStyle regular(
      {double fontSize = FontSizes.s17,
      required Color color,
      double lineHeight = 1.50,
      double letterSpacing = -0.6}) {
    return _textStyle(fontSize, FontConstants.fontFamily, FontWeights.regular,
        color, lineHeight, letterSpacing);
  }

  static TextStyle light(
      {double fontSize = FontSizes.s17,
      required Color color,
      double lineHeight = 1.25,
      double letterSpacing = -0.6}) {
    return _textStyle(fontSize, FontConstants.fontFamily, FontWeights.light,
        color, lineHeight, letterSpacing);
  }

  static TextStyle medium(
      {double fontSize = FontSizes.s17,
      required Color color,
      double lineHeight = 1.25,
      double letterSpacing = -0.6}) {
    return _textStyle(fontSize, FontConstants.fontFamily, FontWeights.medium,
        color, lineHeight, letterSpacing);
  }

  static TextStyle semiBold(
      {double fontSize = FontSizes.s17,
      required Color color,
      double lineHeight = 1.25,
      double letterSpacing = -0.8}) {
    return _textStyle(fontSize, FontConstants.fontFamily, FontWeights.semiBold,
        color, lineHeight, letterSpacing);
  }

  static TextStyle bold(
      {double fontSize = FontSizes.s17,
      required Color color,
      double lineHeight = 1.25,
      double letterSpacing = -0.8}) {
    return _textStyle(fontSize, FontConstants.fontFamily, FontWeights.bold,
        color, lineHeight, letterSpacing);
  }
}
