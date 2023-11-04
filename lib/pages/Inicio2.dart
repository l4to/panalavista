import 'package:flutter/material.dart';
import 'package:practica_3/widgets/barra_Busqueda.dart';
import 'package:practica_3/widgets/drawer.dart';

class MyLogeo extends StatelessWidget {
  const MyLogeo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Panaderías disponibles"),
        backgroundColor: Color.fromARGB(150, 21, 216, 118),
      ),
      drawer: Drawer(
        child: MyDrawer(),
      ),
      body: Center(
        child: Column(
          children: [
            MyBarraDeBusqueda(onSearch: (query) {}),
            Expanded(
              child: InteractiveViewer(
                child: Image.asset("assets/images/Mapa_panaderias.jpg"),
                boundaryMargin: EdgeInsets.all(20),
                minScale: 2.5,
                maxScale: 6.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
