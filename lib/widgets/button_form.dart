import 'package:flutter/material.dart';

class ButtonForm extends StatelessWidget {
  final String text;
  final Color color;
  final Function press;

  ButtonForm({
    this.text,
    this.color,
    this.press,
  });

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: color,
      onPressed: press,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50),
      ),
      padding: EdgeInsets.symmetric(horizontal: 120, vertical: 20),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 16,
        ),
      ),
    );
  }
}
