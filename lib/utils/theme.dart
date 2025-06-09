import 'package:flutter/material.dart';

final ThemeData appTheme = ThemeData.from(
  colorScheme: const ColorScheme(
    brightness: Brightness.light,
    primary: Color(0xFF06B6D4),
    onPrimary: Colors.white,
    secondary: Color(0xFF8B5CF6),
    onSecondary: Colors.white,
    surface: Color(0xFFFFFFFF),
    onSurface: Color(0xFF1E293B),
    error: Color(0xFFEF4444),
    onError: Colors.white,
  ),
).copyWith(
  scaffoldBackgroundColor: const Color(0xFFF1F5F9),
  disabledColor: const Color(0xFFE2E8F0),
  dividerColor: const Color(0xFFCBD5E1),
  hintColor: const Color(0xFF94A3B8),
  textTheme: const TextTheme(
    bodyMedium: TextStyle(color: Color(0xFF1E293B)),
  ),
  inputDecorationTheme: const InputDecorationTheme(
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Color(0xFFCBD5E1)),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Color(0xFF06B6D4)),
    ),
    errorBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Color(0xFFEF4444)),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Color(0xFFEF4444)),
    ),
  ),
  buttonTheme: const ButtonThemeData(
    buttonColor: Color(0xFF06B6D4),
    disabledColor: Color(0xFFE2E8F0),
  ),
);


// final ThemeData appDarkTheme = ThemeData.from(
//   colorScheme: const ColorScheme(
//     brightness: Brightness.dark,
//     primary: Color(0xFF06B6D4),
//     onPrimary: Colors.black,
//     secondary: Color(0xFF8B5CF6),
//     onSecondary: Colors.black,
//     surface: Color(0xFF1E293B),
//     onSurface: Color(0xFFF8FAFC),
//     error: Color(0xFFEF4444),
//     onError: Colors.black,
//   ),
// ).copyWith(
//   scaffoldBackgroundColor: const Color(0xFF0F172A),
//   disabledColor: const Color(0xFF475569),
//   dividerColor: const Color(0xFF334155),
//   hintColor: const Color(0xFF94A3B8),
//   textTheme: const TextTheme(
//     bodyMedium: TextStyle(color: Color(0xFFF8FAFC)),
//   ),
//   inputDecorationTheme: const InputDecorationTheme(
//     enabledBorder: OutlineInputBorder(
//       borderSide: BorderSide(color: Color(0xFF334155)),
//     ),
//     focusedBorder: OutlineInputBorder(
//       borderSide: BorderSide(color: Color(0xFF06B6D4)),
//     ),
//     errorBorder: OutlineInputBorder(
//       borderSide: BorderSide(color: Color(0xFFEF4444)),
//     ),
//     focusedErrorBorder: OutlineInputBorder(
//       borderSide: BorderSide(color: Color(0xFFEF4444)),
//     ),
//   ),
//   buttonTheme: const ButtonThemeData(
//     buttonColor: Color(0xFF06B6D4),
//     disabledColor: Color(0xFF475569),
//   ),
// );



class AppPallete {
  static const Color backgroundColor = Color.fromRGBO(24, 24, 32, 1);
  static const Color gradient1 = Color.fromRGBO(187, 63, 221, 1);
  static const Color gradient2 = Color.fromRGBO(251, 109, 169, 1);
  static const Color gradient3 = Color.fromRGBO(255, 159, 124, 1);
  static const Color borderColor = Color.fromRGBO(52, 51, 67, 1);
  static const Color whiteColor = Colors.white;
  static const Color greyColor = Colors.grey;
  static const Color errorColor = Colors.redAccent;
  static const Color transparentColor = Colors.transparent;
}


class AppTheme {
  static _border([Color color = AppPallete.borderColor]) => OutlineInputBorder(
    borderSide: BorderSide(
      color: color,
      width: 3,
    ),
    borderRadius: BorderRadius.circular(10),
  );
  static final darkThemeMode = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: AppPallete.backgroundColor,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppPallete.backgroundColor,
    ),
    chipTheme: const ChipThemeData(
      color: WidgetStatePropertyAll(
        AppPallete.backgroundColor,
      ),
      side: BorderSide.none,
    ),
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: const EdgeInsets.all(27),
      border: _border(),
      enabledBorder: _border(),
      focusedBorder: _border(AppPallete.gradient2),
      errorBorder: _border(AppPallete.errorColor),
    ),
  );
}