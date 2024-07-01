import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mario_game/widget/mario.dart';

import '../widget/my_buttton.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static double marioX = 0;
  static double marioY = 1;
  double time = 0;
  double height = 0;
  double initialHeight = marioY;

  void preJump() {
    time = 0;
    initialHeight = marioY;
  }

  void jump() {
    preJump();
    Timer.periodic(const Duration(milliseconds: 50), (timer) {
      time += 0.05;
      height = -4.9 * time * time + 5 * time;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: Container(
              color: Colors.blue,
              child: AnimatedContainer(
                alignment: Alignment(marioX, marioY),
                duration: Duration(milliseconds: 0),
                child: MyMario(),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.brown,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MyButtton(
                    icon: Icons.arrow_back,
                  ),
                  MyButtton(
                    icon: Icons.arrow_upward,
                  ),
                  MyButtton(
                    icon: Icons.arrow_forward,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
