import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomButton(),
                SizedBox(height: 20),
                CustomButton(),
                SizedBox(height: 20),
                CustomButton(),
                SizedBox(height: 20),
                CustomButton(),
                SizedBox(height: 20),
                CustomButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomButton extends StatefulWidget {
  const CustomButton({super.key});

  @override
  _CustomButtonState createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  bool isSelected = false;

  String get buttonText => isSelected ? "Not selected" : "Selected";
  Color? get buttonBackgroundColor => isSelected ? Colors.blue[50] : Colors.blue[500];
  Color? get buttonTextColor => isSelected ? Colors.black : Colors.white;

  void toggleSelection() {
    setState(() {
      isSelected = !isSelected;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: buttonBackgroundColor, foregroundColor: buttonTextColor),
        onPressed: toggleSelection,
        child: Text(buttonText),
      ),
    );
  }
}
