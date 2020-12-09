import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shawar_salon/services/prefs.dart';
import 'package:shawar_salon/services/theme_service.dart';
import 'package:shawar_salon/ui/settings_page/theme_item.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('settings'.tr), elevation: 0),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('colors_theme'.tr),
            _buildThemeItems(),
          ],
        ),
      ),
    );
  }

  Widget _buildThemeItems() {
    final List<Widget> themes = [];
    final selected = Prefs.getInstance().getTheme();

    for (int i = 0; i < ThemeService.getThemesCount(); i++) {
      if (i == selected) continue;
      themes.add(ThemeItem(themeIndex: i, themeChanged: () => setState(() {})));
    }

    return SizedBox(
      width: double.infinity,
      child: Wrap(alignment: WrapAlignment.spaceEvenly, children: themes),
    );
  }
}
