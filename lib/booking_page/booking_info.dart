import 'package:flutter/material.dart';

class BookingInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 100,
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
      onPressed: () {},
      icon: Icon(Icons.cancel_outlined, color: Colors.white),
      label: Text(
        'إلغاء الحجز',
        style: TextStyle(
          color: Colors.white,
          fontSize: 16,
        ),
      ),
      color: Colors.red.withOpacity(0.76),
    );
  }

  Widget _buildText() {
    return Text(
      'باقي لحجزك: 3 ساعات و 27 دقيقة',
      style: TextStyle(
        fontSize: 18,
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
