import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  List<String> numbers = ["MON", "TUE", "WED", "THU"];
  List<Widget> getLabels() {
    return numbers.map((item) => Text(item)).toList();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            //Ex1
             const Text("Start"),
             for (var i = 0; i < 10; i++) Text('Item $i'),
             const Text("End\n"),
            //Ex2
             const Text("Start"),
             ...numbers.map((item) => Text(item)), //...spread operator
             const Text("End\n"),
            //Ex3
            const Text("Start"),
            ...getLabels(),
            const Text("End"),
          ],
        ),
      ),
    );
  }
}

//#1 Column(
//   children: [
//
//   ],
// ),

//#2
