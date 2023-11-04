import 'package:flutter/material.dart';
import 'package:practica_3/pages/crear_panaderia/crear_panaderia.dart';
import 'package:practica_3/widgets/drawer.dart';

class MiPanaderia extends StatelessWidget {
  const MiPanaderia({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Usuario"),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => CrearPanaderia(),
              ));
            },
            child: const Text(
              "Crear",
              style: TextStyle(
                color: Colors.white, // Color del texto
              ),
            ),
          )
        ],
        backgroundColor: const Color.fromARGB(150, 21, 216, 118),
      ),
      drawer: Drawer(child: MyDrawer()),
      body: ListView(
        children: [
          _buildContainer(
              "Panaderia 1", "Ubicacion: loremas asdmaksd", "5 estrellas"),
          _buildContainer(
              "Panaderia 2", "Ubicacion: lorem ipsum", "4 estrellas"),
          _buildContainer(
              "Panaderia 3", "Ubicacion: dolor sit amet", "3 estrellas"),
          _buildContainer(
              "Panaderia 4", "Ubicacion: dolor sit amet", "3 estrellas"),
          _buildContainer(
              "Panaderia 5", "Ubicacion: dolor sit amet", "3 estrellas"),
          _buildContainer(
              "Panaderia 6", "Ubicacion: dolor sit amet", "3 estrellas"),
          _buildContainer(
              "Panaderia 7", "Ubicacion: dolor sit amet", "3 estrellas"),
          _buildContainer(
              "Panaderia 8", "Ubicacion: dolor sit amet", "3 estrellas"),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Color.fromARGB(150, 21, 216, 118),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: const Icon(Icons.home),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.settings),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.favorite),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildContainer(String title, String location, String rating) {
    return Container(
      height: 120,
      margin: const EdgeInsets.all(10.0),
      color: Color.fromARGB(255, 226, 197, 2),
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          Image.asset(
            "assets/images/barco.jpg",
            width: 100,
            height: 100,
          ),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                Text(location),
                const SizedBox(height: 10),
                Text(rating),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
