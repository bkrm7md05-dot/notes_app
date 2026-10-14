import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/Cubits/show_notes_cubit.dart';
import 'package:project/Models/note_model.dart';
import 'package:project/Widgets/custom_app_bar.dart';
import 'package:project/Widgets/custom_text_field.dart';

class EditNoteBody extends StatefulWidget {
  final NoteModel note;
   const EditNoteBody({super.key, required this.note});

  @override
  State<EditNoteBody> createState() => _EditNoteBodyState();
}

class _EditNoteBodyState extends State<EditNoteBody> {
  String? title, content;
  @override
  Widget build(BuildContext context)  {
    return Scaffold(
      body: Column(
        //! KILL YOUR AURA */
        children: [
          CustomAppBar(
            title: "Edit Note",
            icon: 
                Icon(Icons.check),
                
              onPressed: () {
              widget.note.title = title ?? widget.note.title;
              widget.note.subTitle = content ?? widget.note.subTitle;
               widget.note.save();
                BlocProvider.of<ShowNotesCubit>(context).fetchAllNotes(); 

                 
                Navigator.pop(context);
            },
          ),
          const SizedBox(height: 20),
          CustomTextField(
            hint: widget.note.title,
            onChanged: (data) {
              title = data;
            },
          ),
          const SizedBox(height: 10),

          CustomTextField(
            hint: widget.note.subTitle,
            maxLines: 5,
            onChanged: (data) {
              content = data;
            },
          ),
        ],
      ),
    );
  }
}
