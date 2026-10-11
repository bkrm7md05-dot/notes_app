import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:project/Models/note_model.dart';
import 'package:project/constants.dart';
part 'add_note_states.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

   Future<void> addNote(NoteModel note) async {
    emit(AddNoteLoading());

    try {


      //?
      await Future.delayed(const Duration(milliseconds: 500));
     
     
      var notesBox = Hive.box<NoteModel>(kNotesBox);
      
      await notesBox.add(note);
      emit(AddNoteSuccess());
    } catch (e) {
      emit(AddNoteFailure(e.toString()));
    }
  }
}
