import 'package:flutter/material.dart';
import 'package:quiz/data/questions.dart';
import 'package:quiz/questions_screen.dart';
import 'package:quiz/result_screen.dart';
import 'package:quiz/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];
  var activeScreen = "starting-screen";

  void switchScreen() {
    selectedAnswers = [];
    setState(() {
      activeScreen = "question-screen";
    });
  }

  Widget screen() {
    if (activeScreen == "starting-screen") {
      return StartScreen(switchScreen: switchScreen);
    } else if (activeScreen == "question-screen") {
      return QuestionsScreen(
        answerChoosen: answerChoosen,
      );
    } else if (activeScreen == 'result-screen') {
      return const ResultScreen();
    } else {
      return StartScreen(switchScreen: switchScreen);
    }
  }

  void answerChoosen(answer) {
    selectedAnswers.add(answer);
    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = "result-screen";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.deepPurple,
                Color.fromARGB(255, 26, 1, 52),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: screen(),
        ),
      ),
    );
  }
}
