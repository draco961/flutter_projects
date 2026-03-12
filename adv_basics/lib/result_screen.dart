import 'package:adv_basics/answer_button.dart';
import 'package:adv_basics/data/questions.dart';
import 'package:adv_basics/question_summary.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final List<String> chosenAnswers;

  const ResultScreen({super.key, required this.chosenAnswers});

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': chosenAnswers[i],
      });
    }
    // for (var chosenAnswer in chosenAnswers) {
    //   summary.add({ 'question_index': 1,  chosenAnswer});
    // }

    return summary;
  }

  @override
  Widget build(context) {
    final summaryData = getSummaryData();

    final numberTotalQuestions = questions.length;
    final numberCorrectQuestion = summaryData.where((data) {
      return data['user_answer'] == data['correct_answer'];
    }).length;
    
    //'You answered ${} out of ${} questions correctly!'

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('You answered $numberCorrectQuestion out of $numberTotalQuestions questions correctly!'),
            const SizedBox(height: 30),
            //const Text('List of answers and questions ...'),
            QuestionSummary(summaryData),
            const SizedBox(height: 30),
            TextButton(onPressed: () {}, child: Text('Restart Quid!')),
          ],
        ),
      ),
    );
  }
}
