import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favourite color ?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Orange', 'score': 3},
        {'text': 'Red', 'score': 7}
      ]
    },
    {
      'questionText': 'What\'s your favourite animal ?',
      'answers': [
        {'text': 'Rabbit', 'score': 3},
        {'text': 'Dog', 'score': 10},
        {'text': 'Cat', 'score': 7}
      ]
    },
    {
      'questionText': 'who is your favourite actor ?',
      'answers': [
        {'text': 'Jhonny Dep', 'score': 9},
        {'text': 'Robert Pattison', 'score': 10},
        {'text': 'Christene Bale', 'score': 9}
      ]
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    // print('Answer 1 choosen!');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex)
            : Result(_resetQuiz, _totalScore),
      ),
    );
  }
}
