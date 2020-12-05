import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shawar_salon/booking_page/drawer/page_drawer.dart';
import 'package:shawar_salon/booking_page/widgets/booking_btn.dart';
import 'package:shawar_salon/booking_page/widgets/booking_info.dart';
import 'package:shawar_salon/booking_page/widgets/shop_status.dart';

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
    );
  }

  Widget _buildBackground() {
    return Image.asset('lib/images/background.png');
  }
}
