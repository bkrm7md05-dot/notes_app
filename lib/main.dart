import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:project/constants.dart';

import 'package:project/views/notes_view.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox(kNotesBox);
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});
  //* {Flutter/ Programming/ English /Self[READING] /Entertainment[WATCH]}
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),

      home: NotesView(),
    );
  }
}
