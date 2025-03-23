import 'package:flutter/material.dart';

import '../widgets/notes_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static String id = 'HomePage';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: NotesViewBody());
  }
}

