import 'package:flutter/material.dart';
import 'package:project/Models/note_model.dart';
import 'package:project/views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  final NoteModel note;
  const NoteItem({required this.note});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return EditNoteView();
              },
            ),
          );
        },
        child: Container(
          padding: EdgeInsets.only(top: 24, bottom: 24, left: 16, right: 10),

          decoration: BoxDecoration(
            color: Color(0xffFFCC80),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            children: [
              ListTile(
                title: Text(
                  "${note.title}",
                  style: TextStyle(color: Colors.black, fontSize: 26),
                ),

                subtitle: Padding(
                  padding: const EdgeInsets.only(bottom: 16, top: 16),
                  child: Text(
                    "${note.subTitle}",
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(size: 40, Icons.delete, color: Colors.black),
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "${note.date}",
                    style: TextStyle(fontSize: 14, color: Colors.black),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
