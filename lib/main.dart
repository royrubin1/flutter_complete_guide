import 'package:flutter/material.dart';

import 'questions.dart';

void main() {
  runApp(MyApp());
}

// extendes equals to inheritance, we inherit this class from StatelessWidget
class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;
  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print(_questionIndex);
  }

  @override // Decorator
  Widget build(BuildContext context) {
    List<String> questions = [
      "What's your favorite color?",
      "What's your favorite animal?",
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(children: [
          Question(questions[_questionIndex]), // Questions
          ElevatedButton(
            onPressed: _answerQuestion,
            child: Text('Answer 1'),
          ),
          ElevatedButton(
            onPressed: _answerQuestion,
            child: Text('Answer 2'),
          ),
          ElevatedButton(
            onPressed: null,
            child: Text('Answer 3'),
          ),
        ]),
      ),
    );
  }
}
