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
      'answers': ['Black', 'Orange', 'Red']
    },
    {
      'questionText': 'What\'s your favourite animal ?',
      'answers': ['Rabbit', 'Dog', 'Cat']
    },
    {
      'questionText': 'who is your favourite actor ?',
      'answers': ['Jhonny Dep', 'Robert Pattison', 'Christene Bale']
    },
  ];
  var _questionIndex = 0;

  void _answerQuestion() {
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
            : Result(),
      ),
    );
  }
}
