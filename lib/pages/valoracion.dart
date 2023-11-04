import 'package:flutter/material.dart';
import 'package:practica_3/widgets/drawer.dart';

class MyValoracion extends StatelessWidget {
  const MyValoracion({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("COMENTARIOS"),
        backgroundColor: const Color.fromARGB(150, 21, 216, 118),
      ),
      drawer: Drawer(child: MyDrawer()),
      body: ListView(
        children: [
          _buildContainer(
              "Jhon Fuentes", "Mejoraria la rapidez de la atencion", " ★ ★ ★"),
          _buildContainer(
              "Branny Gomez", "Buena calidad y atencion", " ★ ★ ★ ★ ★"),
          _buildContainer("Jhan Rosas", "Muy calido la atencion", " ★ ★ ★ ★"),
          _buildContainer("Rosa Maria", "Excelente servicio", " ★ ★ ★ ★ ★"),
          _buildContainer("Oscar Vilchez", "Buena panaderia", " ★ ★ ★"),
          _buildContainer(
              "Eliazar Mamani", "Calidad de panaderia", " ★ ★ ★ ★ ★"),
          _buildContainer("Kleyder Jara", "Excelente", " ★ ★ ★ ★ ★"),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        child: Icon(
          Icons.add_comment,
          size: 30,
        ),
        onPressed: () {},
      ),
    );
  }

  Widget _buildContainer(String title, String location, String rating) {
    return Container(
      height: 120,
      margin: const EdgeInsets.all(10.0),
      color: Color.fromARGB(193, 167, 216, 220),
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          Image.asset(
            "assets/images/perfil23.jpg",
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
                const SizedBox(
                  height: 10,
                ),
                Text(location),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  rating,
                  style: TextStyle(color: Colors.yellow),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
