import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  // Function/VoidCallback is a pointer to another function
  final Function selectHandler;

  Answer(this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
        onPressed: selectHandler,
        child: Text('Answer 1'),
      ),
    );
  }
}
