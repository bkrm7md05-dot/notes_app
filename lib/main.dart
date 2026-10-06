import 'package:flutter/material.dart';
import 'package:project/views/notes_view.dart';

void main() {
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});
//* {Flutter/ Programming/ English /Self[READING] /Entertainment[WATCH]}
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      
       debugShowCheckedModeBanner: false,
    
      theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),

      home: NotesView(),
    );
  }
}