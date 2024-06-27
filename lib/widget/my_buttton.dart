import 'package:flutter/material.dart';

class MyButtton extends StatelessWidget {
  final IconData icon;
  const MyButtton({required this.icon, super.key});

  @override
  Widget build(BuildContext context) {
    return  ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Container(
        color: Colors.brown[300],
        child: Icon(icon),
      ),
    );
  }
}