import 'package:flutter/material.dart';
import 'package:project/Widgets/custom_button.dart';
import 'package:project/Widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          children: 
          [
            CustomTextField( hint: "Title",),
            //!Don't forget! ==>  Everything in flutter is A Widget
            SizedBox(
              height: 15,
            ),
            
            CustomTextField( hint: "Content", maxLines: 5), 
            SizedBox(height: 70,),
            CustomButton(title: 'Add'),
        
          ],
        ),
      ),
    );
  }
}



