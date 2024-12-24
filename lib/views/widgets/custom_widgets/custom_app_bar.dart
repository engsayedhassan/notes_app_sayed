import 'package:flutter/material.dart';
import 'package:notes_app_sayed/views/widgets/custom_widgets/custom_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text(
          "Notes",
          style: TextStyle(
            fontSize: 24,
          ),
        ),
        Spacer(),
        CustomIcon(),
      ],
    );
  }
}
