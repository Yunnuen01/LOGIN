import 'package:flutter/material.dart';
import 'package:multiform/screens/first_activity.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FirstActivity(),
    );
  }
}
