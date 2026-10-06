import 'package:flutter/material.dart';
import 'package:project/Widgets/edit_note_body.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: EditNoteBody(),
    );
  }
}