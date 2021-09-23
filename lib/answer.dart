import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;

  Answer(this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: Colors.orange, padding: EdgeInsets.all(5)),
        child: Text('Answer 1'),
        onPressed: () => selectHandler,
      ),
    );
  }
}
