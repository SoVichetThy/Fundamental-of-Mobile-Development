import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomePage extends StatelessWidget {
  final void Function() triggerWelcome;
  final String quizTitle;
  const WelcomePage({
    super.key,
    required this.triggerWelcome,
    required this.quizTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xffB32113),
              Color(0xff6B140B),
            ],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 20),
              Text(
                quizTitle,
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 10),
              FilledButton(
                onPressed: triggerWelcome,
                style: FilledButton.styleFrom(backgroundColor: Colors.white),
                child: Text(
                  'Start the Quiz',
                  style: GoogleFonts.poppins(
                    color: Colors.blue[400],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
