import 'package:flutter/material.dart';

enum Ebuttons {
  primary(color: Colors.blue),
  secondary(color: Colors.green),
  disabled(color: Colors.grey);

  final Color color;
  const Ebuttons({
    required this.color,
  });
}

