import 'package:flutter/material.dart';
import 'package:project/Models/note_model.dart';
import 'package:project/Widgets/edit_note_body.dart';

class EditNoteView extends StatelessWidget {
  final NoteModel note;
   const EditNoteView({super.key, required this.note}) ;
/*


  (context) => BlocProvider.value(
      value: BlocProvider.of<ShowNotesCubit>(context), // تمرير نفس نسخة الـ Cubit الحالية
      child: EditNoteBody(note: note),
    ),

 */
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: EditNoteBody(note: note,));
  }
}
