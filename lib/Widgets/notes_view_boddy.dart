import 'package:flutter/material.dart';
import 'package:project/Widgets/app_bar.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(children: [AppBarWidget(), NoteItem()]),
    );
  }
}

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 24, bottom: 24, left: 16, right: 10),

      decoration: BoxDecoration(
        color: Color(0xffFFCC80),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          ListTile(
            title: Text("Flutter Tips", style: TextStyle(color: Colors.black, fontSize: 26),),
            
            subtitle: Padding(
              padding: const EdgeInsets.only(bottom: 16, top: 16),
              child: Text("Build your career with Bakr Mohamed", style: TextStyle(color: Colors.black, fontSize: 16),),
            ),
            trailing: IconButton(onPressed: () {}, icon: Icon(size: 40,
              Icons.delete, color: Colors.black,)),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("14 March 2021", style: TextStyle(fontSize: 14, color: Colors.black),),
            ))
        ],
      ),
    );
  }
}
