import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app_sayed/constants.dart';
import 'package:notes_app_sayed/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app_sayed/models/note_model.dart';
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
      child: Padding(
        padding: const EdgeInsets.all(12),
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
            BlocBuilder<AddNoteCubit, AddNoteState>(
              builder: (context, state) {
                return CustomTextButton(
                  isLoading: state is AddNoteLoading ? true : false,
                  title: 'Add',
                  onTap: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                      var note = NoteModel(
                        title: title!,
                        subTitle: subTitle!,
                        date: DateTime.now().toString(),
                        color: Colors.blue.value,
                      );
                      BlocProvider.of<AddNoteCubit>(context).addNote(note);
                    } else {
                      autovalidateMode = AutovalidateMode.always;
                      setState(() {});
                    }
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
