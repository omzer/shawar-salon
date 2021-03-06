import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shawar_salon/services/prefs.dart';

class BookingButton extends StatelessWidget {
  final bool enable;

  BookingButton({@required this.enable});

  @override
  Widget build(BuildContext context) {
    final double size = 100;
    final textStyle = TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    );
    final accentColor = Theme.of(context).accentColor;
    return AvatarGlow(
      endRadius: enable ? size : 0,
      glowColor: accentColor,
      child: SizedBox(
        width: size,
        height: size,
        child: FloatingActionButton(
          onPressed: enable ? onPressed : null,
          child: Text('book'.tr, style: textStyle),
          backgroundColor: accentColor,
        ),
      ),
    );
  }

  void onPressed() {
    Prefs.getInstance().writeBookingTime('helisNullOrBlank');
  }
}
