import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// extendes equals to inheritance, we inherit this class from StatelessWidget
class MyApp extends StatelessWidget {
  build(BuildContext context) {
    return MaterialApp(
      home: Text('Hello!'),
    );
  }
}
