import 'package:adv_basics/answer_button.dart';
import 'package:adv_basics/data/questions.dart';
import 'package:flutter/material.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionsScreen> {

  // void Function() onTap() {}

  @override
  Widget build(context) {
    var currentQuestion = questions[0];

    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 10,
        children: [
          Text(currentQuestion.text, style: TextStyle(color: Colors.white)),
          SizedBox(height: 20),
          ...currentQuestion.answers.map((a) => AnswerButton(answerText: a, onTap: () {})) ,
        ],
      ),
    );
  }
}
