import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shawar_salon/services/prefs.dart';
import 'package:shawar_salon/ui/profile/profile_image.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final Prefs _prefs = Prefs.getInstance();
  String userName, phoneNumber;
  int profileImage;

  @override
  void initState() {
    super.initState();
    this.profileImage = _prefs.getProfileImage();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildImage(),
          ],
        ),
      ),
    );
  }

  Widget _buildAppBar() {
    return AppBar(
      title: Text('profile'.tr),
      elevation: 0,
      actions: [
        IconButton(
          icon: Icon(Icons.done),
          onPressed: () {
            _prefs.writeProfileImage(profileImage);
            Get.back();
          },
        ),
      ],
    );
  }

  Widget _buildImage() {
    return Align(
      alignment: Alignment.center,
      child: ProfileImage(
        image: this.profileImage,
        onImageUpdated: (newImage) {
          setState(() => this.profileImage = newImage);
        },
      ),
    );
  }
}
