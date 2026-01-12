import 'package:flutter/material.dart';
import 'package:notes_app_sayed/constants.dart';
import 'package:notes_app_sayed/views/widgets/custom_text_button.dart';
import 'package:notes_app_sayed/views/widgets/custom_text_form_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  final GlobalKey<FormState> _formKey = GlobalKey();
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      autovalidateMode: autovalidateMode,
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
            onSaved: (value) {
              title = value;
            },
            color: kPrimaryColor,
          ),
          SizedBox(height: 16),
          CustomTextField(
            hintText: 'subTitle',
            onSaved: (value) {
              subTitle = value;
            },
            maxLines: 4,
            color: kPrimaryColor,
          ),
          SizedBox(height: 48),
          CustomTextButton(
            onTap: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),
        ],
      ),
    );
  }
}