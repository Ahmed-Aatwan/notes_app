import 'package:flutter/material.dart';
import 'add_note_form.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 32.0,
        right: 8,
        left: 8,
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      child: const SingleChildScrollView(child: AddNoteForm()),
    );
  }
}

