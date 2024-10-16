import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center( // Center the entire column
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // Center vertically
            crossAxisAlignment: CrossAxisAlignment.center, // Center horizontally
            children: [
              CustomCard(
                isFavorite: true,
              ),
              CustomCard(
                isFavorite: false,
              ),
              CustomCard(
                isFavorite: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomCard extends StatefulWidget {
  final bool isFavorite;
  const CustomCard({super.key, required this.isFavorite});

  @override
  State<CustomCard> createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  late bool isCurrentlyFavorite;

  @override
  void initState() {
    isCurrentlyFavorite = widget.isFavorite;
    super.initState();
  }

  void toggleFavorite() {
    setState(() {
      isCurrentlyFavorite = !isCurrentlyFavorite;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 0.4,
            color: Colors.black,
          ),
        ),
      ),
      width: 300,  
      height: 70,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Title",
                    style: GoogleFonts.poppins(
                        color: Colors.blue[400], fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "Description",
                    style: GoogleFonts.poppins(),
                  ),
                ],
              ),
            ),
            IconButton(
              onPressed: toggleFavorite,
              icon: Icon(isCurrentlyFavorite ? Icons.favorite : Icons.favorite_border),
              color: Colors.red,
            )
          ],
        ),
      ),
    );
  }
}
