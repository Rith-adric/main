import 'package:flutter/material.dart';
import 'package:studypal/pages/exams.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const MainApp(),
        '/exams': (context) => const Exams(),
      },
    );
  }
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/StudyPal1.png',
              height: 500,
            ),
            const SizedBox(height: 20),
            const Text(
              'StudyPal',
              style: TextStyle(
                fontFamily: 'CooperBlack',
                color: Color(0xFF9999FF),
                fontWeight: FontWeight.bold,
                fontSize: 34,
              ),
            ),
            const SizedBox(height: 9),
            const Text(
              'Your pocket guide \n for school.',
              style: TextStyle(
                fontSize: 18,
                color: Color.fromARGB(192, 24, 22, 22),
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            SizedBox(
              width: 320,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/exams');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF9999FF),
                  padding: const EdgeInsets.symmetric(vertical: 15),
                ),
                child: const Text(
                  'Begin',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
