import 'package:flutter/material.dart';

class Result extends StatelessWidget {

  final int score;
  final VoidCallback resetHandler;

  Result(this.score, this.resetHandler);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
            children: <Widget>[
              Text(
                'You did it. Score: $score',
                style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              TextButton(onPressed: resetHandler, child: Text('Reset the game')),
            ]
        )
    );
  }
}