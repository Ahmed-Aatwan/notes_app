import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.maxLines = 1,
    required this.hintText,
    required this.controller,
  });
  final int? maxLines;
  final String hintText;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      cursorColor: kprimaryColor,
      maxLines: maxLines,
      decoration: InputDecoration(
        hintStyle: const TextStyle(color: kprimaryColor),
        hintText: hintText,
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(kprimaryColor),
      ),
    );
  }

  OutlineInputBorder buildBorder([Color? color]) => OutlineInputBorder(
    borderRadius: BorderRadius.circular(16),
    borderSide: BorderSide(color: color ?? Colors.white),
  );
}
