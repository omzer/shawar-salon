import 'package:flutter/material.dart';

class ProfileInputField extends StatelessWidget {
  final IconData icon;
  final String hint, initalValue;
  final Function onChange;
  final bool isPhone;

  ProfileInputField({
    @required this.icon,
    @required this.hint,
    this.initalValue,
    @required this.onChange,
    @required this.isPhone,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: Colors.white, size: 35),
      title: TextField(
        keyboardType: isPhone ? TextInputType.phone : null,
        controller: TextEditingController(text: initalValue),
        onChanged: onChange,
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: TextStyle(color: Colors.white70),
        ),
        style: TextStyle(color: Colors.white, fontSize: 22),
      ),
    );
  }
}
