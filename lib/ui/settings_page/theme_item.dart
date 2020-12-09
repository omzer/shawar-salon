import 'package:flutter/material.dart';
import 'package:shawar_salon/services/prefs.dart';
import 'package:shawar_salon/services/theme_service.dart';

class ThemeItem extends StatelessWidget {
  final int themeIndex;
  final Function themeChanged;

  ThemeItem({@required this.themeIndex, @required this.themeChanged});

  @override
  Widget build(BuildContext context) {
    final _theme = ThemeService.getTheme(themeIndex);
    return InkWell(
      onTap: onColorPressed,
      child: CircleAvatar(
        radius: 30,
        backgroundColor: _theme.primaryColor,
        child: Icon(Icons.color_lens, color: _theme.accentColor),
      ),
    );
  }

  void onColorPressed() {
    ThemeService.changeTheme(themeIndex);
    Prefs.getInstance().writeTheme(themeIndex);
    themeChanged();
  }
}
