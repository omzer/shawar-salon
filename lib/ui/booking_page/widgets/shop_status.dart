import 'package:flutter/material.dart';

class ShopStatus extends StatelessWidget {
  final bool isOpen;

  ShopStatus({this.isOpen});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: Text(
        isOpen ? 'OPEN' : 'CLOSE',
        style: TextStyle(
          fontFamily: 'Monton',
          fontSize: 48,
          color: isOpen ? null : Colors.red,
        ),
      ),
    );
  }
}
