import 'package:flutter/material.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Welcome to your Daily Routineers',
      home: OnboardingPage(),
    );
  }
}

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          Container(
            color: const Color.fromARGB(130, 36, 135, 255),
            child: const Center(
              child: Text('Welcome to DailyRoutineers'),
            ),
          ),
          Container(
            color: const Color.fromARGB(255, 250, 222, 9),
            child: const Center(
              child: Padding(
                padding: EdgeInsets.all(36.0),
                child: Text(
                    'the first App that brings Daily Routines & Soulhygiene together'),
              ),
            ),
          ),
          Container(
            color: const Color.fromARGB(255, 28, 38, 134),
            child:  Center(
              child: Padding(
                padding: const EdgeInsets.all(64.0),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                     const Text(
                        'With Daily Routineers create your own way to live a fulfilling life!',
                        style: TextStyle(color: Colors.white),
                      ),
                      ElevatedButton(onPressed: () {Navigator.pushNamed(context, '/homes');}, child: const Text('Join here for more'))
                    ],
                  ),
                ),
              ),
            
            ),
          ),
        ],
      ),
    );
  }
}
