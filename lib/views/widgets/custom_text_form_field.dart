import 'package:flutter/material.dart';
import 'package:notes_app_sayed/constants.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({
    super.key,
    this.maxLines = 1,
    required this.hintText,
    this.color = Colors.white,
    this.onSaved,
  });

  final int maxLines;
  final String hintText;
  final Color color;
  final Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: (value) {
        if (value == null || value.trim().isEmpty) {
          return 'this field is required';
        } else {
          return null;
        }
      },
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
