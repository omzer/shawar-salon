import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DrawerItem extends StatelessWidget {
  final IconData icon;
  final String text;
  final Widget direction;

  DrawerItem({
    @required this.icon,
    @required this.text,
    @required this.direction,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 80,
      child: Card(
        color: Colors.white.withOpacity(.5),
        elevation: 4,
        margin: EdgeInsets.all(8),
        child: ListTile(
          onTap: () {
            Navigator.pop(context);
            Get.to(direction);
          },
          leading: Icon(icon, size: 30, color: Colors.white),
          title: Text(text, style: TextStyle(fontSize: 22)),
          trailing: Icon(Icons.arrow_back_outlined, size: 30),
        ),
      ),
    );
  }
}
