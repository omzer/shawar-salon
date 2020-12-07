import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:shawar_salon/services/api.dart';
import 'package:shawar_salon/services/theme_service.dart';

import 'localization/Messages.dart';
import 'ui/booking_page/booking_page.dart';

void main() async {
  await GetStorage.init();
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
      // todo: create landing page
      home: FutureBuilder(
        future: API.getShopStatus(),
        builder: (_, snap) {
          if (snap.connectionState == ConnectionState.waiting)
            return Scaffold(body: Center(child: CircularProgressIndicator()));
          // todo handle failure
          return BookingPage(shopStatus: snap.data, numberOfCustomers: 3);
        },
      ),
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
