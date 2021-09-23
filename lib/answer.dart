import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: Colors.orange, padding: EdgeInsets.all(5)),
        child: Text(answerText),
        onPressed: selectHandler,
      ),
    );
  }
}
