import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  // Function/VoidCallback is a pointer to another function
  final Function selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue, foregroundColor: Colors.white),
        onPressed: selectHandler,
        child: Text(answerText),
      ),
    );
  }
}
