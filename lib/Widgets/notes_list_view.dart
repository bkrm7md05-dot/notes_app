import 'package:flutter/material.dart';
import 'package:project/Widgets/NoteItem.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 4),
            child: const NoteItem(),
          );
        },
      ),
    );
  }
}
