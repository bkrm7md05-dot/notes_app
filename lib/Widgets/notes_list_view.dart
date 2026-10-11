import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/Cubits/show_notes_cubit.dart';
import 'package:project/Models/note_model.dart';
import 'package:project/Widgets/NoteItem.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ShowNotesCubit, ShowNotesStates>(
      builder: (context, state) {
        BlocProvider.of<ShowNotesCubit>(context).fetchAllNotes();
        List<NoteModel> notes = BlocProvider.of<ShowNotesCubit>(context).notes ?? [];

        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
            itemCount: notes.length,

            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: NoteItem(note: notes[index]),
              );
            },
          ),
        );
      },
    );
  }
}
