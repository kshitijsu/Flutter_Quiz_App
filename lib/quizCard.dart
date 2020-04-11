import 'package:flutter/material.dart';
import 'quiz.dart';

class QuizCard extends StatelessWidget {
  final Quiz quiz;
  final Function delete;
  QuizCard({this.quiz, this.delete});
  @override
  Widget build(BuildContext context) {
    return Card(
        margin: EdgeInsets.fromLTRB(15, 15, 15, 0),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Text(quiz.ques,
                    style: TextStyle(
                      color: Colors.blue[700],
                      fontSize: 18,
                    )),
                SizedBox(height: 10),
                Text(quiz.ans,
                    style: TextStyle(
                      color: Colors.amber[400],
                      fontSize: 16,
                    )),
                FlatButton.icon(
                    onPressed: delete,
                    icon: Icon(Icons.delete),
                    label: Text('Delete Quiz'))
              ]),
        ));
  }
}
