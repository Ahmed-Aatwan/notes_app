import 'package:flutter/material.dart';
import 'package:notes_app/views/edit_note_view.dart';
import 'package:notes_app/views/home_view.dart';

void main() {
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {HomeView.id: (context) => const HomeView(),EditNoteView.id: (context)=> const EditNoteView()},
      initialRoute: HomeView.id,
      title: 'Notes App',
      theme: ThemeData(brightness: Brightness.dark,fontFamily: 'Poppins',useMaterial3: true),
    );
  }
}
