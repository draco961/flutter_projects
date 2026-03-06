import 'package:adv_basics/miche_home_screen.dart';
import 'package:adv_basics/start_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient:  LinearGradient(
              begin: AlignmentGeometry.topLeft,
              end: AlignmentGeometry.bottomRight,
              colors: [Colors.deepPurple, Colors.deepPurpleAccent],
            ),
          ),
          child: const StartScreen(),
        ),
      ),
    ),
  );
  // runApp(MaterialApp(home: Scaffold(body: MicheHomeScreen())));
}
