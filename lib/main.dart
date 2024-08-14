import 'package:cabmate_task2/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Applogin());
}

class Applogin extends StatelessWidget {
  const Applogin({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: login(),
    );
  }
}

