import 'package:flutter/material.dart';
import 'package:project/Widgets/add_note_bottom_sheet.dart';
import 'package:project/Widgets/notes_view_boddy.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(16),
            ),
            context: context,
            builder: (context) {
              return const AddNoteBottomSheet();
            },
          );
        },
        child: Icon(Icons.add),
      ),

      body: NotesViewBody(),
    );
  }
}



