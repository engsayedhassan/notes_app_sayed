import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app_sayed/cubits/read_notes_cubit/read_notes_cubit.dart';
import 'package:notes_app_sayed/views/widgets/note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ReadNotesCubit, ReadNotesState>(
      builder: (context, state) {
            print("ddddddd ${state.runtimeType}");

        return ListView.builder(
          itemCount: state is ReadNotesSuccess ? state.notes.length : 0,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child:  NoteItem(),
            );
          },
        );
      },
    );
  }
}
