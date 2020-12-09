import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shawar_salon/services/prefs.dart';

class LanguageSelector extends StatelessWidget {
  final Function onChanged;
  final Prefs _prefs = Prefs.getInstance();

  LanguageSelector({@required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return CupertinoSlidingSegmentedControl(
      padding: const EdgeInsets.all(4),
      backgroundColor: Colors.grey,
      thumbColor: Theme.of(context).accentColor,
      groupValue: _prefs.getLanguage(),
      children: const <String, Widget>{
        'ar': Text("عربي"),
        'en': Text("English"),
      },
      onValueChanged: (selectedLanguage) {
        _prefs.writeLanguage(selectedLanguage);
        Get.updateLocale(Locale(selectedLanguage));
        onChanged();
      },
    );
  }
}
