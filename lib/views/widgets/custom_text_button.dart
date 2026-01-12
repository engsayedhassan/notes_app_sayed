import 'package:flutter/material.dart';
import 'package:notes_app_sayed/constants.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
    this.onTap,
    required this.title,
    this.isLoading = false,
  });
  final void Function()? onTap;
  final String title;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 55,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child: isLoading
              ? SizedBox(
                height: 24,
                width: 24,
                  child: CircularProgressIndicator(
                    color: Colors.black,
                  ),
                )
              : Text(
                  'Add',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontFamily: 'Poppins',
                  ),
                ),
        ),
      ),
    );
  }
}
