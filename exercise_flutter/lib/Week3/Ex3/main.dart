import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
            padding: const EdgeInsets.all(30),
            margin: const EdgeInsets.all(30),
            child: Column(
              children: [
                buildContainer(color: Colors.blue[100]!),
                buildContainer(color: Colors.blue[300]!),
                buildGradientContainer(
                    color: [Colors.blue[300]!, Colors.blue[600]!]),
              ],
            )),
      ),
    );
  }

  Widget buildContainer({required Color color}) {
    return Container(
      width: 500,
          height: 100,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: color,),
         // gradient:
           //   LinearGradient(colors: [Colors.blue[300]!, Colors.blue[600]!])),
      child: Center(
          child: Text(
        'SoviChet',
        style: GoogleFonts.poppins(),
      )),
    );
  }

  Widget buildGradientContainer({required List<Color> color}) {
    return Container(
       width: 500,
          height: 100,
      decoration: BoxDecoration(
        
          borderRadius: BorderRadius.circular(30),
          // color: color,
          gradient:
              LinearGradient(colors: [Colors.blue[300]!, Colors.blue[600]!])),
      child: Center(
          child: Text(
        'SoviChet',
        style: GoogleFonts.poppins(),
      )),
    );
  }
}