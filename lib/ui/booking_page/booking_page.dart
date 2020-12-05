import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'drawer/page_drawer.dart';
import 'widgets/booking_btn.dart';
import 'widgets/booking_info.dart';
import 'widgets/shop_status.dart';

class BookingPage extends StatelessWidget {
  final bool shopStatus;
  final int numberOfCustomers;

  BookingPage({
    @required this.shopStatus,
    @required this.numberOfCustomers,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppbar(),
      endDrawer: BookingPageDrawer(),
      body: Column(
        children: [
          ShopStatus(isOpen: shopStatus),
          _buildBackground(),
          BookingInfo(),
          Expanded(child: SizedBox(width: double.infinity)),
          BookingButton(enable: shopStatus),
        ],
      ),
    );
  }

  Widget _buildAppbar() {
    return AppBar(
      elevation: 0,
      title: Text('salon_name'.tr),
      centerTitle: true,
      automaticallyImplyLeading: false,
    );
  }

  Widget _buildBackground() {
    return Image.asset('lib/images/background.png');
  }
}