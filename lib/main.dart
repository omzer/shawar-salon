import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shawar_salon/services/prefs.dart';
import 'package:shawar_salon/services/theme_service.dart';
import 'package:shawar_salon/ui/landing_page/landing_page.dart';

import 'localization/Messages.dart';

void main() async {
  final prefs = Prefs.getInstance();
  await prefs.init();
  runApp(MyApp());
  ThemeService.changeTheme(prefs.getTheme());
  Get.updateLocale(Locale(prefs.getLanguage()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      // locale
      translations: Messages(),
      fallbackLocale: Locale('ar'),
      // Meta data
      title: 'salon_name'.tr,
      // First page
      home: LandingPage(),
    );
  }
}
