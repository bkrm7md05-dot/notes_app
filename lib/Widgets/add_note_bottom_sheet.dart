import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/Cubits/add_note_cubit.dart';
import 'package:project/Cubits/show_notes_cubit.dart';
import 'package:project/Widgets/add_note_form.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),

      child: BlocConsumer<AddNoteCubit, AddNoteState>(
        builder: (context, state) {
          //! Usually this structure is fixed and repetitive

          return AbsorbPointer(
            absorbing: state is AddNoteLoading,
            child: const SingleChildScrollView(child: AddNoteForm()),
          );
        },

        listener: (context, state) {
          if (state is AddNoteFailure) {
            print(' Error :   ${state.errMessage}');
          }
          if (state is AddNoteSuccess) {
            Navigator.pop(context);
            BlocProvider.of<ShowNotesCubit>(context).fetchAllNotes();
          }

          // TODO: implement listener
        },
      ),
    );
  }
}
