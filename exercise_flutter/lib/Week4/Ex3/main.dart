import 'dart:ui';

import 'package:exercise_flutter/Week4/Ex2/main.dart';
import 'package:exercise_flutter/Week4/Ex3/eButtons.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text("Custom buttons"),
          ),
          //backgroundColor: Colors.blue,
          body: const SafeArea(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Custombutton(label: "Sumit", icon: Icons.verified),
              Custombutton(label: "Time", icon: Icons.access_time_outlined, buttonType: Ebuttons.secondary,),
              Custombutton(label: "Account", icon: Icons.account_tree_outlined, buttonType: Ebuttons.disabled,),
            ],
          ))),
    );
  }
}

class Custombutton extends StatelessWidget {
  const Custombutton({
    super.key,
    required this.label,
    required this.icon,
    this.iconPosition = IconAlignment.start, //left
    this.buttonType = Ebuttons.primary,
  });
  final String label;
  final IconData icon;
  final IconAlignment iconPosition;
  final Ebuttons buttonType;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: ElevatedButton.icon(
        onPressed: () {},
        label: Text(label),
        icon: Icon(icon),
        style: ElevatedButton.styleFrom(backgroundColor: buttonType.color),
        
      ),
    );
  }
}
