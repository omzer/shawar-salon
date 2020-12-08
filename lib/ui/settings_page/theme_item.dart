import 'package:flutter/material.dart';
import 'package:shawar_salon/services/prefs.dart';
import 'package:shawar_salon/services/theme_service.dart';

class ThemeItem extends StatelessWidget {
  final int themeIndex;
  final Function onThemeChanged;
  final double _size = 60;
  ThemeData _theme;
  bool _isSelected;

  ThemeItem({
    @required this.themeIndex,
    @required this.onThemeChanged,
  });

  @override
  Widget build(BuildContext context) {
    _theme = ThemeService.getTheme(themeIndex);
    _isSelected = Prefs.getInstance().getTheme() == themeIndex;
    return InkWell(
      onTap: onColorPressed,
      child: SizedBox(
        height: _size,
        width: _size,
        child: Card(
          margin: const EdgeInsets.all(8),
          color: _theme.accentColor,
          child: Padding(
            padding: EdgeInsets.all(_isSelected ? 4 : 0),
            child: _buildContainer(),
          ),
        ),
      ),
    );
  }

  Widget _buildContainer() {
    return Container(
      decoration: new BoxDecoration(
        gradient: new LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            _theme.primaryColor,
            _theme.scaffoldBackgroundColor,
            _theme.accentColor,
          ],
        ),
      ),
    );
  }

  void onColorPressed() {
    ThemeService.changeTheme(themeIndex);
    Prefs.getInstance().writeTheme(themeIndex);
    onThemeChanged();
  }
}
