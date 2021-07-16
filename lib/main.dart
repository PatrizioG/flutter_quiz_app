import 'package:flutter/material.dart';


import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {

  var _questionIndex = 0;
  var questions = [
    {
      'questionText' : 'Qual\'è il tuo colore preferito?',
      'answers': ['Black', 'Red', 'Green', 'White']
    },
    {
      'questionText' : 'Qual\'è il tuo animale preferito?',
      'answers': ['Tigre', 'Elefante', 'Serpente', 'Giraffa']
    },
    {
      'questionText' : 'Istruttore preferito?',
      'answers': ['Tigre', 'Elefante', 'Serpente', 'Giraffa']
    }
  ];

  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first app'),
        ),
        body: Column(
          children: [
            Question(questions[_questionIndex]['questionText'] as String),
            ...(questions[_questionIndex]['answers'] as List<String>).map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}
