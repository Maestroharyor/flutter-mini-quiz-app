import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  // const Answer({Key? key}) : super(key: key);

  final String AnswerText;
  final Function selectFunction;

  Answer(this.AnswerText, this.selectFunction);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.only(bottom: 15),
        child: RaisedButton(
          padding: EdgeInsets.all(10),
          color: Colors.blue,
          textColor: Colors.white,
          child: Text(AnswerText, style: TextStyle(fontSize: 15),),
          onPressed: () {
            selectFunction();
          },
        ));
  }
}
