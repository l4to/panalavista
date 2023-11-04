import 'package:flutter/material.dart';
import 'package:practica_3/pages/Inicio.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pan a la vista',
      theme: ThemeData(),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}
