import 'package:flutter/material.dart';

const textColor = Color.fromARGB(255, 212, 206, 235);

class MicheHomeScreen extends StatelessWidget {
  const MicheHomeScreen({super.key});
  

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(50),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: AlignmentDirectional.topStart,
          end: AlignmentDirectional.bottomEnd,
          colors: [
            const Color.fromARGB(255, 96, 31, 207),
            const Color.fromARGB(255, 62, 36, 131),
          ],
        ),
      ),
      child: Column(
        spacing: 50,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/quiz-logo.png'),
          Text(
            'Learn Flutter the fun way!',
            style: TextStyle(fontSize: 20, color: textColor),
          ),
          OutlinedButton(
            onPressed: () {},

            child: Text('Start quiz', style: TextStyle(color: textColor)),
          ),
        ],
      ),
    );
  }
}
