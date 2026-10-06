import 'package:flutter/material.dart';
import 'package:project/Widgets/app_bar.dart';
import 'package:project/Widgets/notes_list_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Column(
        children: [
          
          AppBarWidget(),
          Expanded(child: NotesListView()),
        ],
      ),
    );
  }
  
}

