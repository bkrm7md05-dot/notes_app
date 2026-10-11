import 'package:flutter/foundation.dart' show immutable;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:project/Models/note_model.dart';
import 'package:project/constants.dart';

part 'show_notes_states.dart';

class ShowNotesCubit extends Cubit<ShowNotesStates> {
  ShowNotesCubit() : super(NotesInitial());

  void fetchAllNotes() {
    emit(NotesLoading());

    try {


      //! There's no await in here 
      var notesBox = Hive.box<NoteModel>(kNotesBox);

      emit(NotesSuccess(notes: notesBox.values.toList()));
    } catch (e) {
      emit(NotesFailure(errorMessage: e.toString()));
    }
  }
}
