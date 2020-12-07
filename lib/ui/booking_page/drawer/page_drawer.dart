import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shawar_salon/ui/profile/profile_page.dart';

import 'drawer_booking_count.dart';
import 'drawer_item.dart';

class BookingPageDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 5, sigmaY: 4),
      child: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.transparent,
        child: Column(
          children: <Widget>[
            _buildTopSpacer(context),
            DrawerBookingCounter(),
            _buildProfile(),
            _buildWorkingHours(),
            _buildHistory(),
            _buildSettings(),
          ],
        ),
      ),
    );
  }

  Widget _buildProfile() {
    return DrawerItem(
      icon: Icons.account_circle,
      text: 'profile'.tr,
      direction: ProfilePage(),
    );
  }

  Widget _buildWorkingHours() {
    return DrawerItem(
      icon: Icons.access_time_outlined,
      text: 'working_hours'.tr,
      direction: null,
    );
  }

  Widget _buildHistory() {
    return DrawerItem(
      icon: Icons.history,
      text: 'archive'.tr,
      direction: null,
    );
  }

  Widget _buildSettings() {
    return DrawerItem(
      icon: Icons.settings,
      text: 'settings'.tr,
      direction: null,
    );
  }

  Widget _buildTopSpacer(context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 16, 8, 0),
      width: double.infinity,
      height: 80,
      child: Align(
        alignment: Alignment.centerRight,
        child: IconButton(
          icon: Icon(Icons.arrow_forward_ios_rounded),
          onPressed: () => Navigator.pop(context),
        ),
      ),
    );
  }
}
