import 'package:hive/hive.dart';


part 'note_model.g.dart';

@HiveType(typeId: 0)  //! per class
class NoteModel extends HiveObject {
  

  @HiveField(0)  //! per field in the class 
  final String title;

  @HiveField(1)
  final String subTitle;

  @HiveField(2)
  final String date;

  @HiveField(3)
  final int color;

  
  NoteModel({ required this.title, required this.subTitle, required this.color,required this.date});
}
