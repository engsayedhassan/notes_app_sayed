import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app_sayed/constants.dart';
import 'package:notes_app_sayed/models/note_model.dart';

part 'read_notes_state.dart';

class ReadNotesCubit extends Cubit<ReadNotesState> {
  ReadNotesCubit() : super(ReadNotesInitial());

  fetchAllNotes()  {
    try {
      var noteBox = Hive.box<NoteModel>(kNotesBox);
      List<NoteModel> notes = noteBox.values.toList();
      emit(ReadNotesSuccess(notes: notes));
    } on Exception catch (e) {
      emit(ReadNotesFailure(e.toString()));
    }
  }
}
