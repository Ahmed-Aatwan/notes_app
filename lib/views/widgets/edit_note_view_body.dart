import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/widgets/custom_app_bar.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  @override
  Widget build(BuildContext context) {
    TextEditingController editTitleController = TextEditingController();
    TextEditingController editContentController = TextEditingController();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 32),
      child: Column(
        children: [
          CustomAppBar(
            text: 'Edit Note',
            icon: Icons.check,
            onPressed: () {
              if (editTitleController.text.isNotEmpty) {
                widget.note.noteTitle = editTitleController.text;
              }
              if (editContentController.text.isNotEmpty) {
                widget.note.noteContent = editContentController.text;
              }
              widget.note.save();
              BlocProvider.of<NotesCubit>(context).fetchNotes();
              Navigator.pop(context); 
            },
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.05),
          CustomTextField(hintText: 'Previous Title: ${widget.note.noteTitle}', controller: editTitleController),

          SizedBox(height: MediaQuery.of(context).size.height * 0.05),
          CustomTextField(hintText: 'Previous Content: \n ${widget.note.noteContent}', controller: editContentController, maxLines: 5),
        ],
      ),
    );
  }
}
