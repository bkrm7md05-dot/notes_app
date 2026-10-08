import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:project/Cubits/add_note_cubit.dart';
import 'package:project/Models/note_model.dart';
import 'package:project/constants.dart';

import 'package:project/views/notes_view.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox(kNotesBox);
  Hive.registerAdapter(NoteModelAdapter());
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});
  //* {Flutter/ Programming/ English /Self[READING] /Entertainment[WATCH]}
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: 
      [
        BlocProvider(create: (context) => AddNoteCubit(),)

      ],
        
      child: MaterialApp(
        debugShowCheckedModeBanner: false,

        theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),

        home: NotesView(),
      ),
    );
  }
}
