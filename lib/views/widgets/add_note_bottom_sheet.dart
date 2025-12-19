import 'package:flutter/material.dart';
import 'package:notes_app_sayed/constants.dart';
import 'package:notes_app_sayed/views/widgets/custom_text_button.dart';
import 'package:notes_app_sayed/views/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                'Add Note Screen',
                style: TextStyle(
                  fontSize: 18,
                  color: kPrimaryColor,
                ),
              ),
              SizedBox(height: 16),
              CustomTextField(
                hintText: 'title',
                color: kPrimaryColor,
              ),
              SizedBox(height: 16),
              CustomTextField(
                hintText: 'content',
                maxLines: 4,
                color: kPrimaryColor,
              ),
              SizedBox(height: 48),
              CustomTextButton(),
            ],
          ),
        ),
      ),
    );
  }
}
