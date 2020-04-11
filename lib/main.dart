import 'package:flutter/material.dart';
import 'quiz.dart';
import 'quizCard.dart';

void main() => runApp(MaterialApp(
      home: QuizList(),
    ));

class QuizList extends StatefulWidget {
  @override
  _QuizListState createState() => _QuizListState();
}

class _QuizListState extends State<QuizList> {
  List<Quiz> quizes = [
    Quiz(ques: 'What is the color of sky?', ans: 'Blue'),
    Quiz(ques: 'What is your name?', ans: 'Kshitij S. Ukey'),
    Quiz(ques: 'What is your favourite color?', ans: 'Black'),
  ];
  // List<String> quizes = [
  //   'What is the color of sky?',
  //   'Who are you?',
  //   'What is your favourite color?',
  //   'What is your pet name?',
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[100],
      appBar: AppBar(
        title: Text('Start Quiz'),
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quizes
            .map((quesans) => QuizCard(
                quiz: quesans,
                delete: () {
                  setState(() {
                    quizes.remove(quesans);
                  });
                }))
            .toList(),
      ),
    );
  }
}
