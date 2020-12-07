import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shawar_salon/services/prefs.dart';
import 'package:shawar_salon/ui/profile/profile_image.dart';
import 'package:shawar_salon/ui/profile/profile_input_field.dart';

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
            SizedBox(width: double.infinity, height: 20),
            _buildNameField(),
            SizedBox(height: 20),
            _buildPhoneField(),
          ],
        ),
      ),
    );
  }

  Widget _buildNameField() {
    return ProfileInputField(
      icon: Icons.account_circle,
      hint: 'customer_name'.tr,
      isPhone: false,
      initalValue: _prefs.getUserName(),
      onChange: (name) => this.userName = name,
    );
  }

  Widget _buildPhoneField() {
    return ProfileInputField(
      icon: Icons.phone,
      hint: 'phone_number'.tr,
      initalValue: _prefs.getPhoneNumber(),
      onChange: (number) => this.phoneNumber = number,
      isPhone: true,
    );
  }

  Widget _buildAppBar() {
    return AppBar(
      title: Text('profile'.tr),
      elevation: 0,
      actions: [
        IconButton(icon: Icon(Icons.done), onPressed: onSavePressed),
      ],
    );
  }

  Widget _buildImage() {
    return ProfileImage(
      image: this.profileImage,
      onImageUpdated: (newImage) {
        setState(() => this.profileImage = newImage);
      },
    );
  }

  void onSavePressed() async {
    // todo validate
    await _prefs.writeProfileImage(profileImage);
    await _prefs.writeUserName(userName);
    await _prefs.writePhoneNumber(phoneNumber);
    Get.back();
  }
}
