import 'package:flutter/material.dart';

import '../theme.dart';

class PostFormField extends StatelessWidget {
  final num maxLines;
  final String hintText;

  PostFormField({
    this.hintText,
    this.maxLines,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: textBlackColor,
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: textBlackColor,
            width: 2,
          ),
        ),
      ),
    );
  }
}
