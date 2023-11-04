import 'package:flutter/material.dart';
import 'package:practica_3/pages/pesta%C3%B1a_config/pesta%C3%B1a_config.dart';

class Myconfiguraciones extends StatefulWidget {
  const Myconfiguraciones({super.key});

  @override
  State<Myconfiguraciones> createState() => _MyconfiguracionesState();
}

class _MyconfiguracionesState extends State<Myconfiguraciones> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: const SafeArea(child: MyPestanaConfig()));
  }
}
