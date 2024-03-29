import 'package:flutter/material.dart';

abstract class AppColors {
  static Color primaryRed = HexColor.fromHex('#F14757');
  static Color secondaryLightRed1 = HexColor.fromHex('#F14757');
  static Color secondaryLightRed2 = HexColor.fromHex('#F57581');
  static Color secondaryLightRed3 = HexColor.fromHex('#F8A3AB');
  static Color secondaryLightRed4 = HexColor.fromHex('#FCD1D5');
  static Color secondaryDarkRed1 = HexColor.fromHex('#BE1424');
  static Color secondaryDarkRed2 = HexColor.fromHex('#8F0F1B');

  static Color black = HexColor.fromHex('#000000');
  static Color white = HexColor.fromHex('#FFFFFF');

  static Color lightGrey1 = HexColor.fromHex('#D9D9D6');
  static Color lightGrey2 = HexColor.fromHex('#D0D0CE');
  static Color lightGrey3 = HexColor.fromHex('#A7A8AA');
  static Color lightGrey4 = HexColor.fromHex('#A7A8AA');
  static Color darkGrey1 = HexColor.fromHex('#888B8D');
  static Color darkGrey2 = HexColor.fromHex('#63666A');
  static Color darkGrey3 = HexColor.fromHex('#444444');

  static Color error = HexColor.fromHex("#E61f34");

  static Color googleButton = HexColor.fromHex("#DD4B39");
  static Color wheat = HexColor.fromHex("#F6B756");
}

extension HexColor on Color {
  static Color fromHex(String hexColorString) {
    hexColorString = hexColorString.replaceAll('#', '');
    if (hexColorString.length == 6) {
      hexColorString = '0xFF$hexColorString';
    } else {
      hexColorString = '0x$hexColorString';
    }
    return Color(int.parse(hexColorString));
  }
}

LinearGradient recipeCardGradient() {
  return LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Colors.black.withOpacity(0.8),
        Colors.black.withOpacity(0.7),
        Colors.black.withOpacity(0.6),
        Colors.black.withOpacity(0.5),
        Colors.black.withOpacity(0.4),
        Colors.black.withOpacity(0.3),
        Colors.black.withOpacity(0.2),
        Colors.black.withOpacity(0.1),
        Colors.black.withOpacity(0.1),
        Colors.transparent
      ]);
}

LinearGradient recipeCardGradientDarker() {
  return LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Colors.black.withOpacity(0.8),
        Colors.black.withOpacity(0.8),
        Colors.black.withOpacity(0.8),
        Colors.black.withOpacity(0.8),
        Colors.black.withOpacity(0.6),
        Colors.black.withOpacity(0.6),
        Colors.black.withOpacity(0.5),
        Colors.black.withOpacity(0.5),
        Colors.black.withOpacity(0.9),
        Colors.black.withOpacity(0.9),
        Colors.black.withOpacity(0.9),
      ]);
}
