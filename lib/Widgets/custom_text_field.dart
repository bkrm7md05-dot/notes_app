import 'package:flutter/material.dart';
import 'package:project/constants.dart';

class CustomTextField extends StatelessWidget {
  final String hint;
  final int maxLines;
  const CustomTextField({super.key, required this.hint,  this.maxLines = 1});

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLines, 
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
        hintText: hint,
        
        hintStyle: TextStyle(color: kPrimaryColor),
        border: BuildBorder(),
        enabledBorder: BuildBorder(),
        focusedBorder: BuildBorder(color: kPrimaryColor),
      ),
    );
  }
}

OutlineInputBorder BuildBorder({Color? color}) {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(16),
    borderSide: BorderSide(color: color ?? Colors.white),
  );
}
