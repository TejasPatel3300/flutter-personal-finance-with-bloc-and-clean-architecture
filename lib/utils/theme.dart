import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:personal_finance_app/constants/colors.dart';

ThemeData getLightTheme() {
  return ThemeData(
    colorScheme: AppColors.lightColorScheme,
    fontFamily: "Muli",
    // appBarTheme: appBarTheme(),
    // textTheme: textTheme(),
    inputDecorationTheme: inputDecorationTheme(),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    useMaterial3: true,
  );
}

ThemeData getDarkTheme() {
  return ThemeData(
    colorScheme: AppColors.darkColorScheme,
    fontFamily: "Muli",
    // appBarTheme: appBarTheme(),
    // textTheme: textTheme(),
    inputDecorationTheme: inputDecorationTheme(isDarkTheme: true),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    useMaterial3: true,
  );
}

InputDecorationTheme inputDecorationTheme({bool isDarkTheme = false}) {
  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
    borderSide: BorderSide(
      color: isDarkTheme
          ? AppColors.darkColorScheme.outline
          : AppColors.lightColorScheme.outline,
    ),
    borderRadius: BorderRadius.circular(25),
    gapPadding: 10,
  );
  return InputDecorationTheme(
    floatingLabelBehavior: FloatingLabelBehavior.always,
    contentPadding: const EdgeInsets.symmetric(
      horizontal: 40,
      vertical: 20,
    ),
    enabledBorder: outlineInputBorder,
    focusedBorder: outlineInputBorder,
    border: outlineInputBorder,
  );
}

TextTheme textTheme() {
  return const TextTheme();
}

AppBarTheme appBarTheme() {
  return const AppBarTheme(
    elevation: 0,
    systemOverlayStyle:
        SystemUiOverlayStyle(statusBarBrightness: Brightness.light),
    iconTheme: IconThemeData(),
    titleTextStyle: TextStyle(fontSize: 18),
  );
}

// ThemeData getAppTheme(BuildContext context, bool isDarkTheme) {
//   return ThemeData(
//     scaffoldBackgroundColor: isDarkTheme ? Colors.black : Colors.white,
//     textTheme: Theme.of(context)
//         .textTheme
//         .copyWith(
//           titleSmall:
//               Theme.of(context).textTheme.titleSmall?.copyWith(fontSize: 11),
//         )
//         .apply(
//           bodyColor: isDarkTheme ? Colors.white : Colors.black,
//           displayColor: Colors.grey,
//         ),
//     switchTheme: SwitchThemeData(
//       thumbColor: MaterialStateProperty.all(
//           isDarkTheme ? Colors.orange : Colors.purple),
//     ),
//     listTileTheme: ListTileThemeData(
//         iconColor: isDarkTheme ? Colors.orange : Colors.purple),
//     appBarTheme: AppBarTheme(
//         backgroundColor: isDarkTheme ? Colors.black : Colors.white,
//         iconTheme:
//             IconThemeData(color: isDarkTheme ? Colors.white : Colors.black54)),
//   );
// }
