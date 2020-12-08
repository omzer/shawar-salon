import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shawar_salon/services/prefs.dart';

class DrawerBookingCounter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 80,
      child: Card(
        color: Theme.of(context).accentColor,
        elevation: 4,
        margin: EdgeInsets.all(8),
        child: ListTile(
          leading: Icon(Icons.done_all, size: 30),
          title: Text(
            'shave_count_message'.trArgs([_getNumberOfPreviousBookings()]),
            style: TextStyle(fontSize: 22),
          ),
        ),
      ),
    );
  }

  String _getNumberOfPreviousBookings() {
    return Prefs.getInstance().getBookingCount().toString();
  }
}
