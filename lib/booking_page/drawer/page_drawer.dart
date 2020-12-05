import 'dart:ui';

import 'package:flutter/material.dart';

class BookingPageDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 5, sigmaY: 4),
      child: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.transparent,
        child: Column(children: <Widget>[
          _buildTopSpacer(context),
        ]),
      ),
    );
  }

  Widget _buildTopSpacer(context) {
    return Container(
      margin: EdgeInsets.all(8),
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
// profile
// working hours
// prices
// settings
