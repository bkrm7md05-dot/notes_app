import 'package:flutter/material.dart';
import 'package:project/Widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: 
        [
          CustomTextField( hint: "Title",),
          SizedBox(
            height: 15,
          ),
          
          CustomTextField( hint: "Content", maxLines: 5)

        ],
      ),
    );
  }
}



