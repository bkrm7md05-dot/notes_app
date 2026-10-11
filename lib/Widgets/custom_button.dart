import 'package:flutter/material.dart';
import 'package:project/constants.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final bool isLoading;

  final   VoidCallback onTap  ;
  const CustomButton({super.key, required this.title, required  this.onTap,  this.isLoading=false});

  @override
  Widget build(BuildContext context) {
    
    return GestureDetector(
      onTap: onTap,
      child: Container(
      
        
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          
          
          color: kPrimaryColor,
          
          
        ),
        height: 50,
        width: double.infinity,
        
        child: Center(child: isLoading ? 
             SizedBox(

              height: 24,
              width: 24,
                                child: CircularProgressIndicator(color: Colors.black,))
        : Text(title, style:  TextStyle(color: Colors.black, fontSize: 21, fontWeight: FontWeight.bold),), ), //color: Colors.black,
        ),
    );
  }
}
