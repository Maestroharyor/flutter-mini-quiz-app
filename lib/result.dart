import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  // const ResultKey({Key? key}) : super(key: key);

  final int resultScore;
  final Function resetQuiz;
  Result(this.resultScore, this.resetQuiz);

  String get handleResult {
    var textOutput = "You did it. You scored ${resultScore}";
    if (resultScore > 30) {
      textOutput = "You're awesome and innocent. You scored ${resultScore}";
    } else if (resultScore > 20) {
      textOutput = "Pretty likable. You scored ${resultScore}";
    } else if (resultScore > 10) {
      textOutput = "You're strange?. You scored ${resultScore}";
    } else {
      textOutput = "You're so bad. You scored ${resultScore}";
    }
    return textOutput;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Center(
            child: Column(
              children: [
                Text(handleResult,
                    style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center),
                FlatButton(
                  onPressed: () => resetQuiz(),
                  child: Text("Restart Quiz"),
                  textColor: Colors.blue,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
