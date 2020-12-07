import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:get/get.dart';
import 'package:shawar_salon/services/keys.dart';
import 'package:shawar_salon/services/prefs.dart';

import 'drawer/page_drawer.dart';
import 'widgets/booking_btn.dart';
import 'widgets/booking_info.dart';
import 'widgets/shop_status.dart';

class BookingPage extends StatefulWidget {
  final bool isShopOpen;
  final int numberOfCustomers;
  bool _isBooked;

  BookingPage({
    @required this.isShopOpen,
    @required this.numberOfCustomers,
  });

  @override
  _BookingPageState createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  final prefs = Prefs.getInstance();

  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((_) => _listenToBooking());
  }

  @override
  Widget build(BuildContext context) {
    _listenToBooking();
    return Scaffold(
      appBar: _buildAppbar(),
      endDrawer: BookingPageDrawer(),
      body: Column(
        children: [
          ShopStatus(isOpen: widget.isShopOpen),
          _buildBackground(),
          BookingInfo(shouldPresent: widget._isBooked ?? false),
          Expanded(child: SizedBox(width: double.infinity)),
          BookingButton(enable: widget.isShopOpen && !prefs.hasBooking()),
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

  void _listenToBooking() {
    prefs.getBox().listenKey(Keys.BOOKING_TIME, (value) {
      setState(() => widget._isBooked = (value != null));
    });
  }
}
