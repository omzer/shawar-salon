import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('settings'.tr), elevation: 0),
      floatingActionButton: FloatingActionButton(
        onPressed: aa,
        child: Icon(Icons.gamepad_sharp),
      ),
    );
  }

  void aa() async {
    Get.changeTheme(ThemeData.light());
  }
}
