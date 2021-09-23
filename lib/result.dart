import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;

  Result(this.resetHandler, this.resultScore);

  //dart feature getter function and no parameters must be there as it don't accept any and its
  //value will be calculated dynamically
  String get resultPhrase {
    var resultText = 'You are done!';
    if (resultScore >= 20)
      resultText = 'You are awesome';
    else if (resultScore < 20 && resultScore >= 116)
      resultText = 'You are better!';
    else
      resultText = 'You are just good!';
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(onPressed: resetHandler, child: Text('Restart the quiz'))
        ],
      ),
    );
  }
}
