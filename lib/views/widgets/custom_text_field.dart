import 'package:flutter/material.dart';
import 'package:notes_app_sayed/constants.dart';

class CustomTextField extends StatelessWidget {
   CustomTextField({
    super.key,
     this.maxLines = 1,
    required this.hintText ,
    this.color = Colors.white,
  });

  final int maxLines;
  final String hintText;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: kPrimaryColor,
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(
          fontSize: 12,
          color: color,
        ),
        border: buildBorder(color),
        enabledBorder: buildBorder(color),
        focusedBorder: buildBorder(color),
      ),
    );
  }

  OutlineInputBorder buildBorder([Color? color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(
        color: color ?? Colors.white,
      ),
    );
  }
}
