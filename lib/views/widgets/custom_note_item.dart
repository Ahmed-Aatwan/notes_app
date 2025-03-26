import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/views/edit_note_view.dart';

class CustomNoteItem extends StatelessWidget {
  const CustomNoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, EditNoteView.id);
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 10),
        padding: const EdgeInsets.only(left: 16, top: 16, bottom: 16),
        decoration: BoxDecoration(color: Colors.amber, borderRadius: BorderRadius.circular(16)),
        child: Column(
          children: [
            ListTile(
              title: const Text('Smashin', style: TextStyle(color: Colors.black, fontSize: 28)),
              subtitle: const Padding(
                padding: EdgeInsets.only(top: 16.0, right: 16),
                child: Text(
                  'Smash ur opponents with ur style',
                  style: TextStyle(color: Color(0xff926a32), fontSize: 16),
                ),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: const Icon(FontAwesomeIcons.trash, color: Colors.black, size: 24),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('May 16,2025', style: TextStyle(color: Color(0xff926a32), fontSize: 14)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
