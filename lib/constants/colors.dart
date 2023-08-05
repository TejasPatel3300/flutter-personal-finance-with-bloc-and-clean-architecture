import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  static const ColorScheme colorScheme = ColorScheme(
  brightness: Brightness.light,
  primary: primary,   // Dark Slate Blue
  onPrimary: Colors.white,
  secondary: secondary, // Emerald
  onSecondary: Colors.black,
  error: Colors.red,
  onError: Colors.white,
  background: Colors.white,
  onBackground: Colors.black,
  surface: Colors.white,
  onSurface: Colors.black,
);

static const lightColorScheme = ColorScheme(
  brightness: Brightness.light,
  primary: Color(0xFF9F4200),
  onPrimary: Color(0xFFFFFFFF),
  primaryContainer: Color(0xFFFFDBCB),
  onPrimaryContainer: Color(0xFF341100),
  secondary: Color(0xFF006D3D),
  onSecondary: Color(0xFFFFFFFF),
  secondaryContainer: Color(0xFF97F7B7),
  onSecondaryContainer: Color(0xFF00210F),
  tertiary: Color(0xFF006685),
  onTertiary: Color(0xFFFFFFFF),
  tertiaryContainer: Color(0xFFBFE8FF),
  onTertiaryContainer: Color(0xFF001F2A),
  error: Color(0xFFBA1A1A),
  errorContainer: Color(0xFFFFDAD6),
  onError: Color(0xFFFFFFFF),
  onErrorContainer: Color(0xFF410002),
  background: Color(0xFFF8FDFF),
  onBackground: Color(0xFF001F25),
  surface: Color(0xFFF8FDFF),
  onSurface: Color(0xFF001F25),
  surfaceVariant: Color(0xFFF4DED5),
  onSurfaceVariant: Color(0xFF52443D),
  outline: Color(0xFF85736C),
  onInverseSurface: Color(0xFFD6F6FF),
  inverseSurface: Color(0xFF00363F),
  inversePrimary: Color(0xFFFFB692),
  shadow: Color(0xFF000000),
  surfaceTint: Color(0xFF9F4200),
  outlineVariant: Color(0xFFD7C2B9),
  scrim: Color(0xFF000000),
);

static const darkColorScheme = ColorScheme(
  brightness: Brightness.dark,
  primary: Color(0xFFFFB692),
  onPrimary: Color(0xFF562000),
  primaryContainer: Color(0xFF7A3000),
  onPrimaryContainer: Color(0xFFFFDBCB),
  secondary: Color(0xFF7BDA9C),
  onSecondary: Color(0xFF00391D),
  secondaryContainer: Color(0xFF00522D),
  onSecondaryContainer: Color(0xFF97F7B7),
  tertiary: Color(0xFF6DD2FF),
  onTertiary: Color(0xFF003547),
  tertiaryContainer: Color(0xFF004D65),
  onTertiaryContainer: Color(0xFFBFE8FF),
  error: Color(0xFFFFB4AB),
  errorContainer: Color(0xFF93000A),
  onError: Color(0xFF690005),
  onErrorContainer: Color(0xFFFFDAD6),
  background: Color(0xFF001F25),
  onBackground: Color(0xFFA6EEFF),
  surface: Color(0xFF001F25),
  onSurface: Color(0xFFA6EEFF),
  surfaceVariant: Color(0xFF52443D),
  onSurfaceVariant: Color(0xFFD7C2B9),
  outline: Color(0xFFA08D85),
  onInverseSurface: Color(0xFF001F25),
  inverseSurface: Color(0xFFA6EEFF),
  inversePrimary: Color(0xFF9F4200),
  shadow: Color(0xFF000000),
  surfaceTint: Color(0xFFFFB692),
  outlineVariant: Color(0xFF52443D),
  scrim: Color(0xFF000000),
);

  static const Color primary = Color(0xFF34495E); //(Dark Slate Blue)
  static const Color secondary = Color(0xFF2ECC71); // (Emerald)
  static const Color accent = Color(0xFFFF851B); // (Orange)
}