import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.color, required this.isActive});
  final Color color;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child:
          isActive
              ? CircleAvatar(backgroundColor: Colors.white,radius: 40,child: CircleAvatar(backgroundColor: color, radius: 36))
              : CircleAvatar(backgroundColor: color, radius: 36),
    );
  }
}