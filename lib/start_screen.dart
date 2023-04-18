import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key, required this.switchScreen});
  final void Function() switchScreen;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            color: const Color.fromARGB(100, 255, 255, 255),
            width: 300,
          ),
          const SizedBox(
            height: 50.0,
          ),
          Text(
            "Learn Flutter in fun way",
            style:
                GoogleFonts.lato(fontSize: 24, color: Colors.deepPurpleAccent),
          ),
          const SizedBox(
            height: 40.0,
          ),
          OutlinedButton.icon(
            icon: const Icon(Icons.start),
            style: OutlinedButton.styleFrom(
              foregroundColor: const Color.fromARGB(255, 163, 134, 241),
            ),
            onPressed: switchScreen,
            label: const Text(
              "Start Quiz",
            ),
          )
        ],
      ),
    );
  }
}
