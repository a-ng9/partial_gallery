import 'package:flutter/material.dart';

class Styles {
  static Color getDarkBlueColor() {
    return Color(0xFF003A5C);
  }

  static MaterialColor getPinkMaterialColor = const MaterialColor(
    0xFFf04665,
    const <int, Color>{
      50: const Color(0xFFf04665),
      100: const Color(0xFFf04665),
      200: const Color(0xFFf04665),
      300: const Color(0xFFf04665),
      400: const Color(0xFFf04665),
      500: const Color(0xFFf04665),
      600: const Color(0xFFf04665),
      700: const Color(0xFFf04665),
      800: const Color(0xFFf04665),
      900: const Color(0xFFf04665),
    },
  );

  static Color getOrangeColor() {
    return Color(0xFFFF7D4A);
  }

  static Color getLightBlueColor() {
    return Color(0xFFE4F0F5);
  }

  static Color getGreenColor() {
    return Color(0xFF77BF76);
  }

  static Color getRedColor() {
    return Color(0xFFF8957F);
  }

  static Color getPendingColor() {
    return Color(0xFF7FB5AC);
  }

  static TextStyle getTitleStyle() {
    return TextStyle(
      color: getDarkBlueColor(),
      fontSize: 22,
      fontWeight: FontWeight.bold,
    );
  }
}
