import 'package:flutter/material.dart';
import 'package:project/Widgets/app_bar.dart';
import 'package:project/Widgets/custom_text_field.dart';

class EditNoteBody extends StatelessWidget {
  const EditNoteBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        children: 
        [
      
          AppBarWidget(),
          SizedBox(height: 20,),
          CustomTextField(hint: 'Title'),
          SizedBox(height: 10,),
      
          CustomTextField(hint: "Content", maxLines: 5,),
          
      
      
      
        ],
      ),
    );
  }
}