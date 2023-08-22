import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyRoutinesPage extends StatelessWidget {
  const MyRoutinesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Routines", style: TextStyle(color: Colors.black)),
        backgroundColor: CupertinoColors.lightBackgroundGray,
      ),
      
      body:Center(
        
      ),
    );
  }
}
