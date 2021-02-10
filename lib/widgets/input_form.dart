import 'package:flutter/material.dart';
import 'package:task_1/theme.dart';

class InputForm extends StatelessWidget {
  final TextInputType keyboardType;
  final String hintText;
  final IconData icon;
  final bool obscureText;

  InputForm({
    this.icon,
    this.hintText,
    this.keyboardType,
    this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      keyboardType: keyboardType,
      cursorColor: textBlackColor,
      decoration: InputDecoration(
        focusColor: textBlackColor,
        hintText: hintText,
        hintStyle: TextStyle(color: textWhiteColor),
        prefixIcon: Icon(
          icon,
          color: textWhiteColor,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: textBlackColor,
            width: 2,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: textWhiteColor,
            width: 2,
          ),
        ),
      ),
    );
  }
}
