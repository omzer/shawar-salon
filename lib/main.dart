import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shawar_salon/services/prefs.dart';
import 'package:shawar_salon/services/theme_service.dart';
import 'package:shawar_salon/ui/landing_page/landing_page.dart';

import 'localization/Messages.dart';

void main() async {
  await Prefs.getInstance().init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      // locale
      translations: Messages(),
      locale: Locale('ar'),
      fallbackLocale: Locale('ar'),
      // Meta data
      title: 'صالون شاور',
      // Theme
      theme: _configureTheme(context),
      // First page
      home: LandingPage(),
    );
  }

  ThemeData _configureTheme(context) {
    return ThemeService.getTheme(
      Theme.of(context),
      Colors.indigo,
      Colors.white,
      Colors.orange,
    );
  }
}
