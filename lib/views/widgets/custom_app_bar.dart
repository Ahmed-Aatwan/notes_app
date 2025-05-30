import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.icon, required this.text, this.onPressed});
  final IconData icon;
  final String text;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [Text(text, style: const TextStyle(fontSize: 28)), CustomIcon(icon: icon, onPressed:onPressed ,)],
    );
  }
}
