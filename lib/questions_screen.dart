import 'package:flutter/material.dart';
import 'package:quiz/widget/answer_button.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});
  @override
  State<StatefulWidget> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // question
          const Text(
            "Question",
            style: TextStyle(color: Colors.white),
          ),
          const SizedBox(height: 30),
          AnswerButton(
            answerText: "ans1",
            onTap: () {},
          ),
          AnswerButton(
            answerText: "ans2",
            onTap: () {},
          ),
          AnswerButton(
            answerText: "ans3",
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
