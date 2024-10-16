import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

List<String> colors = ["red", "blue", "green"];
List<Widget> getColor(){
  return colors.map((color) => Text(color)).toList();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            const Text("Method 1: Loop Array"),
            for (int i = 0; i < colors.length; i++)
              Text(
                colors[i],
              ),
            const Text("End\n"),
            const Text("Method 2: Map"),
            ...colors.map(
              (color) => Text(color),
            ),
            const Text("End\n"),
            const Text("Method 3: Dedicated function"),
            ...getColor(),
            //TESTING[]...
            // (color) => Container(
            //   width: 10,
            //   height: 10,
            //   margin: const EdgeInsets.all(20),
            //   color: switch (color) {
            //     "red" => Colors.red ,
            //     "blue" => Colors.blue,
            //     "green" => Colors.green,
            //     String() => throw UnimplementedError(),
            //   }
            // ),
          ],
        ),
      ),
    );
  }
}
