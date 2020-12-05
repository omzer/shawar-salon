import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BookingButton extends StatelessWidget {
  final bool enable;

  BookingButton({@required this.enable});

  @override
  Widget build(BuildContext context) {
    final double size = 100;
    final textStyle = TextStyle(fontSize: 18, fontWeight: FontWeight.bold);

    return AvatarGlow(
      endRadius: enable ? size : 0,
      glowColor: Colors.green,
      child: SizedBox(
        width: size,
        height: size,
        child: FloatingActionButton(
          onPressed: enable ? onPressed : null,
          child: Text('book'.tr, style: textStyle),
          backgroundColor: Colors.green,
        ),
      ),
    );
  }

  void onPressed() {}
}
