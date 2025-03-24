import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({super.key, required this.icon});
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon:  Icon(icon, size: 28),
      style: const ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(Color(0xff3b3b3b)),
        foregroundColor: WidgetStatePropertyAll(Colors.white),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(16))),
        ),
      ),
    );
  }
}
