import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('you answered X out of y answers correctly'),
            const SizedBox(height: 30),
            const Text("List of ans and results"),
            const SizedBox(height: 30),
            TextButton(onPressed: () {}, child: const Text("Restart Quize"))
          ],
        ),
      ),
    );
  }
}
