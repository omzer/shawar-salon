import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shawar_salon/services/prefs.dart';

class BookingInfo extends StatelessWidget {
  final bool shouldPresent;

  BookingInfo({@required this.shouldPresent});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: shouldPresent ? 100 : 0,
      child: Card(
        margin: EdgeInsets.all(8),
        color: Theme.of(context).accentColor,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              _buildText(),
              Expanded(child: SizedBox(height: 10)),
              _buildCancelBooking(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCancelBooking() {
    return FlatButton.icon(
      onPressed: () => Prefs.getInstance().writeBookingTime(null),
      icon: Icon(Icons.cancel_sharp, color: Colors.white),
      label: Text(
        'cancel'.tr,
        style: TextStyle(
          color: Colors.white,
          fontSize: 16,
        ),
      ),
      color: Colors.red,
    );
  }

  Widget _buildText() {
    return Text(
      'باقي لحجزك: 3 ساعات و 27 دقيقة',
      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
    );
  }
}
