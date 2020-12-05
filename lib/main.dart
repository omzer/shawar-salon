import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shawar_salon/services/theme_service.dart';
import 'package:shawar_salon/ui/booking_page/booking_page.dart';

import 'localization/Messages.dart';

void main() => runApp(MyApp());

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
      home: BookingPage(shopStatus: true, numberOfCustomers: 3),
    );
  }

  ThemeData _configureTheme(context) {
    return ThemeService.getTheme(
      Theme.of(context),
      Colors.indigo,
      Colors.white,
      Colors.orangeAccent,
    );
  }
}
