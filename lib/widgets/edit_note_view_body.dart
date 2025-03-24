import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController editTitleController= TextEditingController();
    TextEditingController editContentController= TextEditingController();
    return  Padding(
      padding:const EdgeInsets.symmetric(horizontal: 24.0, vertical: 32),
      child: Column(
        children: [
          const CustomAppBar(
            text: 'Edit Note',
            icon: Icons.check,
          ),
          SizedBox(height: MediaQuery.of(context).size.height*0.05,),
          CustomTextField(hintText: 'Edit Title', controller: editTitleController),
          
          SizedBox(height: MediaQuery.of(context).size.height*0.05,),
          CustomTextField(hintText: 'Edit Content', controller: editContentController,maxLines: 5),
        ],
      ),
    );
  }
}