import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // int count = 0;

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Progress(
              title: "Flutter"
            ),
            Progress(
              title: "Dart",
            ),
            Progress(
              title: "React",
            ),
          ],
        ),
      ),
    );
  }
}

class Progress extends StatefulWidget {
  const Progress({
    super.key,
    required this.title,
  });
  final String title;
  @override
  State<Progress> createState() => _ProgressState();
}

class _ProgressState extends State<Progress> {
  double count = 0;

  void increament() {
    setState(() {
      if (count < 500) {
        count += 100;
      }
    });
  }

  void decrement() {
    setState(
      () {
        if (count > 0) {
          count -= 100;
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            widget.title,
            style:
                GoogleFonts.poppins(fontWeight: FontWeight.bold, fontSize: 40),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {
                  decrement();
                },
                icon: const Icon(Icons.navigate_before),
              ),
              IconButton(
                onPressed: () {
                  increament();
                },
                icon: const Icon(Icons.navigate_next),
              ),
            ],
          ),
          Container(
            width: 500,
            height: 30,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Align(
              alignment: Alignment.centerLeft,
              child: (Container(
                width: count,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blue[count.toInt()],
                ),
              )),
            ),
          ),
        ],
      ),
    );
  }
}
