import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/Cubits/add_note_cubit.dart';
import 'package:project/Models/note_model.dart';
import 'package:project/Widgets/custom_button.dart';
import 'package:project/Widgets/custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  //! ful
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey =
      GlobalKey(); //!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

  AutovalidateMode autoValidateMode =
      AutovalidateMode.disabled; //! Auto Validate

  String? title, subTitle; //!!!!!!!!!!! Recieve data in here

  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: autoValidateMode,
      key: formKey, //!1111111111

      child: Column(
        children: [
          CustomTextField(
            hint: "Title",
            onSaved: (data) {
              //!!!!!!!!!!!
              title = data;
            },
          ),
          //Don't forget! ==>  Everything in flutter is A Widget
          SizedBox(height: 15),

          CustomTextField(
            hint: "Content",
            maxLines: 5,
            onSaved: (data) {
              subTitle = data;
            },
          ),
          SizedBox(height: 70),
          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
              return CustomButton(
                isLoading: state is AddNoteLoading ,
                title: 'Add',
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    NoteModel note = NoteModel(
                      title: title!,
                      subTitle: subTitle!,
                      color: Colors.black.toARGB32(),
                      date:'${DateTime.now().month}/${DateTime.now().day}/${DateTime.now().year}',
                    );
                    //! Trigger cubit
                    BlocProvider.of<AddNoteCubit>(context).addNote(note);
                  } else {
                    autoValidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
