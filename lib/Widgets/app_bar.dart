import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Notes App", style: TextStyle(fontSize: 25, color: Colors.white)),
          CustomSearchIcon(),
        ],
      ),
    );
  }
}



class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
    height: 46,
    width: 46,     
      decoration: BoxDecoration( 
        color: Colors.white.withValues(alpha: 0.05), 
        borderRadius: BorderRadius.circular(16),
      ),
      child: Icon(Icons.search, size: 28,),
    );
  }
}