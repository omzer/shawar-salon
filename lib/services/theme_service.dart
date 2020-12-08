import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThemeService {
  static final _darkTheme = ThemeData.dark();

  static final _themes = [
    // Theme 0  (default)
    _darkTheme.copyWith(
      primaryColor: Color(0xff1c2546),
      scaffoldBackgroundColor: Color(0xff1c2546),
      textTheme: _darkTheme.textTheme.apply(bodyColor: Colors.white),
      accentColor: Colors.lightBlueAccent,
    ),
    // Theme 1 (Dark)
    _darkTheme.copyWith(
      primaryColor: Color(0xff353a41),
      scaffoldBackgroundColor: Color(0xff353a41),
      textTheme: _darkTheme.textTheme.apply(bodyColor: Colors.white),
      accentColor: Color(0xffe856a7),
    ),
    // Theme 2 (Green)
    _darkTheme.copyWith(
      primaryColor: Color(0xff3eb855),
      scaffoldBackgroundColor: Color(0xff3eb855),
      textTheme: _darkTheme.textTheme.apply(bodyColor: Colors.white),
      accentColor: Color(0xfff08935),
    ),
    // Theme 3 (Orange)
    _darkTheme.copyWith(
      primaryColor: Color(0xfff29b38),
      scaffoldBackgroundColor: Color(0xfff29b38),
      textTheme: _darkTheme.textTheme.apply(bodyColor: Colors.white),
      accentColor: Color(0xff252a30),
    ),
  ];

  static getTheme(int index) => _themes[index];

  static void changeTheme(int index) => Get.changeTheme(_themes[index]);
}
