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
        child: Column(children: <Widget>[AppBar()]),
      ),
    );
  }
}
// profile
// working hours
// prices
// settings
