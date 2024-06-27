import 'package:flutter/material.dart';

import '../widget/my_buttton.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: Container(
              color: Colors.blue,
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
