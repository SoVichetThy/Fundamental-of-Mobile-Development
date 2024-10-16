import 'package:exercise_flutter/Week6/Ex3/screen/temp.dart';
import 'package:exercise_flutter/Week6/Ex3/screen/welcome.dart';
import 'package:flutter/material.dart';

class TemperatureApp extends StatefulWidget {
  const TemperatureApp({super.key});

  @override
  State<TemperatureApp> createState() {
    return _TemperatureAppState();
  }
}

class _TemperatureAppState extends State<TemperatureApp> {
    bool isWelcomepage= true; //isWelcomepage 
    void checker() {
      setState(() {
        isWelcomepage = false;
      },);
    }
  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xff16C062),
                  Color(0xff00BCDC),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: isWelcomepage
                ? Welcome(
                    triggerWelcome: checker,
                  )
                : Temperature()),
      ),
    );
  }
}

void main() {
  runApp(const TemperatureApp());
}
