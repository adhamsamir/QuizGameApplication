import 'package:flutter/material.dart';

class QuizScreen extends StatelessWidget {
      const QuizScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text("Quiz"),
        iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: Colors.teal,
          elevation: 0,
      ),
      body: SafeArea(
          child: Column(children:[ SizedBox(height: 50 ,),Text(
      "What's the most efficient programming language?",
      textAlign: TextAlign.center,
      style: TextStyle(
       fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.black,
      ),
    ),]
          ),
    )
    );
  }
}
