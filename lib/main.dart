import 'package:flutter/material.dart';
import 'package:home/quiz.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Named Routes Demo',
      initialRoute: '/',
      routes: {
        '/': (context) => const MyApp(),
        '/second': (context) => const QuizScreen(),
      },
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home',
      home: Scaffold(
        drawer: Drawer(
            child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
                padding: EdgeInsets.zero,
                decoration: BoxDecoration(color: Colors.teal),
                child: Column(
                  children: [
                    Text('Alan Turing',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 40,
                            color: Colors.white)),
                    Text('Level 41',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            color: Colors.white)),
                    SizedBox(height: 40),
                    Text('16 correct answers to lvl.(42)',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.white))
                  ],
                )),
            ListTile(
              title: const Text('Notifications'),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Sound'),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Vibration'),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Credits'),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Reset Game Progress'),
              onTap: () {},
            )
          ],
        )),
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.white,
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.teal),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Center(
            child: Column(
          children: [
            Image.asset('images/logo.png', scale: 1),
            const Text(
              'Computer Science Quiz',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/second');
              },
              child: const Text('PLAY'),
              style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                  primary: Colors.teal,
                  textStyle: TextStyle(fontSize: 30)),
            )
          ],
        )),
      ),
    );
  }
}
