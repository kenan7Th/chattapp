import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
  CustomTextField({this.myhintext, this.myonChanged});
  String? myhintext;
  Function(String)? myonChanged;
  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: myonChanged,
      decoration: InputDecoration(
        hintText: myhintext,
        hintStyle: TextStyle(
          color: Colors.white,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.red,
          ),
        ),
        border: OutlineInputBorder(
            borderSide: BorderSide(
          color: Colors.white,
        )),
      ),
    );
  }
}
