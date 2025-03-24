import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController titleController = TextEditingController();
    TextEditingController contentController = TextEditingController();
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 50.0, horizontal: 8),
      child: Column(
        children: [
          CustomTextField(controller: titleController, hintText: 'Title'),
          const SizedBox(height: 16),
          CustomTextField(
            controller: contentController,
            hintText: 'Content',
            maxLines: 5,
          ),
          const Spacer(flex: 1),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.black,
              backgroundColor: kprimaryColor,
              minimumSize: const Size(double.maxFinite, 50),
            ),
            child: const Text('Add', style: TextStyle(fontSize: 18)),
          ),
        ],
      ),
    );
  }
}
