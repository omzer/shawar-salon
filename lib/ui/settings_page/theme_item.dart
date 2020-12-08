import 'package:flutter/material.dart';
import 'package:shawar_salon/services/prefs.dart';
import 'package:shawar_salon/services/theme_service.dart';

class ThemeItem extends StatelessWidget {
  final int themeIndex;
  final Function onThemeChanged;
  ThemeData _theme;

  ThemeItem({
    @required this.themeIndex,
    @required this.onThemeChanged,
  });

  @override
  Widget build(BuildContext context) {
    _theme = ThemeService.getTheme(themeIndex);
    if (Prefs.getInstance().getTheme() == themeIndex) return Container();

    return InkWell(
      onTap: onColorPressed,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: _buildContainer(),
      ),
    );
  }

  Widget _buildContainer() {
    return CircleAvatar(
      radius: 30,
      backgroundColor: _theme.primaryColor,
      child: Icon(Icons.color_lens, color: _theme.accentColor),
    );
  }

  void onColorPressed() {
    ThemeService.changeTheme(themeIndex);
    Prefs.getInstance().writeTheme(themeIndex);
    onThemeChanged();
  }
}
