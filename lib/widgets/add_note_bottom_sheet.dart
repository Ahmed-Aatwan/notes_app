import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

import 'custom_button.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController titleController = TextEditingController();
    TextEditingController contentController = TextEditingController();
    return Padding(
      padding: EdgeInsets.only(
        top: 32.0,
        right: 8,
        left: 8,
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomTextField(controller: titleController, hintText: 'Title'),
            const SizedBox(height: 16),
            CustomTextField(controller: contentController, hintText: 'Content', maxLines: 5),
            const SizedBox(height: 16),
            const CustomButton(),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
