import 'package:flutter/material.dart';

// EX 3 – The products (handout page: EX 3)
// Part 1: build ONE product card (images are in assets/ex3/).
// Part 2: create the Product enum (follow the UML in the handout).
// Part 3: extract the card into a StatelessWidget called ProductCard.

const String ImageDart = 'assets/ex3/dart.png';
const String ImageFirebase = 'assets/ex3/firebase.png';
const String ImageFlutter = 'assets/ex3/flutter.png';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(), // YOUR CODE
      ),
    ),
  );
}
