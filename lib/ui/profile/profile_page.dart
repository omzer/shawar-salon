import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shawar_salon/services/prefs.dart';

class ProfilePage extends StatelessWidget {
  final Prefs _prefs = Prefs.getInstance();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('profile'.tr), elevation: 0),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildImage(),
          ],
        ),
      ),
    );
  }

  Widget _buildImage() {
    return Align(
      alignment: Alignment.center,
      child: CircleAvatar(
        backgroundImage: AssetImage(
          'lib/images/${_prefs.getProfileImage()}.png',
        ),
        radius: 80,
      ),
    );
  }
}
