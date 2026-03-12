import 'package:adv_basics/data/questions.dart';
import 'package:adv_basics/question_screen.dart';
import 'package:adv_basics/result_screen.dart';
import 'package:adv_basics/start_screen.dart';
import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  var activeScreen = 'start-screen';
  List<String> selectedAnswers = [];

  @override
  void initState() {
    super.initState();
  }

  void switchScreen() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  void chooseAnswer(String answer) {
    print('answer : $answer');
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      // display result screen
      setState(() {
        activeScreen = 'results-screen';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget currentScreen = StartScreen(switchScreen);

    if (activeScreen == 'question-screen')
      currentScreen = QuestionsScreen(onSelectedChooseAnswer: chooseAnswer);

    if (activeScreen == 'results-screen') currentScreen = ResultScreen(chosenAnswers: [...selectedAnswers],);

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: AlignmentGeometry.topLeft,
              end: AlignmentGeometry.bottomRight,
              colors: [Colors.deepPurple, Colors.deepPurpleAccent],
            ),
          ),
          child: currentScreen,
        ),
      ),
    );
  }
}
