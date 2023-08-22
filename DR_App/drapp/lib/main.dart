// My Projekt
import 'package:drapp/My_Projekt/Login%20/%20Onboarding/onboarding.dart';
import 'package:drapp/My_Projekt/actual_success.dart';
import 'package:drapp/My_Projekt/my_routines.dart';
import 'package:flutter/material.dart';

import 'My_Projekt/Home/home.dart';
// Passe den Pfad entsprechend an

void main() {
  runApp(const DailyRoutineersApp());
}

class DailyRoutineersApp extends StatelessWidget {
  const DailyRoutineersApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DailyRoutineersApp',
      initialRoute: '/onboarding',
      routes: {
        '/onboarding':(context) => const OnboardingPage(),
        '/homes': (context) => const DailyRoutineersHome(),
        '/myRoutines': (context) => const MyRoutinesPage(),
        '/actualSuccess': (context) => ActualSuccessPage(),
      },
    );
  }
}