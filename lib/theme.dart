import 'package:flutter/material.dart';

const primaryColor = Color(0xFF008060);

const secondaryColor = Color(0xFF7EC396);

const primaryVariantColor = Color(0xff014B33);
const secondaryVariantColor = Color(0xff014B33);
const onPrimary = Color(0xffCCE6DF);
const error = Color(0xffD34159);
const onError = Color(0xffEEBBC4);

class CustomTheme {
  static ThemeData get theme {
    ThemeData theme = ThemeData.light();
    return theme.copyWith(
      colorScheme: theme.colorScheme.copyWith(
        onPrimary: onPrimary,
        onSecondary: onPrimary,
        primary: primaryColor,
        secondary: secondaryColor,
        primaryVariant: primaryVariantColor,
        secondaryVariant: secondaryVariantColor,
        background: Colors.white,
        onError: onError,
        error: error,
      ),
      primaryColor: primaryColor,
      buttonTheme: ButtonThemeData(
        // 4
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.0)),
        buttonColor: primaryColor,
      ),
      textTheme: theme.textTheme.apply(fontFamily: "Inter"),
      inputDecorationTheme: theme.inputDecorationTheme.copyWith(
        errorStyle: TextStyle(height: 0),
        fillColor: Color(0xffF3F6F3),
        filled: true,
        enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white)),
        focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: primaryColor)),
        errorBorder:
            const OutlineInputBorder(borderSide: BorderSide(color: error)),
        focusedErrorBorder:
            const OutlineInputBorder(borderSide: BorderSide(color: Colors.white,width: 0.0)),
      ),
    );
  }
}
