import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Stateful(),
    ));

class Stateful extends StatelessWidget {
  const Stateful({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Custom buttons"),
      ),
      body: Center(
        child: SizedBox(
              width: 400,
              height: 100,
              child: ElevatedButton(
                  onPressed: () => {},
                  child: const Center(
                    child: Text("Not Selected"),
                  )),
            ),
      ),
    );
  }
}
// import 'dart:ui';

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
// import 'package:flutter/widgets.dart';
// import 'package:google_fonts/google_fonts.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatefulWidget {
//   const MyApp({super.key});

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text("Satefull widget - Button",
//               style: TextStyle(fontWeight: FontWeight.bold)),
//         ),
//         body: Center(
//           child: SingleChildScrollView(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.stretch,
//               children: [
//                 const Padding(
//                   padding: EdgeInsets.all(15),
//                 ),
//                 ElevatedButton(
//                   onPressed: () => {
//                     print("Button Pressed"),
//                   },
//                   style: ElevatedButton.styleFrom(
//                     padding: const EdgeInsets.symmetric(
//                       vertical: 20,
//                       horizontal: 30,
//                     ),
//                     backgroundColor: Colors.blue,
//                   ),
//                   child: const Text(
//                     "Not Selected",
//                     style: TextStyle(fontSize: 30, color: Colors.black),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
