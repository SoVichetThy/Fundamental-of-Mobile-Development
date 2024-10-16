import 'package:flutter/material.dart';

import 'eProduct.dart';

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
          title: const Text("Products"),
        ),
        backgroundColor: Colors.blue,
        body: const SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ProductCard(card: eProduct.dart),
              SizedBox(
                height: 20,
              ),
              ProductCard(card: eProduct.flutter),
              SizedBox(
                height: 20,
              ),
              ProductCard(card: eProduct.firebase),
            ],
          ),
        ),
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final eProduct card;
  const ProductCard({
    super.key,
    required this.card,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: 240,
      padding: const EdgeInsets.only(
        left: 10,
      ),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      margin: const EdgeInsets.only(left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            card.image,
            width: 150,
            height: 150,
          ),
          Text(
            card.title,
            style: const TextStyle(fontSize: 25),
          ),
          Text(card.description),
        ],
      ),
    );
  }
}
