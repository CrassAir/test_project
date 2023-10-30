import 'dart:developer';

import 'package:flutter/material.dart';

class Styles {
  static ThemeData darkMode(BuildContext context) {
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSwatch(brightness: Brightness.dark, primarySwatch: Colors.yellow),
    );
  }

  static ThemeData lightMode(BuildContext context) {
    var materialStateColor = MaterialStateColor.resolveWith((Set<MaterialState> states) {
      if (states.contains(MaterialState.error)) {
        return Colors.red;
      }
      if (states.contains(MaterialState.focused)) {
        return Theme.of(context).primaryColor;
      }
      return Colors.grey;
    });
    var materialStateTextStyle = MaterialStateTextStyle.resolveWith((states) {
      if (states.contains(MaterialState.error)) {
        return const TextStyle(color: Colors.red);
      }
      if (states.contains(MaterialState.focused)) {
        return TextStyle(color: Theme.of(context).primaryColor);
      }
      return const TextStyle(color: Colors.grey);
    });
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xffE1E000), primary: const Color(0xffE1E000)),
      cardColor: const Color(0xffF5F5F5),
      cardTheme: const CardTheme(elevation: 0, color: Color(0xffF5F5F5)),
      // chipTheme: ChipThemeData(
      //     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      //     side: BorderSide.none,
      //     padding: const EdgeInsets.all(0),
      //     labelPadding: const EdgeInsets.symmetric(horizontal: 4),),
      inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(borderSide: BorderSide(color: Theme.of(context).disabledColor)),
          enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Theme.of(context).disabledColor)),
          prefixIconColor: materialStateColor,
          labelStyle: materialStateTextStyle,
          focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Theme.of(context).primaryColor, width: 2))),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Theme.of(context).primaryColor),
              foregroundColor: MaterialStateProperty.all(Colors.white),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
              )))),
      outlinedButtonTheme: OutlinedButtonThemeData(
          style: ButtonStyle(
              padding: MaterialStateProperty.all(const EdgeInsets.all(10)),
              textStyle:
                  MaterialStateProperty.all(Theme.of(context).textTheme.titleMedium!.copyWith(letterSpacing: 1.2)),
              side: MaterialStateProperty.all(BorderSide(color: Theme.of(context).primaryColor)),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
              )))),
    );
  }
}
