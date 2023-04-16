import 'package:flutter/material.dart';
import 'package:quiz/start_screen.dart';

void main(List<String> args) {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      body: StartScreen(),
    ),
  ));
}
