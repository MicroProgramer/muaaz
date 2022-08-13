import 'package:flutter/material.dart';
import 'package:muaaz/home_screen.dart';

void main() {
  runApp(TestApp());
}

class TestApp extends StatelessWidget {
  const TestApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Muaaz App",
      home: HomeScreen(
      ),
    );
  }
}
