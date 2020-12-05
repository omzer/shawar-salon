import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShaveCounter extends StatelessWidget {
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
          leading: Icon(
            Icons.thumb_up,
            color: Colors.white,
            size: 30,
          ),
          title: Text(
            'shave_count_message'.trArgs(['12']),
            style: TextStyle(fontSize: 22),
          ),
        ),
      ),
    );
  }
}
