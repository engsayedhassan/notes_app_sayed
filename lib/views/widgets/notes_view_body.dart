import 'package:flutter/material.dart';
import 'package:notes_app_sayed/views/widgets/custom_widgets/custom_app_bar.dart';
import 'package:notes_app_sayed/views/widgets/note_itme.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 18,
      ),
      child: Column(
        children: [
          SizedBox(
            height: 64,
          ),
          CustomAppBar(),
          SizedBox(
            height: 32,
          ),
          NoteItem(),
        ],
      ),
    );
  }
}
