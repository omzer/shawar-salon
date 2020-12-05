import 'dart:ui';

import 'package:flutter/material.dart';

import 'drawer_item.dart';
import 'shave_counter.dart';

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
            ShaveCounter(),
            _buildProfile(),
            _buildWorkingHours(),
            _buildSettings(),
          ],
        ),
      ),
    );
  }

  Widget _buildProfile() {
    return DrawerItem(
      icon: Icons.account_circle,
      text: 'معلومات الحساب',
      direction: null,
    );
  }

  Widget _buildWorkingHours() {
    return DrawerItem(
      icon: Icons.access_time_outlined,
      text: 'ساعات العمل',
      direction: null,
    );
  }

  Widget _buildSettings() {
    return DrawerItem(
      icon: Icons.settings,
      text: 'إعدادات التطبيق',
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