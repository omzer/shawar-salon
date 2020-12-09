import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shawar_salon/services/prefs.dart';
import 'package:shawar_salon/services/theme_service.dart';
import 'package:shawar_salon/ui/settings_page/theme_item.dart';

import 'language_selector.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  var textStyle;

  @override
  Widget build(BuildContext context) {
    textStyle = TextStyle(fontSize: 18);
    return Scaffold(
      appBar: AppBar(title: Text('settings'.tr), elevation: 0),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8),
              child: Text('colors_theme'.tr, style: textStyle),
            ),
            _buildThemeItems(),
            Container(height: 20),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Text('lang'.tr, style: textStyle),
            ),
            LanguageSelector(onChanged: () => setState(() {})),
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
