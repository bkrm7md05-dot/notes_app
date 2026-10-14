import 'package:flutter/material.dart';
import 'package:project/Widgets/custom_icon.dart';

class CustomAppBar extends StatelessWidget {
  final String? title;
  Icon icon;
  final void Function()? onPressed;
  CustomAppBar({
    super.key,
    this.title = " ",
    this.onPressed,
    required this.icon,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("$title", style: TextStyle(fontSize: 25, color: Colors.white)),

          CustomIcon(icon: icon, onPressed:  onPressed,),
        ],
      ),
    );
  }
}
