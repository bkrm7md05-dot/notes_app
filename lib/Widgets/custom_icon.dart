import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  final Icon icon;
  final void Function()? onPressed;

  const CustomIcon({super.key, required this.icon, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      width: 46,
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.05),
        borderRadius: BorderRadius.circular(16),
      ),
      child: IconButton(onPressed: onPressed, icon: icon),
    );
  }
}
