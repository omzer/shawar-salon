import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserInfo extends StatelessWidget {
  final int userImage;
  final String userName;
  final String userPhone;
  final int shaveCount;

  UserInfo({
    @required this.userImage,
    @required this.userName,
    @required this.userPhone,
    this.shaveCount,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 140,
      child: Stack(
        children: [
          Positioned(
            child: _buildUserAvatar(),
            top: 10,
            right: 10,
          ),
          Positioned(
            child: _buildName(),
            top: 10,
            right: 140,
          ),
          Positioned(
            child: _buildPhoneNumber(),
            top: 55,
            right: 140,
          ),
          Positioned(
            child: _buildLocation(),
            top: 85,
            right: 140,
          ),
        ],
      ),
    );
  }

  Widget _buildUserAvatar() {
    return CircleAvatar(
      radius: 60,
      backgroundImage: AssetImage('lib/images/$userImage.png'),
    );
  }

  Widget _buildName() {
    return Row(
      children: [
        Icon(Icons.account_circle_rounded),
        SizedBox(width: 10),
        Text(userName, style: TextStyle(fontSize: 28))
      ],
    );
  }

  Widget _buildPhoneNumber() {
    return Row(
      children: [
        Icon(Icons.phone_android_outlined),
        SizedBox(width: 10),
        Text(userPhone, style: TextStyle(fontSize: 22))
      ],
    );
  }

  Widget _buildLocation() {
    return Row(
      children: [
        Icon(Icons.location_on),
        SizedBox(width: 10),
        Text(
          'you_shaved_message'.trArgs([shaveCount.toString()]),
          style: TextStyle(fontSize: 22),
        )
      ],
    );
  }
}
