part of 'show_notes_cubit.dart';

@immutable
abstract class ShowNotesStates {}

class NotesInitial extends ShowNotesStates {}

class NotesSuccess extends ShowNotesStates {
  final List<NoteModel> notes;
  NotesSuccess({required this.notes});
}

class NotesFailure extends ShowNotesStates {
  final String errorMessage;
  NotesFailure({required this.errorMessage});
}

class NotesLoading extends ShowNotesStates {}
