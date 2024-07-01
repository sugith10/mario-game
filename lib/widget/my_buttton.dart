import 'package:flutter/material.dart';

class MyButtton extends StatelessWidget {
  final IconData icon;
  const MyButtton({required this.icon, super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Container(
          padding: const EdgeInsets.all(10),
          color: Colors.brown[300],
          child: Icon(
            icon,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
