import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shawar_salon/services/api.dart';
import 'package:shawar_salon/ui/booking_page/booking_page.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildLoading(),
          ],
        ),
      ),
    );
  }

  Widget _buildLoading() {
    return FutureBuilder(
      future: API.getShopStatus(),
      builder: (_, snap) {
        if (snap.connectionState == ConnectionState.waiting)
          return CircularProgressIndicator();

        if (snap.hasError || snap.data == null)
          return Text('connection_error'.tr);
        _startNextPage(snap);
        return Text('loading_success'.tr);
      },
    );
  }

  void _startNextPage(snap) async {
    await Future.delayed(Duration(seconds: 1));
    Get.off(BookingPage(shopStatus: snap.data, numberOfCustomers: 3));
  }
}
