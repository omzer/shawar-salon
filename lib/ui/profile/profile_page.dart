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
    this.userName = _prefs.getUserName();
    this.phoneNumber = _prefs.getPhoneNumber();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: onBackPressed,
      child: Scaffold(
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
      ),
    );
  }

  bool _noChangesMade() {
    if (_prefs.getProfileImage() != this.profileImage) return false;
    if (_prefs.getUserName() != this.userName) return false;
    if (_prefs.getPhoneNumber() != this.phoneNumber) return false;

    return true;
  }

  Future<bool> onBackPressed() async {
    if (_noChangesMade()) return true;

    return Get.defaultDialog(
      barrierDismissible: false,
      title: 'be_aware'.tr,
      content: Text('confirm_back_msg'.tr),
      confirm: FlatButton.icon(
        onPressed: () => Get.back(result: true),
        icon: Icon(Icons.exit_to_app),
        label: Text('back'.tr),
        color: Theme.of(context).accentColor,
      ),
      cancel: FlatButton.icon(
        onPressed: () => Get.back(result: false),
        icon: Icon(Icons.edit),
        label: Text('stay_on_page'.tr),
        color: Colors.green,
      ),
      backgroundColor: Theme.of(context).primaryColor,
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
