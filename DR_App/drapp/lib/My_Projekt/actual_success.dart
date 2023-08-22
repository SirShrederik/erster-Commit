import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ActualSuccessPage extends StatelessWidget {
  ActualSuccessPage({super.key});

 final List<String> entries = <String>['Biological Success', 'Education Success', 'Self-made'];
final List<int> colorCodes = <int>[600, 500, 100]; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            const Text("Actual Success", style: TextStyle(color: Colors.black)),
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: CupertinoColors.lightBackgroundGray,
      ),
      body: 
            ListView.builder(
    padding: const EdgeInsets.all(8),
    itemCount: entries.length,
    itemBuilder: (BuildContext context, int index) {
      return Container(
        height: 50,
        color: Colors.amber[colorCodes[index]],
        child: Center(child: Text('Entry ${entries[index]}'),),
      );
    }
  ),);
      
  }
}