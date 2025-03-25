import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.black,
        backgroundColor: kPrimaryColor,
        minimumSize: const Size(double.maxFinite, 50),
      ),
      child: const Text('Add', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
    );
  }
}
