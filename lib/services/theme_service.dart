import 'package:flutter/material.dart';

class ThemeService {
  static getTheme(theme, primaryColor, textAndIcon, accent) {
    return ThemeData.light().copyWith(
      primaryColor: primaryColor,
      scaffoldBackgroundColor: primaryColor,
      textTheme: theme.textTheme.apply(bodyColor: textAndIcon),
      iconTheme: theme.iconTheme.copyWith(color: textAndIcon),
      accentColor: accent,
    );
  }
}
