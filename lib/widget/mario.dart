import 'package:flutter/material.dart';
import 'package:mario_game/util/asset_path.dart';

class MyMario extends StatelessWidget {
  const MyMario({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      child: Image.asset(AssetPath.standingMario),
    );
  }
}