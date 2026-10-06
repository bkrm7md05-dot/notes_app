import 'package:flutter/material.dart';
import 'package:project/constants.dart';

class CustomButton extends StatelessWidget {
  final String title;
  const CustomButton({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    
    return Container(
    
      
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        
        
        color: kPrimaryColor,
        
      ),
      height: 50,
      width: double.infinity,
      
      child: Center(child: Text(title, style:  TextStyle(color: Colors.black, fontSize: 21, fontWeight: FontWeight.bold),), ), //color: Colors.black,
      );
  }
}
