import 'package:flutter/material.dart';
import 'package:practica_3/widgets/boton.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/portada.jpg"),
                fit: BoxFit.cover)),
        child: Scaffold(
          backgroundColor: Color.fromARGB(255, 0, 85, 169),
          body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/portada.jpg")),
            ),
            child: MyBotonInicio(),
          ),
        ));
  }
}
