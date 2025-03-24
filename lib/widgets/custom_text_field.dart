import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, this.contentPadding, required this.hintText, required this.controller});
  final EdgeInsetsGeometry? contentPadding;
  final String hintText;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        contentPadding: contentPadding,
        hintStyle: const TextStyle(color: Color(0xff60f0e7)),
        hintText: hintText,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
      ),
    );
  }
}
