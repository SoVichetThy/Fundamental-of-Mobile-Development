import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Hobbies',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'My Hobbies'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text(title),
      ),
      body: const Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            HobbyCard(text: "Travelling", icondata1: Icons.travel_explore,backgroundColor: Colors.greenAccent,),
            SizedBox(height: 10),
            HobbyCard(text: "Skating", icondata1: Icons.skateboarding, backgroundColor: Colors.blueGrey,),
          ],
        ),
      ),
    );
  }
}

class HobbyCard extends StatelessWidget {
  final String text;
  final IconData icondata1;
  final Color backgroundColor;
  const HobbyCard({
    super.key,
    required this.text,
    required this.icondata1,
    this.backgroundColor=Colors.lightBlueAccent
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 40, right: 40),
      height: 80,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Padding (
            padding: const EdgeInsets.only(left: 30),
            child: Icon(icondata1),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              text,
              style: const TextStyle(fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}
