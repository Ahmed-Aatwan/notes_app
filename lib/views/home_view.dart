import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/views/widgets/add_note_bottom_sheet.dart';

import 'widgets/notes_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static String id = 'HomePage';
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          foregroundColor: Colors.black,
          backgroundColor: const Color(0xff60f0e7),
          shape: const CircleBorder(),
          onPressed: () {
            showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              builder: (context) => const AddNoteBottomSheet(),
            );
          },
          child: const Icon(Icons.add),
        ),
        body: const NotesViewBody(),
      ),
    );
  }
}
