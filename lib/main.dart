import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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

  void _answerQueston() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    // print('Answer 1 choosen!');
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favourite color?',
      'What\'s your favourite animal?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
        ),
        body: Column(
          children: [
            Question(questions[_questionIndex]),
            ElevatedButton(
              child: Text('Answer 1'),
              onPressed: _answerQueston,
            ),
            ElevatedButton(
                onPressed: () => print("Answer 2 choosen"),
                child: Text('Answer 2')),
            ElevatedButton(
                onPressed: () {
                  print("Answer 3 choosen");
                },
                child: Text('Answer 3')),
          ],
        ),
      ),
    );
  }
}
